/*********************************************************************************************************************
* DAVE APP Name : PWM       APP Version: 4.1.4
*
* NOTE:
* This file is generated by DAVE. Any manual modification done to this file will be lost when the code is regenerated.
*********************************************************************************************************************/

/**
 * @cond
 ***********************************************************************************************************************
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
 * @endcond
 *
 */

/***********************************************************************************************************************
 * HEADER FILES
 **********************************************************************************************************************/
#include "pwm.h"

/**********************************************************************************************************************
 * DATA STRUCTURES
 **********************************************************************************************************************/

/*
 * CCU4 Compare mode configuration
 */
const XMC_CCU4_SLICE_COMPARE_CONFIG_t PWM_compare_config =
{
  .timer_mode 		   = (uint32_t) XMC_CCU4_SLICE_TIMER_COUNT_MODE_EA,
  .monoshot   		   = (uint32_t) false,
  .shadow_xfer_clear   = (uint32_t) 0,
  .dither_timer_period = (uint32_t) 0,	
  .dither_duty_cycle   = (uint32_t) 0,
  .prescaler_mode	   = (uint32_t) XMC_CCU4_SLICE_PRESCALER_MODE_NORMAL,
  .mcm_enable		   = (uint32_t) 0,
  .prescaler_initval   = (uint32_t) 0,
  .float_limit		   = (uint32_t) 0,
  .dither_limit		   = (uint32_t) 0,
  .passive_level 	   = (uint32_t) XMC_CCU4_SLICE_OUTPUT_PASSIVE_LEVEL_LOW,
  .timer_concatenation = (uint32_t) 0
};

/*
 * GPIO Related configuration for PWM output 
 */
const XMC_GPIO_CONFIG_t  PWM_gpio_out_config	= 
{
  .mode                = XMC_GPIO_MODE_OUTPUT_PUSH_PULL_ALT2,
  .input_hysteresis    = XMC_GPIO_INPUT_HYSTERESIS_STANDARD,
  .output_level        = XMC_GPIO_OUTPUT_LEVEL_LOW,
};

/*
 * APP Handle for the PWM
 */
PWM_t PWM =
{
  .global_ccu4_handle             = (GLOBAL_CCU4_t*)&GLOBAL_CCU4_0,
  .ccu4_kernel_ptr                = (XMC_CCU4_MODULE_t*) CCU40_BASE,
  .ccu4_slice_ptr                 = (XMC_CCU4_SLICE_t*)  CCU40_CC42,
  .ccu4_slice_config_ptr          = &PWM_compare_config,
  .gpio_out_port                  = XMC_GPIO_PORT2,
  .gpio_out_config                = &PWM_gpio_out_config,
  .compare_value                  = 64000U,
  .period_value                   = 63999U,
  .duty_cycle                     = 0U,
  .shadow_mask                    = (uint32_t)((uint32_t)XMC_CCU4_SHADOW_TRANSFER_SLICE_2 | 
                                               (uint32_t)XMC_CCU4_SHADOW_TRANSFER_PRESCALER_SLICE_2),
  .timer_type                     = PWM_TIMER_SLICE_CCU4,
  .state                          = PWM_STATUS_UNINITIALIZED,
  .ccu4_slice_period_match_node   = XMC_CCU4_SLICE_SR_ID_0,
  .ccu4_slice_compare_match_node  = XMC_CCU4_SLICE_SR_ID_0,
  .gpio_out_pin                   = (uint8_t) 10,
  .kernel_number		          = (uint8_t) 0U,
  .slice_number                   = (uint8_t) 2U,
  .start_control                  = true,
  .period_match_enable            = false,
  .compare_match_enable           = false,
};

/********************************************************************************************************/


