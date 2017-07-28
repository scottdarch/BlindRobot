
#include "Encoder.h"
#include <Arduino.h>

namespace HM
{

Encoder::Encoder(char label, uint8_t a, uint8_t b)
    : m_label{label, '\0'}, m_a(a), m_b(b), m_last_state{LOW, LOW}
{
}

bool Encoder::init()
{
    pinMode(m_a, INPUT);
    pinMode(m_b, INPUT);
    return true;
}

void Encoder::update(unsigned long update_time_micros)
{
    const int a = digitalRead(m_a);
    const int b = digitalRead(m_b);

    if (m_last_state[0] == HIGH && a == LOW) {
        // falling edge on a
        Serial.print(m_label);
        Serial.print(":");
        if (m_last_state[1] == LOW) {
            Serial.println("f");
        } else {
            Serial.println("b");
        }
    } else if (m_last_state[0] == LOW && a == HIGH) {
        // rising edge on a
    }

    if (m_last_state[1] == HIGH && b == LOW) {
        // falling edge on b
    } else if (m_last_state[1] == LOW && b == HIGH) {
        // rising edge on b
    }

    m_last_state[0] = a;
    m_last_state[1] = b;
}
}
