/**
 * @file pwm.c
 * @date 2015-07-09
 *
 * NOTE:
 * This file is generated by DAVE. Any manual modification done to this file will be lost when the code is regenerated.
 *
 * @cond
 ***********************************************************************************************************************
 * PWM v4.1.4 - Generates a PWM using one timer slice of CCU4 or CCU8.
 *
 * Copyright (c) 2015, Infineon Technologies AG
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,are permitted provided that the
 * following conditions are met:
 *
 *   Redistributions of source code must retain the above copyright notice, this list of conditions and the  following
 *   disclaimer.
 *
 *   Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the
 *   following disclaimer in the documentation and/or other materials provided with the distribution.
 *
 *   Neither the name of the copyright holders nor the names of its contributors may be used to endorse or promote
 *   products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  OF THE
 * USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * To improve the quality of the software, users are encouraged to share modifications, enhancements or bug fixes
 * with Infineon Technologies AG (dave@infineon.com).
 ***********************************************************************************************************************
 *
 * Change History
 * --------------
 *
 * 2015-02-16:
 *     - Initial version for DAVEv4.<BR>
 *
 * 2015-04-06:
 *     - Configuration structure modified of PWM_t.<BR>
 *     - Removed PWM_Dynamic_t,PWM_ConfigType_t.<BR>
 *     - Added New macros for Mixed usage.<BR>
 *     - Added New API PWM_SetPeriodMatchValue().<BR>
 *     - Modified enumeration PWM_InterruptType_t to PWM_INTERRUPT_t.<BR>
 *     - Modified enumeration PWM_OutputPassiveLevelType_t to PWM_OUTPUT_PASSIVE_LEVEL_t.<BR>
 *     - Modified enumeration PWM_TIMER_TYPE_t to PWM_TIMER_SLICE_t .<BR>
 *     - PWM_ClearEvent(), PWM_GetInterruptStatus() and PWM_SetPassiveLevel() API prototype modified for the
 *       new enum.<BR>
 *     - API name change PWM_AcknowledgeInterrupt to PWM_ClearEvent.<BR>
 *
 * 2015-07-09:
 *     - Documentation updated.<BR>
 *
 * 2015-09-01:
 *     - XMC14 device support added..<BR>
 *
 * 2015-10-08:
 *     - Added support for XMC4700/XMC4800 devices.<BR>
 *
 * @endcond
 *
 */

/***********************************************************************************************************************
 * HEADER FILES
 **********************************************************************************************************************/
#include "pwm.h"

/**********************************************************************************************************************
 * MACROS
 **********************************************************************************************************************/
#define PWM_MAX_DUTY_CYCLE ((uint32_t)10000)
#define PWM_DUTY_CYCLE_SCALE ((uint32_t)100)
#define PWM_MAX_PRESCALER ((uint32_t)15)
#define PWM_MAX_PERIOD_VALUE ((uint32_t) 65535)

/***********************************************************************************************************************
 * LOCAL ROUTINES
 **********************************************************************************************************************/
#ifdef PWM_SLICE_USED_CCU4
/*Initialize the App and XMC_CCU4 slice. */
PWM_STATUS_t PWM_lCCU4_Init(PWM_t *const handle_ptr);

/*Initialize interrupts*/
void PWM_lCCU4_ConfigInterrupts(PWM_t *const handle_ptr);

/*Starts the CCU4 slice. */
void PWM_lCCU4_Start(PWM_t *const handle_ptr);

/*Stops the CCU4 slice. */
void PWM_lCCU4_Stop(PWM_t *const handle_ptr);

/*Sets the duty cycle for CCU4 slice. */
PWM_STATUS_t PWM_lCCU4_SetDutyCycle(PWM_t *const handle_ptr, uint32_t duty_cycle);

/*Sets the frequency for CCU4 slice. */
PWM_STATUS_t PWM_lCCU4_SetFreq(PWM_t *const handle_ptr, uint32_t pwm_freq_hz);

/*Sets the frequency and duty cycle for CCU4 slice. */
PWM_STATUS_t PWM_lCCU4_SetFreqAndDutyCycle(PWM_t *const handle_ptr, uint32_t pwm_freq_hz, uint32_t duty_cycle);
#endif

#ifdef PWM_SLICE_USED_CCU8
/*Initialize the App and XMC_CCU8 slice. */
PWM_STATUS_t PWM_lCCU8_Init(PWM_t *const handle_ptr);

/*Initialize interrupts*/
void PWM_lCCU8_ConfigInterrupts(PWM_t *const handle_ptr);

/*Starts the CCU8 slice. */
void PWM_lCCU8_Start(PWM_t *const handle_ptr);

/*Stops the CCU8 slice. */
void PWM_lCCU8_Stop(PWM_t *const handle_ptr);

/*Sets the duty cycle for CCU8 slice. */
PWM_STATUS_t PWM_lCCU8_SetDutyCycle(PWM_t *const handle_ptr, uint32_t duty_cycle);

/*Sets the frequency for CCU8 slice. */
PWM_STATUS_t PWM_lCCU8_SetFreq(PWM_t *const handle_ptr, uint32_t pwm_freq_hz);

/*Sets the frequency and duty cycle for CCU8 slice. */
PWM_STATUS_t PWM_lCCU8_SetFreqAndDutyCycle(PWM_t *const handle_ptr, uint32_t pwm_freq_hz, uint32_t duty_cycle);
#endif

#ifdef PWM_SLICE_USED_CCU4

