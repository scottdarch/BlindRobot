
#ifndef USI_TWI_MASTER_H_
#define USI_TWI_MASTER_H_

#include "../sc_types.h"
		
#ifdef __cplusplus
extern "C" { 
#endif 

/*! \file Header of the state machine 'usi_twi_master'.
*/

/*! Enumeration of all states */ 
typedef enum
{
	Usi_twi_master_main_region_StateA,
	Usi_twi_master_last_state
} Usi_twi_masterStates;


/*! Define dimension of the state configuration vector for orthogonal states. */
#define USI_TWI_MASTER_MAX_ORTHOGONAL_STATES 1

/*! 
 * Type definition of the data structure for the Usi_twi_master state machine.
 * This data structure has to be allocated by the client code. 
 */
typedef struct
{
	Usi_twi_masterStates stateConfVector[USI_TWI_MASTER_MAX_ORTHOGONAL_STATES];
	sc_ushort stateConfVectorPosition; 
	
} Usi_twi_master;

/*! Initializes the Usi_twi_master state machine data structures. Must be called before first usage.*/
extern void usi_twi_master_init(Usi_twi_master* handle);

/*! Activates the state machine */
extern void usi_twi_master_enter(Usi_twi_master* handle);

/*! Deactivates the state machine */
extern void usi_twi_master_exit(Usi_twi_master* handle);

/*! Performs a 'run to completion' step. */
extern void usi_twi_master_runCycle(Usi_twi_master* handle);



/*!
 * Checks whether the state machine is active (until 2.4.1 this method was used for states).
 * A state machine is active if it was entered. It is inactive if it has not been entered at all or if it has been exited.
 */
extern sc_boolean usi_twi_master_isActive(const Usi_twi_master* handle);

/*!
 * Checks if all active states are final. 
 * If there are no active states then the state machine is considered being inactive. In this case this method returns false.
 */
extern sc_boolean usi_twi_master_isFinal(const Usi_twi_master* handle);

/*! Checks if the specified state is active (until 2.4.1 the used method for states was called isActive()). */
extern sc_boolean usi_twi_master_isStateActive(const Usi_twi_master* handle, Usi_twi_masterStates state);

#ifdef __cplusplus
}
#endif 

#endif /* USI_TWI_MASTER_H_ */
