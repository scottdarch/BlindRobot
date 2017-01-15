/*
 *
 * @file digital_io.h
 * @date 2015-08-25
 *
 * NOTE:
 * This file is generated by DAVE. Any manual modification done to this file will be lost when the code is regenerated.
 *
 * @cond
 ***********************************************************************************************************************
 * DIGITAL_IO v4.0.10 - The DIGITAL_IO APP is used to configure a port pin as digital Input/Output.
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
 * 2015-02-16
 *     - Initial version
 *
 * 2015-04-22
 *     - XMC_ASSERT is added in static inline functions.<br>
 *
 * 2015-06-20
 *     - Version check added for XMCLib dependency.<br>
 *
 * @endcond
 *
 */

/***********************************************************************************************************************
 * HEADER FILES
 **********************************************************************************************************************/

#ifndef DIGITAL_IO_H
#define DIGITAL_IO_H

#include <xmc_gpio.h>
#include <DAVE_common.h>
#include "digital_io_conf.h"

/***********************************************************************************************************************
 * MACROS
 **********************************************************************************************************************/
#if (!((XMC_LIB_MAJOR_VERSION == 2U) && \
       (XMC_LIB_MINOR_VERSION >= 0U) && \
       (XMC_LIB_PATCH_VERSION >= 0U)))
#error "DIGITAL_IO requires XMC Peripheral Library v2.0.0 or higher"
#endif

 /**********************************************************************************************************************
 * ENUMS
 **********************************************************************************************************************/

/**
* @ingroup DIGITAL_IO_enumerations
* @{
*/

/**
* @brief Initialization status of DIGITAL_IO APP.
*/
typedef enum DIGITAL_IO_STATUS
{
  DIGITAL_IO_STATUS_OK = 0U,/**< 0=Status OK */
  DIGITAL_IO_STATUS_FAILURE = 1U/**< 1=Status Failed */
} DIGITAL_IO_STATUS_t;

/**
* @}
*/

/**********************************************************************************************************************
 * DATA STRUCTURES
 **********************************************************************************************************************/
/**
* @ingroup DIGITAL_IO_datastructures
* @{
*/

/**
* @brief Initialization data structure of DIGITAL_IO APP
*/
typedef struct DIGITAL_IO
{
  const XMC_GPIO_CONFIG_t *const gpio_config;   /**< mode, initial output level and pad driver strength / hysteresis */
  XMC_GPIO_PORT_t *const gpio_port;             /**< port number */
  const uint8_t gpio_pin;                       /**< pin number */
} DIGITAL_IO_t;


/**
* @}
*/


/***********************************************************************************************************************
 * API Prototypes
 **********************************************************************************************************************/


