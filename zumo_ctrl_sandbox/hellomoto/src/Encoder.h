
#include <stdint.h>

#pragma once

namespace HM
{

class Encoder final
{
  public:
    Encoder(char label, uint8_t a, uint8_t b);

    bool init();

    void update(unsigned long update_time_micros);

  private:
    const char m_label[2];
    const uint8_t m_a;
    const uint8_t m_b;
    int m_last_state[2];
};
}
