
#include "Encoder.h"
#include <Arduino.h>

namespace HM
{

Encoder::Encoder(char label,
                 uint8_t pina,
                 uint8_t pinb,
                 double wheel_circumference_mm,
                 unsigned int gear_ratio,
                 unsigned int counts_per_revolutions)
    : m_label{label, '\0'}
    , m_a(pina)
    , m_b(pinb)
    , m_odometer_divisor(gear_ratio * counts_per_revolutions)
    , m_wheel_circumference_mm(wheel_circumference_mm)
    , m_a_state(LOW)
    , m_b_state(LOW)
    , m_direction(EncoderDirection::STATIONARY)
    , m_last_update(0)
    , m_odometer(0)
    , m_log_front(0)
    , m_log_len(0)
{
}

bool Encoder::init()
{
    pinMode(m_a, INPUT);
    pinMode(m_b, INPUT);
    m_a_state = digitalRead(m_a);
    m_b_state = digitalRead(m_b);
    return true;
}

EncoderDirection Encoder::get_direction() const
{
    return m_direction;
}

double Encoder::get_odometer_mm() const
{
    return ((double)m_odometer / m_odometer_divisor) * m_wheel_circumference_mm;
}

bool Encoder::log_consume(unsigned long &out_data)
{
    noInterrupts();
    bool result;
    if (m_log_len == 0) {
        result = false;
    } else {
        out_data = m_updates_log_buffer[m_log_front];
        m_log_front = (m_log_front + 1) % log_capacity;
        m_log_len -= 1;
        result = true;
    }
    interrupts();
    return result;
}

bool Encoder::log_produce(unsigned long data)
{
    if (m_log_len == log_capacity) {
        m_updates_log_buffer[(m_log_front + m_log_len) % log_capacity] = 0;
        return false;
    } else {
        m_updates_log_buffer[(m_log_front + m_log_len) % log_capacity] = data;
        m_log_len += 1;
        return true;
    }
}

void Encoder::on_b_change(unsigned long update_time_micros)
{
    m_b_state = digitalRead(m_b);
    const int a = m_a_state;
    const int b = m_b_state;

    if (a != b) {
        move_to_state(EncoderDirection::FORWARD, update_time_micros);
    } else {
        move_to_state(EncoderDirection::BACKWARD, update_time_micros);
    }
}

void Encoder::on_a_change(unsigned long update_time_micros)
{
    m_a_state = digitalRead(m_a);
    const int a = m_a_state;
    const int b = m_b_state;
    if (a == b) {
        move_to_state(EncoderDirection::FORWARD, update_time_micros);
    } else {
        move_to_state(EncoderDirection::BACKWARD, update_time_micros);
    }
}

void Encoder::move_to_state(EncoderDirection direction, unsigned long update_time_micros)
{
    log_produce(update_time_micros - m_last_update);
    m_last_update = update_time_micros;
    m_direction = direction;

    if (EncoderDirection::FORWARD == direction) {
        m_odometer += 1;
    }
}
}