#ifdef __cplusplus
extern "C" {
#endif

/**
* @ingroup DIGITAL_IO_apidoc
* @{
*/



/**
* @brief Get DIGITAL_IO APP version
* @return DAVE_APP_VERSION_t APP version information (major, minor and patch number)
*
* \par<b>Description: </b><br>
* The function can be used to check application software compatibility with a
* specific version of the APP.
*
* Example Usage:
*
* @code
* #include <DAVE.h>
*
* int main(void)
* {
*   DAVE_STATUS_t init_status;
*   DAVE_APP_VERSION_t version;
*
*   // Initialize DIGITAL_IO APP:
*   // DIGITAL_IO_Init() is called from within DAVE_Init().
*   init_status = DAVE_Init();
*   if(init_status == DAVE_STATUS_SUCCESS)
*   {
*     version = DIGITAL_IO_GetAppVersion();
*     if (version.major != 4U) {
*     // Probably, not the right version.
*     }
*   }
*
*     // More code here
*     while(1) {
*
*     }
*     return (1);
*  }
* @endcode<BR>
*/

DAVE_APP_VERSION_t DIGITAL_IO_GetAppVersion(void);

/**
*
* @brief Function to initialize the port pin as per UI settings.
* @param handler Pointer pointing to APP data structure. Refer @ref DIGITAL_IO_t for details.
* @return DIGITAL_IO_STATUS_t DIGITAL_IO APP status. Refer @ref DIGITAL_IO_STATUS_t structure for details.
*
* \par<b>Description:</b><br>
* This function initializes GPIO port registers IOCR,PDISC,OMR,PDR/PHCR to configure pin direction,initial output level,
* and pad driver strength/hysteresis.
*
* \par<b>Related APIs:</b><BR>
* None
*
* Example Usage:
* @code
* #include <DAVE.h>//Declarations from DAVE Code Generation (includes SFR declaration)
* int main(void)
* {
*   DAVE_STATUS_t status;
*   status = DAVE_Init();  //(DAVE_STATUS_t)DIGITAL_IO_Init(&DIGITAL_IO_0) is called within DAVE_Init()
*   if(status == DAVE_STATUS_SUCCESS)
*   {
*     XMC_DEBUG("DAVE Apps initialization success\n");
*   }
*   else
*   {
*     XMC_DEBUG(("DAVE Apps initialization failed with status %d\n", status));
*     while(1U)
*     {
*     }
*   }
*   //Placeholder for user application code. The while loop below can be replaced with user application code.
*   while(1U)
*   {
*   }
*   return 1U;
*  }
*  @endcode
*/

DIGITAL_IO_STATUS_t DIGITAL_IO_Init(const DIGITAL_IO_t *const handler);

/**
*
* @brief Function to set port pin high.
* @param handler Pointer pointing to APP data structure. Refer @ref DIGITAL_IO_t for details.
* @return None
*
* \par<b>Description:</b><br>
* This function configures port output modification register Pn_OMR, to make port pin to high level.
*
* \par<b>Related APIs:</b><BR>
*  DIGITAL_IO_SetOutputLow()
*
* Example Usage:
* @code
* #include <DAVE.h>//Declarations from DAVE Code Generation (includes SFR declaration)
* int main(void)
* {
*   DAVE_STATUS_t status;
*   status = DAVE_Init();  //(DAVE_STATUS_t)DIGITAL_IO_Init(&DIGITAL_IO_0) is called within DAVE_Init()
*   if(status == DAVE_STATUS_SUCCESS)
*   {
*     XMC_DEBUG("DAVE Apps initialization success\n");
*   }
*   else
*   {
*     XMC_DEBUG(("DAVE Apps initialization failed with status %d\n", status));
*     while(1U)
*     {
*     }
*   }
*   //Placeholder for user application code. The while loop below can be replaced with user application code.
*   DIGITAL_IO_SetOutputHigh(&DIGITAL_IO_0);
*   while(1U)
*   {
*     // Add application code here
*   }
*
*   return (1);
* }
*  @endcode
*/

__STATIC_INLINE void DIGITAL_IO_SetOutputHigh(const DIGITAL_IO_t *const handler)
{
  XMC_ASSERT("DIGITAL_IO_SetOutputHigh: handler null pointer", handler != NULL);
  XMC_GPIO_SetOutputHigh(handler->gpio_port, handler->gpio_pin);
}

/**
* @brief Function to reset port pin.
* @param handler Pointer pointing to APP data structure. Refer @ref DIGITAL_IO_t for details.
* @return None
*
* \par<b>Description:</b><br>
* This function configures port output modification register Pn_OMR, to make port pin to low level.
*
* \par<b>Related APIs:</b><BR>
* DIGITAL_IO_SetOutputHigh()
*
* Example Usage:
* @code
*  #include <DAVE.h>//Declarations from DAVE Code Generation (includes SFR declaration)
*  int main(void)
*  {
*    DAVE_STATUS_t status;
*    status = DAVE_Init();  //(DAVE_STATUS_t)DIGITAL_IO_Init(&DIGITAL_IO_0) is called within DAVE_Init()
*    if(status == DAVE_STATUS_SUCCESS)
*    {
*      XMC_DEBUG("DAVE Apps initialization success\n");
*    }
*    else
*    {
*      XMC_DEBUG(("DAVE Apps initialization failed with status %d\n", status));
*      while(1U)
*      {
*      }
*    }
*    //Placeholder for user application code. The while loop below can be replaced with user application code.
*    DIGITAL_IO_SetOutputLow(&DIGITAL_IO_0);
*    while(1U)
*    {
*      // Add application code here
*    }
*
*   return (1);
* }
*  @endcode
*/

__STATIC_INLINE void DIGITAL_IO_SetOutputLow(const DIGITAL_IO_t *const handler)
{
  XMC_ASSERT("DIGITAL_IO_SetOutputLow: handler null pointer", handler != NULL);
  XMC_GPIO_SetOutputLow(handler->gpio_port,handler->gpio_pin);
}

/**
* @brief Function to Toggle port pin.
* @param handler Pointer pointing to APP data structure. Refer @ref DIGITAL_IO_t for details.
* @return None
*
* \par<b>Description:</b><br>
* This function configures port output modification register Pn_OMR, to toggle port pin.
*
* \par<b>Related APIs:</b><BR>
* DIGITAL_IO_SetOutputLow(), DIGITAL_IO_SetOutputHigh()
*
* Example Usage:
*
* @code
* #include <DAVE.h>//Declarations from DAVE Code Generation (includes SFR declaration)
* int main(void)
* {
*   DAVE_STATUS_t status;
*   uint32_t delay_count;;
*   status = DAVE_Init();  //(DAVE_STATUS_t)DIGITAL_IO_Init(&DIGITAL_IO_0) is called within DAVE_Init()
*   if(status == DAVE_STATUS_SUCCESS)
*   {
*     XMC_DEBUG("DAVE Apps initialization success\n");
*   }
*   else
*   {
*      XMC_DEBUG(("DAVE Apps initialization failed with status %d\n", status));
*      while(1U)
*      {
*      }
*   }
*   //Placeholder for user application code. The while loop below can be replaced with user application code.
*   while(1U)
*   {
*      DIGITAL_IO_ToggleOutput(&DIGITAL_IO_0); //toggles : 1 -> 0 (if initial output level is logic 1)
*      //Add application code here
*      for(delay_count = 0;delay_count<0xfffff;delay_count++);
*      DIGITAL_IO_ToggleOutput(&DIGITAL_IO_0); //toggles : 0 -> 1
*      //Add application code here
*      for(delay_count = 0;delay_count<0xfffff;delay_count++);
*   }
*   return (1);
* }
*  @endcode
*/

__STATIC_INLINE void DIGITAL_IO_ToggleOutput(const DIGITAL_IO_t *const handler)
{
  XMC_ASSERT("DIGITAL_IO_ToggleOutput: handler null pointer", handler != NULL);
  XMC_GPIO_ToggleOutput(handler->gpio_port, handler->gpio_pin);
}

/**
* @brief Function to read input level of port pin.
* @param handler Pointer pointing to APP data structure. Refer @ref DIGITAL_IO_t for details.
* @return uint32_t input logic level. Range:0-1
*
* \par<b>Description:</b><br>
* This function reads the Pn_IN register and returns the current logical value at the GPIO pin.
*
* \par<b>Related APIs:</b><BR>
*  None
*
* Example Usage:
* @code
* #include <DAVE.h>//Declarations from DAVE Code Generation (includes SFR declaration)
* int main(void)
* {
*   DAVE_STATUS_t status;
*   uint32_t pin_status;
*   status = DAVE_Init();   // (DAVE_STATUS_t)DIGITAL_IO_Init(&DIGITAL_IO_0) is called within DAVE_Init()
*   if(status == DAVE_STATUS_SUCCESS)
*   {
*     XMC_DEBUG("DAVE Apps initialization success\n");
*   }
*   else
*   {
*     XMC_DEBUG(("DAVE Apps initialization failed with status %d\n", status));
*     while(1U)
*     {
*     }
*   }
*   //Placeholder for user application code. The while loop below can be replaced with user application code.
*   while(1U)
*   {
*     pin_status = DIGITAL_IO_GetInput(&DIGITAL_IO_0);
*     if(pin_status == 1)
*     {
*       // Add application code here
*     }
*     else
*     {
*       // Add application code here
*     }
*   }
*   return (1);
* }
*  @endcode
*/

__STATIC_INLINE uint32_t DIGITAL_IO_GetInput(const DIGITAL_IO_t *const handler)
{
  XMC_ASSERT("DIGITAL_IO_GetInput: handler null pointer", handler != NULL);
  return XMC_GPIO_GetInput(handler->gpio_port, handler->gpio_pin);
}

/**
*@}
*/

#ifdef __cplusplus
}
#endif

/* Include APP extern file */
#include "digital_io_extern.h"


#endif /* DIGITAL_IO_H */
