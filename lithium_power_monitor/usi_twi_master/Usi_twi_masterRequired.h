
#ifndef USI_TWI_MASTERREQUIRED_H_
#define USI_TWI_MASTERREQUIRED_H_

#include "../sc_types.h"
#include "Usi_twi_master.h"

#ifdef __cplusplus
extern "C"
{
#endif 

/*! \file This header defines prototypes for all functions that are required by the state machine implementation.

This state machine makes use of operations declared in the state machines interface or internal scopes. Thus the function prototypes:
	- usi_twi_masterIfaceDriver_reset
are defined.

These functions will be called during a 'run to completion step' (runCycle) of the statechart. 
There are some constraints that have to be considered for the implementation of these functions:
	- never call the statechart API functions from within these functions.
	- make sure that the execution time is as short as possible.
 
*/

extern void usi_twi_masterIfaceDriver_reset(const Usi_twi_master* handle);




#ifdef __cplusplus
}
#endif 

#endif /* USI_TWI_MASTERREQUIRED_H_ */
