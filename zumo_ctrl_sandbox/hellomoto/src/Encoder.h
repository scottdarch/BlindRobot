
#include <stddef.h>
#include <stdint.h>

#pragma once

namespace HM
{

enum EncoderDirection { STATIONARY, FORWARD, BACKWARD };

class Encoder final
{
  public:
    Encoder(char label,
            uint8_t pina,
            uint8_t pinb,
            double wheel_circumference_mm,
            unsigned int gear_ratio,
            unsigned int counts_per_revolutions);
    ~Encoder(){};

    bool init();

    void on_a_change(unsigned long update_time_micros);
    void on_b_change(unsigned long update_time_micros);

    EncoderDirection get_direction() const;

    double get_odometer_mm() const;

    bool log_consume(unsigned long &out_data);

    bool log_produce(unsigned long data);

  private:
    Encoder(const Encoder &) = delete;
    Encoder &operator=(const Encoder &) = delete;

    void move_to_state(EncoderDirection direction, unsigned long update_time_micros);

    const char m_label[2];
    const uint8_t m_a;
    const uint8_t m_b;
    const double m_odometer_divisor;
    const double m_wheel_circumference_mm;
    uint8_t m_a_state;
    uint8_t m_b_state;
    volatile EncoderDirection m_direction;
    volatile unsigned long m_last_update;
    volatile unsigned long m_odometer;
    constexpr static size_t log_capacity = 1024;
    volatile size_t m_log_front;
    volatile size_t m_log_len;
    volatile unsigned long m_updates_log_buffer[log_capacity];
};
}
