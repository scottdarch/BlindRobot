#include <HardwareSerial.h>
#include <assert.h>
#include <sc_types.h>
#include <stddef.h>

#include "Main.h"
#include "Pushbutton.h"
#include "ZumoMotors.h"

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
    virtual void setTimer(TimedStatemachineInterface *statemachine, sc_eventid event,
                          sc_integer time, sc_boolean isPeriodic) override
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
        assert("Too many timers at once!");
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
        assert("Unknown timer unset requested.");
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

class Robot : public Main::SCI_Robot_OCB
{
  public:
    virtual ~Robot() override
    {
    }

    virtual void start_rotating(sc_boolean ccw) override
    {
        if (ccw) {
            ZumoMotors::setSpeeds(-100, 100);
        } else {
            ZumoMotors::setSpeeds(100, -100);
        }
    }

    virtual void stop() override
    {
        ZumoMotors::setSpeeds(0, 0);
    }
};

ZumoMotors motors;
Pushbutton button(ZUMO_BUTTON);
Main main_machine;
BasicTimer<2> timer;
Robot robot;

void setup()
{
    Serial.begin(115200);

    Serial.println("setup");

    main_machine.init();
    main_machine.setTimer(&timer);
    main_machine.setSCI_Robot_OCB(&robot);
    main_machine.enter();
}

void loop()
{
    if (button.getSingleDebouncedRelease()) {
        main_machine.getSCI_Robot()->raise_on_button_press();
    }
    timer.run_timers();
    main_machine.runCycle();
}
