#include <Arduino.h>
#include <HardwareSerial.h>
#include <Main.h>
#include <assert.h>
#include <sc_types.h>
#include <stddef.h>

#include "Encoder.h"
#include "Pushbutton.h"
#include "ZumoMotors.h"

using HM::Encoder;

#define SPEED 200 // Maximum motor speed when going straight; variable speed when turning

typedef struct {
    TimedStatemachineInterface *statemachine;
    sc_eventid event;
    sc_integer expires_at_millis;
    sc_boolean is_periodic;

} Timer;

template <size_t MAX_TIMERS> class BasicTimer : public TimerInterface
{
  public:
    BasicTimer()
    {
        memset(m_timers, 0, sizeof(Timer) * MAX_TIMERS);
    }

    virtual ~BasicTimer() override
    {
    }

    /*! Starts the timing for a time event.
     */
    virtual void setTimer(TimedStatemachineInterface *statemachine,
                          sc_eventid event,
                          sc_integer time,
                          sc_boolean isPeriodic) override
    {
        for (size_t i = 0; i < MAX_TIMERS; ++i) {
            if (m_timers[i].statemachine == nullptr) {
                m_timers[i].statemachine = statemachine;
                m_timers[i].event = event;
                m_timers[i].expires_at_millis = millis() + time;
                m_timers[i].is_periodic = isPeriodic;
                return;
            }
        }
        Serial.println("Too many timers at once!");
        abort();
    }

    /*! Unsets the given time event.
     */
    virtual void unsetTimer(TimedStatemachineInterface *statemachine, sc_eventid event) override
    {
        for (size_t i = 0; i < MAX_TIMERS; ++i) {
            if (m_timers[i].statemachine == statemachine && m_timers[i].event == event) {
                m_timers[i].statemachine = nullptr;
                return;
            }
        }
    }

    /*! Cancel timer service. Use this to end possible timing threads and free
         memory resources.
     */
    virtual void cancel() override
    {
        memset(m_timers, 0, sizeof(Timer) * MAX_TIMERS);
    }

    void run_timers()
    {
        const sc_integer now = millis();
        for (size_t i = 0; i < MAX_TIMERS; ++i) {
            if (m_timers[i].statemachine != nullptr && m_timers[i].expires_at_millis <= now) {
                m_timers[i].statemachine->raiseTimeEvent(m_timers[i].event);
                if (!m_timers[i].is_periodic) {
                    m_timers[i].statemachine = nullptr;
                }
            }
        }
    }

  private:
    Timer m_timers[MAX_TIMERS];
};

Encoder left('l', PIN_A0, PIN_A1, 114, 150, 12);
Encoder right('r', PIN_A4, PIN_A3, 114, 150, 12);

class Robot : public Main::SCI_Robot_OCB
{
  public:
    virtual ~Robot() override
    {
    }

    virtual void set_speed(sc_real speed_factor) override
    {
        ZumoMotors::setSpeeds(SPEED * speed_factor, SPEED * speed_factor);
    }

    virtual sc_real get_distance_mm() override
    {
        return left.get_odometer_mm();
    }

    virtual void spew() override
    {
        // Serial.print("l:");
        // Serial.println(left.get_direction());
        //        Serial.print(", r:");
        //        Serial.println(right.get_odometer_mm());
    }
};

ZumoMotors motors;
Pushbutton button(ZUMO_BUTTON);
Main main_machine;
BasicTimer<2> timer;
Robot robot;

static void a_change_left()
{
    left.on_a_change(micros());
}

static void a_change_right()
{
    right.on_a_change(micros());
}

static void b_change_left()
{
    left.on_b_change(micros());
}

static void b_change_right()
{
    right.on_b_change(micros());
}

void setup()
{
    Serial.begin(115200);

    Serial.println("setup");

    main_machine.init();
    main_machine.setTimer(&timer);
    main_machine.setSCI_Robot_OCB(&robot);
    main_machine.enter();

    left.init();
    right.init();
    attachInterrupt(digitalPinToInterrupt(PIN_A0), a_change_left, CHANGE);
    attachInterrupt(digitalPinToInterrupt(PIN_A4), a_change_right, CHANGE);
    attachInterrupt(digitalPinToInterrupt(PIN_A1), b_change_left, CHANGE);
    attachInterrupt(digitalPinToInterrupt(PIN_A3), b_change_right, CHANGE);

    main_machine.getSCI_Robot()->raise_initialized();
}

void loop()
{
    // process inputs
    if (button.getSingleDebouncedRelease()) {
        main_machine.getSCI_Robot()->raise_on_button_press();
    }

    // run state machine timers
    timer.run_timers();
    // run the state machine
    main_machine.runCycle();
    // process output events.
    unsigned long data;
    while (left.log_consume(data)) {
        if (data == HM::NO_DATA) {
            Serial.println("X");
        } else {
            Serial.println(data);
        }
    }
}
