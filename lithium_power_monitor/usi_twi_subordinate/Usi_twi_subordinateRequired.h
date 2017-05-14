
#ifndef USI_TWI_SUBORDINATEREQUIRED_H_
#define USI_TWI_SUBORDINATEREQUIRED_H_

#include "../sc_types.h"
#include "Usi_twi_subordinate.h"

#ifdef __cplusplus
extern "C"
{
#endif 

/*! \file This header defines prototypes for all functions that are required by the state machine implementation.

This state machine makes use of operations declared in the state machines interface or internal scopes. Thus the function prototypes:
	- usi_twi_subordinateIfaceDriver_reset
	- usi_twi_subordinateIfaceDriver_send_next_byte
	- usi_twi_subordinateIfaceDriver_on_byte_read
	- usi_twi_subordinateIfaceDriver_request_next_byte
	- usi_twi_subordinateIfaceDriver_send_ack
	- usi_twi_subordinateIfaceDriver_read_ack
are defined.

These functions will be called during a 'run to completion step' (runCycle) of the statechart. 
There are some constraints that have to be considered for the implementation of these functions:
	- never call the statechart API functions from within these functions.
	- make sure that the execution time is as short as possible.
 
*/

extern void usi_twi_subordinateIfaceDriver_reset(const Usi_twi_subordinate* handle);
extern void usi_twi_subordinateIfaceDriver_send_next_byte(const Usi_twi_subordinate* handle, const sc_integer address);
extern void usi_twi_subordinateIfaceDriver_on_byte_read(const Usi_twi_subordinate* handle, const sc_integer address, const sc_integer data);
extern void usi_twi_subordinateIfaceDriver_request_next_byte(const Usi_twi_subordinate* handle);
extern void usi_twi_subordinateIfaceDriver_send_ack(const Usi_twi_subordinate* handle);
extern void usi_twi_subordinateIfaceDriver_read_ack(const Usi_twi_subordinate* handle);





#ifdef __cplusplus
}
#endif 

#endif /* USI_TWI_SUBORDINATEREQUIRED_H_ */