/*Initialize the APP and CCU4 slice. */
PWM_STATUS_t PWM_lCCU4_Init(PWM_t *const handle_ptr)
{
  PWM_STATUS_t status = PWM_STATUS_FAILURE;

  XMC_ASSERT("PWM_lCCU4_Init:Invalid handle_ptr" , (handle_ptr != NULL))

  if (PWM_STATUS_UNINITIALIZED == handle_ptr->state)
  {
    /* Initialize consumed Apps */
    status = (PWM_STATUS_t)GLOBAL_CCU4_Init(handle_ptr->global_ccu4_handle);

    /*Initialize CCU4 slice */
    if (PWM_STATUS_SUCCESS == status)/*check GLOBAL_CCU4_Init status*/
    {
      XMC_DEBUG("PWM_lCCU4_Init:Initilizing Slice")
      XMC_CCU4_SLICE_CompareInit(handle_ptr->ccu4_slice_ptr, handle_ptr->ccu4_slice_config_ptr);

      /* Set the period and compare register values */
      XMC_CCU4_SLICE_SetTimerPeriodMatch(handle_ptr->ccu4_slice_ptr,
    		                             (uint16_t)handle_ptr->period_value);

      XMC_CCU4_SLICE_SetTimerCompareMatch(handle_ptr->ccu4_slice_ptr,
    		                              (uint16_t)handle_ptr->compare_value);

      XMC_CCU4_EnableShadowTransfer(handle_ptr->ccu4_kernel_ptr, handle_ptr->shadow_mask);

      /* Initialize interrupts */
      PWM_lCCU4_ConfigInterrupts(handle_ptr);

      XMC_GPIO_Init(handle_ptr->gpio_out_port,handle_ptr->gpio_out_pin,
    		        handle_ptr->gpio_out_config);

      handle_ptr->state = PWM_STATUS_SUCCESS;

      /* Start the PWM generation if start at initialization is enabled */
      if ((bool) true == handle_ptr->start_control)
      {
        PWM_Start(handle_ptr);
      }
      status = PWM_STATUS_SUCCESS;
    }
    else
    {
      handle_ptr->state = PWM_STATUS_UNINITIALIZED;
    }

  }
  return (status);
} /* end of PWM_lCCU4_Init() api */

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Initialize interrupts */
void PWM_lCCU4_ConfigInterrupts(PWM_t *const handle_ptr)
{
  if ((bool) true == handle_ptr->period_match_enable)
  {
    XMC_DEBUG("PWM_lCCU4_ConfigInterrupts:period match enable")
    XMC_CCU4_SLICE_EnableEvent(handle_ptr->ccu4_slice_ptr, XMC_CCU4_SLICE_IRQ_ID_PERIOD_MATCH);

    /* Bind event to Service Request Node to period match event*/
    XMC_CCU4_SLICE_SetInterruptNode(handle_ptr->ccu4_slice_ptr, XMC_CCU4_SLICE_IRQ_ID_PERIOD_MATCH,
                                    handle_ptr->ccu4_slice_period_match_node);
  }

  if ((bool) true == handle_ptr->compare_match_enable)
  {
    XMC_DEBUG("PWM_lCCU4_ConfigInterrupts:compare match enable")
    XMC_CCU4_SLICE_EnableEvent(handle_ptr->ccu4_slice_ptr, XMC_CCU4_SLICE_IRQ_ID_COMPARE_MATCH_UP);

    /* Bind event to Service Request Node to compare match event */
    XMC_CCU4_SLICE_SetInterruptNode(handle_ptr->ccu4_slice_ptr, XMC_CCU4_SLICE_IRQ_ID_COMPARE_MATCH_UP,
                                    handle_ptr->ccu4_slice_compare_match_node);
  }
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Starts the CCU4 slice. */
void PWM_lCCU4_Start(PWM_t *const handle_ptr)
{
  if ((PWM_STATUS_SUCCESS == handle_ptr->state) || (PWM_STATUS_STOPPED == handle_ptr->state))
  {
    /* Clears the IDLE mode for the slice */
    XMC_CCU4_EnableClock(handle_ptr->ccu4_kernel_ptr,handle_ptr->slice_number);
    XMC_CCU4_SLICE_StartTimer(handle_ptr->ccu4_slice_ptr);

    handle_ptr->state = PWM_STATUS_RUNNING;
    XMC_DEBUG("PWM_lCCU4_Start:start PWM")
  }
} /* end of PWM_lCCU4_Start() api */

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Stops the CCU4 slice. */
void PWM_lCCU4_Stop(PWM_t *const handle_ptr)
{
  if (PWM_STATUS_UNINITIALIZED != handle_ptr->state)
  {
    XMC_CCU4_SLICE_StopTimer(handle_ptr->ccu4_slice_ptr);
    XMC_CCU4_SLICE_ClearTimer(handle_ptr->ccu4_slice_ptr);
    XMC_CCU4_DisableClock(handle_ptr->ccu4_kernel_ptr,handle_ptr->slice_number);

    handle_ptr->state = PWM_STATUS_STOPPED;
    XMC_DEBUG("PWM_lCCU4_Stop:stop PWM")
  }
} /* end of PWM_lCCU4_Stop() api */

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Sets the duty cycle for CCU4 slice. */
PWM_STATUS_t PWM_lCCU4_SetDutyCycle(PWM_t *const handle_ptr, uint32_t duty_cycle)
{
  uint32_t period;
  uint32_t compare;
  PWM_STATUS_t status;

  XMC_ASSERT("PWM_lCCU4_SetDutyCycle:Invalid duty_cycle " , ((duty_cycle >= 0) && (duty_cycle <= PWM_MAX_DUTY_CYCLE)))

  status = PWM_STATUS_FAILURE;
  if (PWM_STATUS_UNINITIALIZED != handle_ptr->state)
  {
    /* Duty cycle needs between 0 and 10000 */
    if (duty_cycle <= PWM_MAX_DUTY_CYCLE)
    {
      /* period = (PR + 1) */
      period = (uint32_t)handle_ptr->period_value + 1U;

      /* Duty Cycle(symmetric) = (PR-CR1)+1 / period */
      compare = ((period * (PWM_MAX_DUTY_CYCLE - duty_cycle)) / ((uint32_t) 100 * PWM_DUTY_CYCLE_SCALE));

      handle_ptr->compare_value = compare;
      handle_ptr->duty_cycle = duty_cycle;

      XMC_CCU4_SLICE_SetTimerCompareMatch(handle_ptr->ccu4_slice_ptr, (uint16_t)compare);
      XMC_CCU4_EnableShadowTransfer(handle_ptr->ccu4_kernel_ptr, handle_ptr->shadow_mask);
      status = PWM_STATUS_SUCCESS;
    }
  }

  XMC_DEBUG("PWM_lCCU4_SetDutyCycle:dutycycle set")
  return (status);
} /* end of PWM_lCCU4_SetDutyCycle() api */

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Sets the frequency for CCU4 slice. */
PWM_STATUS_t PWM_lCCU4_SetFreq(PWM_t *const handle_ptr, uint32_t pwm_freq_hz)
{
  PWM_STATUS_t status;
  uint32_t module_freq;
  uint8_t prescaler;
  uint32_t period_value;
  uint32_t compare;

  XMC_ASSERT("PWM_lCCU4_SetFreq:Invalid pwm_freq_hz " , (pwm_freq_hz != 0U))

  status = handle_ptr->state;
  prescaler = 0U;
  period_value = 0U;

  /* Can't set the frequency when the PWM is not yet initialized or when required frequency is 0*/
  if ((status != PWM_STATUS_UNINITIALIZED) && ((uint32_t)0 != pwm_freq_hz))
  {
    status = PWM_STATUS_SUCCESS;
    /*Get the Module frequency*/
    module_freq = handle_ptr->global_ccu4_handle->module_frequency;

    /*Calculate the prescaler and the period register values.*/
    while (prescaler <= PWM_MAX_PRESCALER)
    {
      period_value = (uint32_t)((uint32_t)module_freq / (uint32_t)pwm_freq_hz) >> (uint32_t)prescaler;
      /*If the prescaler selected is not big enough goto the next prescaler value else come out.*/
      if (period_value <= PWM_MAX_TIMER_COUNT )
      {
        break;
      }
      prescaler++;
    }

    /*Can't set the frequency if the required value is too small or when the required frequency is too large.*/
    if ((prescaler > PWM_MAX_PRESCALER) || ((uint32_t)0 == period_value))
    {
      XMC_DEBUG("PWM_lCCU4_SetFreq:Frequency could not be set")
      status = PWM_STATUS_FAILURE;
    }
    else
    {
      /*Calculate the new compare values using new period values */
      compare = (period_value * (PWM_MAX_DUTY_CYCLE - handle_ptr->duty_cycle))
    		     / ((uint32_t) 100 * PWM_DUTY_CYCLE_SCALE);

      XMC_CCU4_SLICE_SetPrescaler(handle_ptr->ccu4_slice_ptr, prescaler);

      /* The period register is always one count less than calculated.*/
      period_value = period_value - (uint32_t)1;
      XMC_CCU4_SLICE_SetTimerPeriodMatch(handle_ptr->ccu4_slice_ptr, (uint16_t)(period_value));

      XMC_CCU4_SLICE_SetTimerCompareMatch(handle_ptr->ccu4_slice_ptr, (uint16_t)compare);

      XMC_CCU4_EnableShadowTransfer(handle_ptr->ccu4_kernel_ptr, handle_ptr->shadow_mask);

      handle_ptr->compare_value = compare;
      handle_ptr->period_value = period_value;
      XMC_DEBUG("PWM_lCCU4_SetFreq:frequency set")
    }
  }
  else
  {
    status = PWM_STATUS_FAILURE;
    XMC_DEBUG("PWM_lCCU4_SetFreq:Frequency could not be set")
  }


  return status;
} /* end of PWM_lCCU4_SetFreq() api */

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Sets the frequency and duty cycle for CCU4 slice. */
PWM_STATUS_t PWM_lCCU4_SetFreqAndDutyCycle(PWM_t *const handle_ptr, uint32_t pwm_freq_hz, uint32_t duty_cycle)
{
  PWM_STATUS_t status;
  uint32_t module_freq;
  uint8_t prescaler;
  uint32_t period_value;
  uint32_t compare;

  XMC_ASSERT("PWM_lCCU4_SetFreqAndDutyCycle:Invalid pwm_freq_hz " , (pwm_freq_hz != 0U))
  XMC_ASSERT("PWM_lCCU4_SetFreqAndDutyCycle:Invalid duty_cycle",((duty_cycle >= 0) &&
                                                               (duty_cycle <= PWM_MAX_DUTY_CYCLE)))

  status = handle_ptr->state;
  prescaler = 0U;
  period_value = 0U;

  /* Can't set the frequency when the PWM is not yet initialized or when required frequency is 0*/
  if ((status != PWM_STATUS_UNINITIALIZED) && ((uint32_t)0 != pwm_freq_hz))
  {
    status = PWM_STATUS_SUCCESS;
    /*Get the Module frequency*/
    module_freq = handle_ptr->global_ccu4_handle->module_frequency;

    /*Calculate the prescaler and the period register values.*/
    while (prescaler <= PWM_MAX_PRESCALER)
    {
      period_value = (uint32_t)((uint32_t)module_freq / (uint32_t)pwm_freq_hz) >> (uint32_t)prescaler;
      /*If the prescaler selected is not big enough goto the next prescaler value else come out.*/
      if (period_value <= PWM_MAX_TIMER_COUNT )
      {
        break;
      }

      prescaler++;
    }

    /*Can't set the frequency if the required value is too small or when the required frequency is too large.*/
    if ((prescaler > PWM_MAX_PRESCALER) || (duty_cycle > PWM_MAX_DUTY_CYCLE) || ((uint32_t)0 == period_value))
    {
      XMC_DEBUG("PWM_lCCU4_SetFreqAndDutyCycle:Frequency or duty cycle could not be set")
      status = PWM_STATUS_FAILURE;
    }
    else
    {
      /*Calculate the new compare values using new period values */
      compare = (period_value * ((uint32_t)PWM_MAX_DUTY_CYCLE - duty_cycle)) / ((uint32_t) 100 * PWM_DUTY_CYCLE_SCALE);

      XMC_CCU4_SLICE_SetPrescaler(handle_ptr->ccu4_slice_ptr, prescaler);

      /* The period register is always one count less than calculated.*/
      period_value = period_value - (uint32_t)1;
      XMC_CCU4_SLICE_SetTimerPeriodMatch(handle_ptr->ccu4_slice_ptr, (uint16_t)(period_value));

      XMC_CCU4_SLICE_SetTimerCompareMatch(handle_ptr->ccu4_slice_ptr, (uint16_t)compare);

      XMC_CCU4_EnableShadowTransfer(handle_ptr->ccu4_kernel_ptr, handle_ptr->shadow_mask);

      handle_ptr->compare_value = compare;
      handle_ptr->period_value = period_value;
      handle_ptr->duty_cycle = duty_cycle;
      XMC_DEBUG("PWM_lCCU4_SetFreqAndDutyCycle:frequency and duty cycle set")
    }
  }
  else
  {
    status = PWM_STATUS_FAILURE;
    XMC_DEBUG("PWM_lCCU4_SetFreqAndDutyCycle:Frequency or duty cycle could not be set")
  }


  return status;
} /* end of PWM_lCCU4_SetFreqAndDutyCycle() api */

#endif /* end of CCU4 function definitions */

#ifdef PWM_SLICE_USED_CCU8

/*Initialize the APP and CCU8 slice. */
PWM_STATUS_t PWM_lCCU8_Init(PWM_t *const handle_ptr)
{
  PWM_STATUS_t status = PWM_STATUS_FAILURE;

  if (PWM_STATUS_UNINITIALIZED == handle_ptr->state)
  {
    /* Initialize consumed Apps */
    status = (PWM_STATUS_t)GLOBAL_CCU8_Init(handle_ptr->global_ccu8_handle);

    /*Initialize CCU8 slice */
    if (PWM_STATUS_SUCCESS == status)
    {
      XMC_DEBUG("PWM_lCCU8_Init:Initilizing Slice")
      XMC_CCU8_SLICE_CompareInit(handle_ptr->ccu8_slice_ptr, handle_ptr->ccu8_slice_config_ptr);

      /* Set the period and compare register values */
      XMC_CCU8_SLICE_SetTimerPeriodMatch(handle_ptr->ccu8_slice_ptr,
    		                            (uint16_t)handle_ptr->period_value);

      XMC_CCU8_SLICE_SetTimerCompareMatch(handle_ptr->ccu8_slice_ptr, XMC_CCU8_SLICE_COMPARE_CHANNEL_1,
    		                              (uint16_t)handle_ptr->compare_value);

      XMC_CCU8_EnableShadowTransfer(handle_ptr->ccu8_kernel_ptr, handle_ptr->shadow_mask);

      /* Initialize interrupts */
      PWM_lCCU8_ConfigInterrupts(handle_ptr);

      XMC_GPIO_Init(handle_ptr->gpio_out_port,handle_ptr->gpio_out_pin,
    		        handle_ptr->gpio_out_config);

      handle_ptr->state = PWM_STATUS_SUCCESS;

      /* Start the PWM generation if start at initialization is enabled */
      if ((bool) true == handle_ptr->start_control)
      {
        PWM_Start(handle_ptr);
      }
      status = PWM_STATUS_SUCCESS;
    }
    else
    {
      handle_ptr->state = PWM_STATUS_UNINITIALIZED;
    }

  }
  return(status);
} /* end of PWM_lCCU8_Init() api */

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* Initialize interrupts */
void PWM_lCCU8_ConfigInterrupts(PWM_t *const handle_ptr)
{
  if ((bool) true == handle_ptr->period_match_enable)
  {
    XMC_DEBUG("PWM_lCCU8_ConfigInterrupts:period match event enable")

    XMC_CCU8_SLICE_EnableEvent(handle_ptr->ccu8_slice_ptr, XMC_CCU8_SLICE_IRQ_ID_PERIOD_MATCH);

    /* Bind event to Service Request Node for period match event */
    XMC_CCU8_SLICE_SetInterruptNode(handle_ptr->ccu8_slice_ptr, XMC_CCU8_SLICE_IRQ_ID_PERIOD_MATCH,
                                    handle_ptr->ccu8_slice_period_match_node);
  }

  if ((bool) true == handle_ptr->compare_match_enable)
  {
    XMC_DEBUG("PWM_lCCU8_ConfigInterrupts:compare match event enable ")

    XMC_CCU8_SLICE_EnableEvent(handle_ptr->ccu8_slice_ptr, XMC_CCU8_SLICE_IRQ_ID_COMPARE_MATCH_UP_CH_1);
    /* Bind event to Service Request Node for compare match event */
    XMC_CCU8_SLICE_SetInterruptNode(handle_ptr->ccu8_slice_ptr, XMC_CCU8_SLICE_IRQ_ID_COMPARE_MATCH_UP_CH_1,
                                    handle_ptr->ccu8_slice_compare_match_node);
  }
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Starts the CCU8 slice. */
void PWM_lCCU8_Start(PWM_t *const handle_ptr)
{
  XMC_ASSERT("PWM_lCCU8_Start:Invalid handle_ptr" , (handle_ptr != NULL))

  if ((PWM_STATUS_SUCCESS == handle_ptr->state) || (PWM_STATUS_STOPPED == handle_ptr->state))
  {
    /* Clears IDLE mode for the slice */
    XMC_CCU8_EnableClock(handle_ptr->ccu8_kernel_ptr,handle_ptr->slice_number);
    XMC_CCU8_SLICE_StartTimer(handle_ptr->ccu8_slice_ptr);

    handle_ptr->state = PWM_STATUS_RUNNING;
    XMC_DEBUG("PWM_lCCU8_Start:start PWM")
  }
} /* end of PWM_lCCU8_Start() api */

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Stops the CCU8 slice. */
void PWM_lCCU8_Stop(PWM_t *const handle_ptr)
{
  XMC_ASSERT("PWM_lCCU8_Stop:Invalid handle_ptr" , (handle_ptr != NULL))

  if (PWM_STATUS_UNINITIALIZED != handle_ptr->state)
  {
    XMC_CCU8_SLICE_StopTimer(handle_ptr->ccu8_slice_ptr);
    XMC_CCU8_SLICE_ClearTimer(handle_ptr->ccu8_slice_ptr);
    XMC_CCU8_DisableClock(handle_ptr->ccu8_kernel_ptr, handle_ptr->slice_number);

    handle_ptr->state = PWM_STATUS_STOPPED;
    XMC_DEBUG("PWM_lCCU8_Stop:stop PWM")
  }
} /* end of PWM_lCCU8_Stop() api */

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Sets the duty cycle for CCU8 slice. */
PWM_STATUS_t PWM_lCCU8_SetDutyCycle(PWM_t *const handle_ptr, uint32_t duty_cycle)
{
  uint32_t period;
  uint32_t compare;
  PWM_STATUS_t status;

  XMC_ASSERT("PWM_lCCU8_SetDutyCycle:Invalid handle_ptr" , (handle_ptr != NULL))
  XMC_ASSERT("PWM_lCCU8_SetDutyCycle:Invalid duty_cycle",((duty_cycle >= 0) &&
                                                          (duty_cycle <= PWM_MAX_DUTY_CYCLE)))

  status = PWM_STATUS_FAILURE;
  if (handle_ptr->state != PWM_STATUS_UNINITIALIZED)
  {
    /* Duty cycle needs between 0 and 10000 */
    if (duty_cycle <= PWM_MAX_DUTY_CYCLE)
    {
      period = (uint32_t)handle_ptr->period_value + 1U;

      /* Duty Cycle(symmetric) = (PR-CR1)+1 / period */
      compare = ((period * ((uint32_t) PWM_MAX_DUTY_CYCLE - duty_cycle)) / ((uint32_t) 100 * PWM_DUTY_CYCLE_SCALE));

      handle_ptr->compare_value = compare;
      handle_ptr->duty_cycle = duty_cycle;

      XMC_CCU8_SLICE_SetTimerCompareMatch(handle_ptr->ccu8_slice_ptr, XMC_CCU8_SLICE_COMPARE_CHANNEL_1,
    		                             (uint16_t)compare);

      XMC_CCU8_EnableShadowTransfer(handle_ptr->ccu8_kernel_ptr, handle_ptr->shadow_mask);
      status = PWM_STATUS_SUCCESS;
    }
  }

  XMC_DEBUG("PWM_lCCU8_SetDutyCycle:dutycycle set")
  return (status);
} /* end of PWM_lCCU8_SetDutyCycle() api */

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Sets the frequency for CCU8 slice. */
PWM_STATUS_t PWM_lCCU8_SetFreq(PWM_t *const handle_ptr, uint32_t pwm_freq_hz)
{
  PWM_STATUS_t status;
  uint32_t module_freq;
  uint8_t prescaler;
  uint32_t period_value;
  uint32_t compare;

  XMC_ASSERT("PWM_lCCU8_SetFreq:Invalid pwm_freq_hz " , (pwm_freq_hz != 0U))

  status = handle_ptr->state;
  prescaler = 0U;
  period_value = 0U;

  /* Can't set the frequency when the PWM is not yet initialized or when required frequency is 0*/
  if ((status != PWM_STATUS_UNINITIALIZED) && ((uint32_t)0 != pwm_freq_hz))
  {
    status = PWM_STATUS_SUCCESS;
    /*Get the Module frequency*/
    module_freq = handle_ptr->global_ccu8_handle->module_frequency;

    /*Calculate the prescaler and the period register values.*/
    while (prescaler <= PWM_MAX_PRESCALER)
    {
      period_value = (uint32_t)((uint32_t)module_freq / (uint32_t)pwm_freq_hz) >> (uint32_t)prescaler;
      /*If the prescaler selected is not big enough goto the next prescaler value else come out.*/
      if (period_value <= PWM_MAX_TIMER_COUNT)
      {
        break;
      }

      prescaler++;
    }

    /*Can't set the frequency if the required value is too small or when the required frequency is too large.*/
    if ((prescaler > PWM_MAX_PRESCALER) || ((uint32_t)0 == period_value))
    {
      XMC_DEBUG("PWM_lCCU8_SetFreq:frequency could not be set")
      status = PWM_STATUS_FAILURE;
    }
    else
    {
      /*Calculate the new compare values using new period values*/
      compare = (period_value * (PWM_MAX_DUTY_CYCLE - handle_ptr->duty_cycle))
          		     / ((uint32_t) 100 * PWM_DUTY_CYCLE_SCALE);

      XMC_CCU8_SLICE_SetPrescaler(handle_ptr->ccu8_slice_ptr, prescaler);

      /* The period register is always one count less than calculated.*/
      period_value = period_value - (uint32_t)1;
      XMC_CCU8_SLICE_SetTimerPeriodMatch(handle_ptr->ccu8_slice_ptr, (uint16_t)(period_value));

      XMC_CCU8_SLICE_SetTimerCompareMatch(handle_ptr->ccu8_slice_ptr, XMC_CCU8_SLICE_COMPARE_CHANNEL_1,
    		                             (uint16_t)compare);

      XMC_CCU8_EnableShadowTransfer(handle_ptr->ccu8_kernel_ptr, handle_ptr->shadow_mask);

      handle_ptr->compare_value = compare;
      handle_ptr->period_value = period_value;
      XMC_DEBUG("PWM_lCCU8_SetFreq:frequency set")
	}
  }
  else
  {
    status = PWM_STATUS_FAILURE;
    XMC_DEBUG("PWM_lCCU8_SetFreq:frequency could not be set")
  }

  return status;
} /* end of PWM_lCCU8_SetFreq() api */

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Sets the frequency and duty cycle for CCU8 slice. */
PWM_STATUS_t PWM_lCCU8_SetFreqAndDutyCycle(PWM_t *const handle_ptr, uint32_t pwm_freq_hz, uint32_t duty_cycle)
{
  PWM_STATUS_t status;
  uint32_t module_freq;
  uint8_t prescaler;
  uint32_t period_value;
  uint32_t compare;

  XMC_ASSERT("PWM_lCCU8_SetFreqAndDutyCycle:Invalid pwm_freq_hz " , (pwm_freq_hz != 0U))
  XMC_ASSERT("PWM_lCCU8_SetFreqAndDutyCycle:Invalid duty_cycle",((duty_cycle >= 0) &&
  		                                                       (duty_cycle <= PWM_MAX_DUTY_CYCLE)))

  status = handle_ptr->state;
  prescaler = 0U;
  period_value = 0U;

  /* Can't set the frequency when the PWM is not yet initialized or when required frequency is 0*/
  if ((status != PWM_STATUS_UNINITIALIZED) && ((uint32_t)0 != pwm_freq_hz))
  {
    status = PWM_STATUS_SUCCESS;
    /*Get the Module frequency*/
    module_freq = handle_ptr->global_ccu8_handle->module_frequency;

    /*Calculate the prescaler and the period register values.*/
    while (prescaler <= PWM_MAX_PRESCALER)
    {
      period_value = (uint32_t)((uint32_t)module_freq / (uint32_t)pwm_freq_hz) >> (uint32_t)prescaler;
	  /*If the prescaler selected is not big enough goto the next prescaler value else come out.*/
      if (period_value <= PWM_MAX_TIMER_COUNT)
      {
        break;
      }
      prescaler++;
    }

    /*Can't set the frequency if the required value is too small or when the required frequency is too large.*/
    if ((prescaler > PWM_MAX_PRESCALER) || (duty_cycle > PWM_MAX_DUTY_CYCLE) || ((uint32_t)0 == period_value))
    {
      XMC_DEBUG("PWM_lCCU8_SetFreqAndDutyCycle:Frequency or duty cycle could not be set")
      status = PWM_STATUS_FAILURE;
    }
    else
    {
      /*Calculate the new compare values using new period values */
      compare = (period_value * ((uint32_t)PWM_MAX_DUTY_CYCLE - duty_cycle)) / ((uint32_t) 100 * PWM_DUTY_CYCLE_SCALE);

      XMC_CCU8_SLICE_SetPrescaler(handle_ptr->ccu8_slice_ptr, prescaler);

      /* The period register is always one count less than calculated.*/
      period_value = period_value - (uint32_t)1;
      XMC_CCU8_SLICE_SetTimerPeriodMatch(handle_ptr->ccu8_slice_ptr, (uint16_t)(period_value));

      XMC_CCU8_SLICE_SetTimerCompareMatch(handle_ptr->ccu8_slice_ptr, XMC_CCU8_SLICE_COMPARE_CHANNEL_1,
    		                             (uint16_t)compare);

      XMC_CCU8_EnableShadowTransfer(handle_ptr->ccu8_kernel_ptr, handle_ptr->shadow_mask);

      handle_ptr->compare_value = compare;
      handle_ptr->period_value = period_value;
      handle_ptr->duty_cycle = duty_cycle;
      XMC_DEBUG("PWM_lCCU8_SetFreqAndDutyCycle:Frequency and Duty cycle set")
    }
  }
  else
  {
    status = PWM_STATUS_FAILURE;
    XMC_DEBUG("PWM_lCCU8_SetFreqAndDutyCycle:Frequency and Duty cycle could not be set")
  }


  return status;
} /* end of PWM_lCCU8_SetFreqAndDutyCycle() api */

#endif /* end of CCU8 function definitions */

/**********************************************************************************************************************
 * API IMPLEMENTATION
 **********************************************************************************************************************/

/*This function returns the version of the PWM App*/
DAVE_APP_VERSION_t PWM_GetAppVersion(void)
{
  DAVE_APP_VERSION_t version;

  version.major = (uint8_t) PWM_MAJOR_VERSION;
  version.minor = (uint8_t) PWM_MINOR_VERSION;
  version.patch = (uint8_t) PWM_PATCH_VERSION;

  return version;
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* This function initializes the app */
PWM_STATUS_t PWM_Init(PWM_t *const handle_ptr)
{
  PWM_STATUS_t status;
  status = PWM_STATUS_FAILURE;

  XMC_ASSERT("PWM_Init:Invalid handle_ptr" , (handle_ptr != NULL))

#ifdef PWM_SLICE_USED_CCU4
  if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
  {
    status = PWM_lCCU4_Init(handle_ptr);
  }
#endif

#ifdef PWM_SLICE_USED_CCU8
  if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
  {
    status = PWM_lCCU8_Init(handle_ptr);
  }
#endif

  return (status);
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* This function starts the app. This needs to be called even if external start is configured.*/
void PWM_Start(PWM_t *const handle_ptr)
{
  XMC_ASSERT("PWM_Start:Invalid handle_ptr" , (handle_ptr != NULL))

#ifdef PWM_SLICE_USED_CCU4
  if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
  {
    PWM_lCCU4_Start(handle_ptr);
  }
#endif

#ifdef PWM_SLICE_USED_CCU8
  if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
  {
    PWM_lCCU8_Start(handle_ptr);
  }
#endif
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* This function stops the app */
void PWM_Stop(PWM_t *const handle_ptr)
{

  XMC_ASSERT("PWM_Stop:Invalid handle_ptr" , (handle_ptr != NULL))

#ifdef PWM_SLICE_USED_CCU4
  if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
  {
    PWM_lCCU4_Stop(handle_ptr);
  }
#endif

#ifdef PWM_SLICE_USED_CCU8
  if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
  {
    PWM_lCCU8_Stop(handle_ptr);
  }
#endif
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*This function is used to set the duty cycle (uint32_t) of the PWM waveform  */
PWM_STATUS_t PWM_SetDutyCycle(PWM_t *const handle_ptr, uint32_t duty_cycle)
{
  PWM_STATUS_t status;
  status = PWM_STATUS_FAILURE;

  XMC_ASSERT("PWM_SetDutyCycle:Invalid handle_ptr" , (handle_ptr != NULL))

#ifdef PWM_SLICE_USED_CCU4
  if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
  {
    status = PWM_lCCU4_SetDutyCycle(handle_ptr, duty_cycle);
  }
#endif

#ifdef PWM_SLICE_USED_CCU8
  if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
  {
    status = PWM_lCCU8_SetDutyCycle(handle_ptr, duty_cycle);
  }
#endif
  return (status);
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*This function changes the PWM frequency. Input parameter is the frequency value in Hz */
PWM_STATUS_t PWM_SetFreq(PWM_t *const handle_ptr, uint32_t pwm_freq_hz)
{
  PWM_STATUS_t status;
  status = PWM_STATUS_FAILURE;

  XMC_ASSERT("PWM_SetFreq:Invalid handle_ptr" , (handle_ptr != NULL))

#ifdef PWM_SLICE_USED_CCU4
  if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
  {
    status = PWM_lCCU4_SetFreq(handle_ptr, pwm_freq_hz);
  }
#endif

#ifdef PWM_SLICE_USED_CCU8
  if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
  {
    status = PWM_lCCU8_SetFreq(handle_ptr, pwm_freq_hz);
  }
#endif
  return status;
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*This function sets frequency and the duty cycle */
PWM_STATUS_t PWM_SetFreqAndDutyCycle(PWM_t *const handle_ptr, uint32_t pwm_freq_hz, uint32_t duty_cycle)
{
  PWM_STATUS_t status;
  status = PWM_STATUS_FAILURE;

  XMC_ASSERT("PWM_SetFreqAndDutyCycle:Invalid handle_ptr" , (handle_ptr != NULL))

#ifdef PWM_SLICE_USED_CCU4
  if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
  {
    status = PWM_lCCU4_SetFreqAndDutyCycle(handle_ptr, pwm_freq_hz, duty_cycle);
  }
#endif

#ifdef PWM_SLICE_USED_CCU8
  if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
  {
    status = PWM_lCCU8_SetFreqAndDutyCycle(handle_ptr, pwm_freq_hz, duty_cycle);
  }
#endif
  return status;
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*This function changes the PWM timer status_timer */
bool PWM_GetTimerStatus(PWM_t *const handle_ptr)
{
  bool status_timer;
  status_timer = (bool)false;

  XMC_ASSERT("PWM_GetTimerStatus:Invalid handle_ptr" , (handle_ptr != NULL))

#ifdef PWM_SLICE_USED_CCU4
  if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
  {
    status_timer = XMC_CCU4_SLICE_IsTimerRunning(handle_ptr->ccu4_slice_ptr);
  }
#endif

#ifdef PWM_SLICE_USED_CCU8
  if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
  {
    status_timer = XMC_CCU8_SLICE_IsTimerRunning(handle_ptr->ccu8_slice_ptr);
  }
#endif

  return (status_timer);
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*This function returns the interrupt status_timer */
bool PWM_GetInterruptStatus(PWM_t *const handle_ptr, PWM_INTERRUPT_t pwm_interrupt)
{
  bool status;
  status = (bool) false;

  XMC_ASSERT("PWM_GetInterruptStatus:Invalid handle_ptr" , (handle_ptr != NULL))

#ifdef PWM_SLICE_USED_CCU4
  if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
  {
    status = XMC_CCU4_SLICE_GetEvent(handle_ptr->ccu4_slice_ptr, (XMC_CCU4_SLICE_IRQ_ID_t)pwm_interrupt);
  }
#endif

#ifdef PWM_SLICE_USED_CCU8
  if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
  {
    status = XMC_CCU8_SLICE_GetEvent(handle_ptr->ccu8_slice_ptr, (XMC_CCU8_SLICE_IRQ_ID_t)pwm_interrupt);
  }
#endif

  return status;
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*This function Acknowledges the corresponding interrupt */
void PWM_ClearEvent(PWM_t *const handle_ptr, PWM_INTERRUPT_t pwm_interrupt)
{
  XMC_ASSERT("PWM_ClearEvent:Invalid handle_ptr" , (handle_ptr != NULL))

#ifdef PWM_SLICE_USED_CCU4
  if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
  {
    XMC_CCU4_SLICE_ClearEvent(handle_ptr->ccu4_slice_ptr, (XMC_CCU4_SLICE_IRQ_ID_t) pwm_interrupt);
  }
#endif

#ifdef PWM_SLICE_USED_CCU8
  if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
  {
    XMC_CCU8_SLICE_ClearEvent(handle_ptr->ccu8_slice_ptr, (XMC_CCU8_SLICE_IRQ_ID_t) pwm_interrupt);
  }
#endif
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*This function sets the passive level of the PWM*/
void PWM_SetPassiveLevel(PWM_t *const handle_ptr, PWM_OUTPUT_PASSIVE_LEVEL_t pwm_output_passive_level)
{
  XMC_ASSERT("PWM_SetPassiveLevel:Invalid handle_ptr" , (handle_ptr != NULL))
  XMC_ASSERT("PWM_SetPassiveLevel:Invalid pwm_output_passive_level " ,
              (pwm_output_passive_level < PWM_OUTPUT_PASSIVE_LEVEL_MAX));

#ifdef PWM_SLICE_USED_CCU4
  if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
  {
    XMC_CCU4_SLICE_SetPassiveLevel(handle_ptr->ccu4_slice_ptr,
  		                         (XMC_CCU4_SLICE_OUTPUT_PASSIVE_LEVEL_t)pwm_output_passive_level);

    XMC_CCU4_EnableShadowTransfer(handle_ptr->ccu4_kernel_ptr, handle_ptr->shadow_mask);
    XMC_DEBUG("PWM_SetPassiveLevel:CCU4 slice, passive level changed")
  }
#endif

#ifdef PWM_SLICE_USED_CCU8
  if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
  {
    XMC_CCU8_SLICE_SetPassiveLevel(handle_ptr->ccu8_slice_ptr, XMC_CCU8_SLICE_OUTPUT_0,
    		                        (XMC_CCU8_SLICE_OUTPUT_PASSIVE_LEVEL_t)pwm_output_passive_level);

    XMC_CCU8_EnableShadowTransfer(handle_ptr->ccu8_kernel_ptr, handle_ptr->shadow_mask);
    XMC_DEBUG("PWM_SetPassiveLevel:CCU8 slice, passive level changed")
  }
#endif
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*Configures the period register */
PWM_STATUS_t PWM_SetPeriodMatchValue(PWM_t *const handle_ptr, uint32_t period_match_value)
{
  uint32_t compare;
  PWM_STATUS_t status;

  XMC_ASSERT("PWM_SetPeriodMatchValue:Invalid handle_ptr" , (handle_ptr != NULL))
  XMC_ASSERT("PWM_SetPeriodMatchValue:Invalid period_match_value" , (period_match_value <= PWM_MAX_PERIOD_VALUE))

  status = handle_ptr->state;

  if ( (status != PWM_STATUS_UNINITIALIZED) && (PWM_MAX_PERIOD_VALUE >= period_match_value))
  {
    compare = (period_match_value * ((uint32_t)PWM_MAX_DUTY_CYCLE - handle_ptr->duty_cycle))
		                           / ((uint32_t) 100 * PWM_DUTY_CYCLE_SCALE);

#ifdef PWM_SLICE_USED_CCU4
    if (PWM_TIMER_SLICE_CCU4 == handle_ptr->timer_type)
    {
      XMC_CCU4_SLICE_SetTimerPeriodMatch(handle_ptr->ccu4_slice_ptr, (uint16_t)period_match_value);

      XMC_CCU4_SLICE_SetTimerCompareMatch(handle_ptr->ccu4_slice_ptr, (uint16_t)compare );

      XMC_CCU4_EnableShadowTransfer(handle_ptr->ccu4_kernel_ptr, handle_ptr->shadow_mask);
    }
#endif

#ifdef PWM_SLICE_USED_CCU8
    if (PWM_TIMER_SLICE_CCU8 == handle_ptr->timer_type)
    {
      XMC_CCU8_SLICE_SetTimerPeriodMatch(handle_ptr->ccu8_slice_ptr, (uint16_t)period_match_value);

      XMC_CCU8_SLICE_SetTimerCompareMatch(handle_ptr->ccu8_slice_ptr, XMC_CCU8_SLICE_COMPARE_CHANNEL_1,
          		                              (uint16_t)compare);

      XMC_CCU8_EnableShadowTransfer(handle_ptr->ccu8_kernel_ptr, handle_ptr->shadow_mask);
    }
#endif
    handle_ptr->period_value =  period_match_value;
    handle_ptr->compare_value =  compare;
    status = PWM_STATUS_SUCCESS;
  }
  else
  {
    status = PWM_STATUS_FAILURE;
  }

  return (status);
}
/*CODE_BLOCK_END*/

