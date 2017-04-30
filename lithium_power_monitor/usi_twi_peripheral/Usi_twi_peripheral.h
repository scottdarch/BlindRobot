
#ifndef USI_TWI_PERIPHERAL_H_
#define USI_TWI_PERIPHERAL_H_

#include "../sc_types.h"
		
#ifdef __cplusplus
extern "C" { 
#endif 

/*! \file Header of the state machine 'usi_twi_peripheral'.
*/

/*! Enumeration of all states */ 
typedef enum
{
	Usi_twi_peripheral_main_region_uninitialized,
	Usi_twi_peripheral_main_region_initialized,
	Usi_twi_peripheral_main_region_initialized_r0_idle,
	Usi_twi_peripheral_main_region_initialized_r0_active,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_reading_from_master,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_reading_from_master_link_waiting_for_data,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_reading_from_master_link_sending_ack,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_reading_from_master_write_state_waiting_for_register_address,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_reading_from_master_write_state_waiting_for_data,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_reading_from_master_write_state_sending_ack,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_writing_to_master,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_writing_to_master_r1_sending_data,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_writing_to_master_r1_reading_ack,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_waiting_for_address,
	Usi_twi_peripheral_main_region_initialized_r0_active_r0_sending_ack,
	Usi_twi_peripheral_last_state
} Usi_twi_peripheralStates;

/*! Type definition of the data structure for the Usi_twi_peripheralIfacePeripheral interface scope. */
typedef struct
{
	sc_boolean on_usi_overflow_raised;
	sc_integer on_usi_overflow_value;
	sc_boolean on_start_raised;
} Usi_twi_peripheralIfacePeripheral;

/*! Type definition of the data structure for the Usi_twi_peripheralIfaceDriver interface scope. */
typedef struct
{
	sc_boolean on_peripheral_address_set_raised;
	sc_integer on_peripheral_address_set_value;
	sc_boolean on_reset_raised;
} Usi_twi_peripheralIfaceDriver;

/*! Type definition of the data structure for the Usi_twi_peripheralInternal interface scope. */
typedef struct
{
	sc_integer last_read;
	sc_integer command;
	sc_integer peripheral_address;
	sc_integer register_addr;
} Usi_twi_peripheralInternal;


/*! Define dimension of the state configuration vector for orthogonal states. */
#define USI_TWI_PERIPHERAL_MAX_ORTHOGONAL_STATES 2

/*! 
 * Type definition of the data structure for the Usi_twi_peripheral state machine.
 * This data structure has to be allocated by the client code. 
 */
typedef struct
{
	Usi_twi_peripheralStates stateConfVector[USI_TWI_PERIPHERAL_MAX_ORTHOGONAL_STATES];
	sc_ushort stateConfVectorPosition; 
	
	Usi_twi_peripheralIfacePeripheral ifacePeripheral;
	Usi_twi_peripheralIfaceDriver ifaceDriver;
	Usi_twi_peripheralInternal internal;
} Usi_twi_peripheral;

/*! Initializes the Usi_twi_peripheral state machine data structures. Must be called before first usage.*/
extern void usi_twi_peripheral_init(Usi_twi_peripheral* handle);

/*! Activates the state machine */
extern void usi_twi_peripheral_enter(Usi_twi_peripheral* handle);

/*! Deactivates the state machine */
extern void usi_twi_peripheral_exit(Usi_twi_peripheral* handle);

/*! Performs a 'run to completion' step. */
extern void usi_twi_peripheral_runCycle(Usi_twi_peripheral* handle);


/*! Raises the in event 'on_usi_overflow' that is defined in the interface scope 'peripheral'. */ 
extern void usi_twi_peripheralIfacePeripheral_raise_on_usi_overflow(Usi_twi_peripheral* handle, sc_integer value);

/*! Raises the in event 'on_start' that is defined in the interface scope 'peripheral'. */ 
extern void usi_twi_peripheralIfacePeripheral_raise_on_start(Usi_twi_peripheral* handle);

/*! Raises the in event 'on_peripheral_address_set' that is defined in the interface scope 'driver'. */ 
extern void usi_twi_peripheralIfaceDriver_raise_on_peripheral_address_set(Usi_twi_peripheral* handle, sc_integer value);

/*! Raises the in event 'on_reset' that is defined in the interface scope 'driver'. */ 
extern void usi_twi_peripheralIfaceDriver_raise_on_reset(Usi_twi_peripheral* handle);


/*!
 * Checks whether the state machine is active (until 2.4.1 this method was used for states).
 * A state machine is active if it was entered. It is inactive if it has not been entered at all or if it has been exited.
 */
extern sc_boolean usi_twi_peripheral_isActive(const Usi_twi_peripheral* handle);

/*!
 * Checks if all active states are final. 
 * If there are no active states then the state machine is considered being inactive. In this case this method returns false.
 */
extern sc_boolean usi_twi_peripheral_isFinal(const Usi_twi_peripheral* handle);

/*! Checks if the specified state is active (until 2.4.1 the used method for states was called isActive()). */
extern sc_boolean usi_twi_peripheral_isStateActive(const Usi_twi_peripheral* handle, Usi_twi_peripheralStates state);

#ifdef __cplusplus
}
#endif 

#endif /* USI_TWI_PERIPHERAL_H_ */
