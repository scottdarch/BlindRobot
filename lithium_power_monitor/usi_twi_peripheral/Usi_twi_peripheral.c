
#include <stdlib.h>
#include <string.h>
#include "../sc_types.h"
#include "Usi_twi_peripheral.h"
#include "Usi_twi_peripheralRequired.h"
/*! \file Implementation of the state machine 'usi_twi_peripheral'
*/

/* prototypes of all internal functions */
static sc_boolean usi_twi_peripheral_check_main_region_uninitialized_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_uninitialized_tr1_tr1(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_idle_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr1_tr1(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_waiting_for_address_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_sending_ack_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr1(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region__choice_0_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region__choice_0_tr1(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region__choice_1_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region__choice_1_tr1(const Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_uninitialized_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_uninitialized_tr1(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_idle_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr1(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_waiting_for_address_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_sending_ack_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr1(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_0_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_0_tr1(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_1_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_1_tr1(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enact_main_region_initialized_inner_region_idle(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_uninitialized_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_idle_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_waiting_for_address_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_sending_ack_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_uninitialized(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_idle(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_waiting_for_address(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_sending_ack(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_uninitialized(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_idle(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_waiting_for_address(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_sending_ack(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region__choice_0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region__choice_1(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region__entry_Default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region__entry_Default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1__entry_Default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__entry_Default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region__entry_Default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_clearInEvents(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_clearOutEvents(Usi_twi_peripheral* handle);


void usi_twi_peripheral_init(Usi_twi_peripheral* handle)
{
	sc_integer i;

	for (i = 0; i < USI_TWI_PERIPHERAL_MAX_ORTHOGONAL_STATES; ++i)
	{
		handle->stateConfVector[i] = Usi_twi_peripheral_last_state;
	}
	
	
	handle->stateConfVectorPosition = 0;

	usi_twi_peripheral_clearInEvents(handle);
	usi_twi_peripheral_clearOutEvents(handle);

	/* Default init sequence for statechart usi_twi_peripheral */
	handle->internal.last_read = 0;
	handle->internal.peripheral_address = 0;

}

void usi_twi_peripheral_enter(Usi_twi_peripheral* handle)
{
	/* Default enter sequence for statechart usi_twi_peripheral */
	usi_twi_peripheral_enseq_main_region_default(handle);
}

void usi_twi_peripheral_exit(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for statechart usi_twi_peripheral */
	usi_twi_peripheral_exseq_main_region(handle);
}

sc_boolean usi_twi_peripheral_isActive(const Usi_twi_peripheral* handle)
{
	sc_boolean result;
	if (handle->stateConfVector[0] != Usi_twi_peripheral_last_state)
	{
		result =  bool_true;
	}
	else
	{
		result = bool_false;
	}
	return result;
}

/* 
 * Always returns 'false' since this state machine can never become final.
 */
sc_boolean usi_twi_peripheral_isFinal(const Usi_twi_peripheral* handle)
{
   return bool_false;
}

static void usi_twi_peripheral_clearInEvents(Usi_twi_peripheral* handle)
{
	handle->ifacePeripheral.on_usi_overflow_raised = bool_false;
	handle->ifacePeripheral.on_start_raised = bool_false;
	handle->ifaceDriver.on_peripheral_address_set_raised = bool_false;
	handle->ifaceDriver.on_reset_raised = bool_false;
}

static void usi_twi_peripheral_clearOutEvents(Usi_twi_peripheral* handle)
{
}

void usi_twi_peripheral_runCycle(Usi_twi_peripheral* handle)
{
	
	usi_twi_peripheral_clearOutEvents(handle);
	
	for (handle->stateConfVectorPosition = 0;
		handle->stateConfVectorPosition < USI_TWI_PERIPHERAL_MAX_ORTHOGONAL_STATES;
		handle->stateConfVectorPosition++)
		{
			
		switch (handle->stateConfVector[handle->stateConfVectorPosition])
		{
		case Usi_twi_peripheral_main_region_uninitialized :
		{
			usi_twi_peripheral_react_main_region_uninitialized(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_idle :
		{
			usi_twi_peripheral_react_main_region_initialized_inner_region_idle(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data :
		{
			usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack :
		{
			usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data :
		{
			usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack :
		{
			usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_waiting_for_address :
		{
			usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_waiting_for_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_sending_ack :
		{
			usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_sending_ack(handle);
			break;
		}
		default:
			break;
		}
	}
	
	usi_twi_peripheral_clearInEvents(handle);
}


sc_boolean usi_twi_peripheral_isStateActive(const Usi_twi_peripheral* handle, Usi_twi_peripheralStates state)
{
	sc_boolean result = bool_false;
	switch (state)
	{
		case Usi_twi_peripheral_main_region_uninitialized :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_uninitialized
			);
			break;
		case Usi_twi_peripheral_main_region_initialized :
			result = (sc_boolean) (handle->stateConfVector[0] >= Usi_twi_peripheral_main_region_initialized
				&& handle->stateConfVector[0] <= Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_sending_ack);
			break;
		case Usi_twi_peripheral_main_region_initialized_inner_region_idle :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initialized_inner_region_idle
			);
			break;
		case Usi_twi_peripheral_main_region_initialized_inner_region_active :
			result = (sc_boolean) (handle->stateConfVector[0] >= Usi_twi_peripheral_main_region_initialized_inner_region_active
				&& handle->stateConfVector[0] <= Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_sending_ack);
			break;
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master :
			result = (sc_boolean) (handle->stateConfVector[0] >= Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master
				&& handle->stateConfVector[0] <= Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack);
			break;
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data
			);
			break;
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack
			);
			break;
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master :
			result = (sc_boolean) (handle->stateConfVector[0] >= Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master
				&& handle->stateConfVector[0] <= Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack);
			break;
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data
			);
			break;
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack
			);
			break;
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_waiting_for_address :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_waiting_for_address
			);
			break;
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_sending_ack :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_sending_ack
			);
			break;
		default:
			result = bool_false;
			break;
	}
	return result;
}

void usi_twi_peripheralIfacePeripheral_raise_on_usi_overflow(Usi_twi_peripheral* handle, sc_integer value)
{
	handle->ifacePeripheral.on_usi_overflow_value = value;
	handle->ifacePeripheral.on_usi_overflow_raised = bool_true;
}
void usi_twi_peripheralIfacePeripheral_raise_on_start(Usi_twi_peripheral* handle)
{
	handle->ifacePeripheral.on_start_raised = bool_true;
}


void usi_twi_peripheralIfaceDriver_raise_on_peripheral_address_set(Usi_twi_peripheral* handle, sc_integer value)
{
	handle->ifaceDriver.on_peripheral_address_set_value = value;
	handle->ifaceDriver.on_peripheral_address_set_raised = bool_true;
}
void usi_twi_peripheralIfaceDriver_raise_on_reset(Usi_twi_peripheral* handle)
{
	handle->ifaceDriver.on_reset_raised = bool_true;
}



/* implementations of all internal functions */

static sc_boolean usi_twi_peripheral_check_main_region_uninitialized_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return ((handle->ifaceDriver.on_peripheral_address_set_raised) && (handle->ifaceDriver.on_peripheral_address_set_value == 0)) ? bool_true : bool_false;
}

static sc_boolean usi_twi_peripheral_check_main_region_uninitialized_tr1_tr1(const Usi_twi_peripheral* handle)
{
	return handle->ifaceDriver.on_peripheral_address_set_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_idle_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return handle->ifacePeripheral.on_start_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return handle->ifaceDriver.on_reset_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr1_tr1(const Usi_twi_peripheral* handle)
{
	return handle->ifacePeripheral.on_start_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return handle->ifacePeripheral.on_usi_overflow_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return handle->ifacePeripheral.on_usi_overflow_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return handle->ifacePeripheral.on_usi_overflow_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return handle->ifacePeripheral.on_usi_overflow_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_waiting_for_address_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return handle->ifacePeripheral.on_usi_overflow_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_sending_ack_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return handle->ifacePeripheral.on_usi_overflow_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return (handle->internal.last_read == 0x0) ? bool_true : bool_false;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr1(const Usi_twi_peripheral* handle)
{
	return bool_true;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region__choice_0_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return ((handle->internal.last_read >> 1) != handle->internal.peripheral_address) ? bool_true : bool_false;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region__choice_0_tr1(const Usi_twi_peripheral* handle)
{
	return bool_true;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region__choice_1_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return ((handle->internal.last_read & 0x1) == 0x1) ? bool_true : bool_false;
}

static sc_boolean usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region__choice_1_tr1(const Usi_twi_peripheral* handle)
{
	return bool_true;
}

static void usi_twi_peripheral_effect_main_region_uninitialized_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_uninitialized(handle);
	usi_twi_peripheral_enseq_main_region_uninitialized_default(handle);
}

static void usi_twi_peripheral_effect_main_region_uninitialized_tr1(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_uninitialized(handle);
	handle->internal.peripheral_address = handle->ifaceDriver.on_peripheral_address_set_value;
	usi_twi_peripheral_enseq_main_region_initialized_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_idle_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_idle(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_idle_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr1(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data(handle);
	handle->internal.last_read = handle->ifacePeripheral.on_usi_overflow_value;
	usi_twi_peripheralIfaceDriver_send_ack(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack(handle);
	usi_twi_peripheralIfaceDriver_request_next_byte(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data(handle);
	usi_twi_peripheralIfaceDriver_read_ack(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack(handle);
	handle->internal.last_read = handle->ifacePeripheral.on_usi_overflow_value;
	usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_waiting_for_address_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_waiting_for_address(handle);
	handle->internal.last_read = handle->ifacePeripheral.on_usi_overflow_value;
	usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region__choice_0(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_sending_ack_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_sending_ack(handle);
	usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region__choice_1(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheralIfaceDriver_send_next_byte(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr1(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_idle_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_0_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_idle_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_0_tr1(Usi_twi_peripheral* handle)
{
	usi_twi_peripheralIfaceDriver_send_ack(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_sending_ack_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_1_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheralIfaceDriver_send_next_byte(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_1_tr1(Usi_twi_peripheral* handle)
{
	usi_twi_peripheralIfaceDriver_request_next_byte(handle);
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_default(handle);
}

/* Entry action for state 'idle'. */
static void usi_twi_peripheral_enact_main_region_initialized_inner_region_idle(Usi_twi_peripheral* handle)
{
	/* Entry action for state 'idle'. */
	usi_twi_peripheralIfaceDriver_reset(handle);
}

/* 'default' enter sequence for state uninitialized */
static void usi_twi_peripheral_enseq_main_region_uninitialized_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state uninitialized */
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_uninitialized;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state initialized */
static void usi_twi_peripheral_enseq_main_region_initialized_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state initialized */
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_default(handle);
}

/* 'default' enter sequence for state idle */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_idle_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state idle */
	usi_twi_peripheral_enact_main_region_initialized_inner_region_idle(handle);
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initialized_inner_region_idle;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state active */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state active */
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_default(handle);
}

/* 'default' enter sequence for state reading_from_master */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state reading_from_master */
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_default(handle);
}

/* 'default' enter sequence for state waiting_for_data */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state waiting_for_data */
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state sending_ack */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state sending_ack */
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state writing_to_master */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state writing_to_master */
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_default(handle);
}

/* 'default' enter sequence for state sending_data */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state sending_data */
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state reading_ack */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state reading_ack */
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state waiting_for_address */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_waiting_for_address_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state waiting_for_address */
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_waiting_for_address;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state sending_ack */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_sending_ack_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state sending_ack */
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_sending_ack;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void usi_twi_peripheral_enseq_main_region_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for region main region */
	usi_twi_peripheral_react_main_region__entry_Default(handle);
}

/* 'default' enter sequence for region inner region */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for region inner region */
	usi_twi_peripheral_react_main_region_initialized_inner_region__entry_Default(handle);
}

/* 'default' enter sequence for region inner region */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for region inner region */
	usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for region r1 */
	usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for region r1 */
	usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__entry_Default(handle);
}

/* Default exit sequence for state uninitialized */
static void usi_twi_peripheral_exseq_main_region_uninitialized(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state uninitialized */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state idle */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_idle(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state idle */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state active */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state active */
	usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region(handle);
}

/* Default exit sequence for state waiting_for_data */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state waiting_for_data */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state sending_ack */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state sending_ack */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state sending_data */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state sending_data */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state reading_ack */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state reading_ack */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state waiting_for_address */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_waiting_for_address(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state waiting_for_address */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state sending_ack */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_sending_ack(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state sending_ack */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for region main region */
static void usi_twi_peripheral_exseq_main_region(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of usi_twi_peripheral.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Usi_twi_peripheral_main_region_uninitialized :
		{
			usi_twi_peripheral_exseq_main_region_uninitialized(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_idle :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_idle(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_waiting_for_address :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_waiting_for_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_sending_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_sending_ack(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region inner region */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for region inner region */
	/* Handle exit of all possible states (of usi_twi_peripheral.main_region.initialized.inner_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Usi_twi_peripheral_main_region_initialized_inner_region_idle :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_idle(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_waiting_for_address :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_waiting_for_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_sending_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_sending_ack(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region inner region */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for region inner region */
	/* Handle exit of all possible states (of usi_twi_peripheral.main_region.initialized.inner_region.active.inner_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_waiting_for_address :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_waiting_for_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_sending_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_sending_ack(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of usi_twi_peripheral.main_region.initialized.inner_region.active.inner_region.reading_from_master.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of usi_twi_peripheral.main_region.initialized.inner_region.active.inner_region.writing_to_master.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack :
		{
			usi_twi_peripheral_exseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state uninitialized. */
static void usi_twi_peripheral_react_main_region_uninitialized(Usi_twi_peripheral* handle)
{
	/* The reactions of state uninitialized. */
	if (usi_twi_peripheral_check_main_region_uninitialized_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_uninitialized_tr0(handle);
	}  else
	{
		if (usi_twi_peripheral_check_main_region_uninitialized_tr1_tr1(handle) == bool_true)
		{ 
			usi_twi_peripheral_effect_main_region_uninitialized_tr1(handle);
		} 
	}
}

/* The reactions of state idle. */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_idle(Usi_twi_peripheral* handle)
{
	/* The reactions of state idle. */
	if (usi_twi_peripheral_check_main_region_initialized_inner_region_idle_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initialized_inner_region_idle_tr0(handle);
	} 
}

/* The reactions of state waiting_for_data. */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data(Usi_twi_peripheral* handle)
{
	/* The reactions of state waiting_for_data. */
	if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr0(handle);
	}  else
	{
		if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr1_tr1(handle) == bool_true)
		{ 
			usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr1(handle);
		}  else
		{
			if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data_tr0_tr0(handle) == bool_true)
			{ 
				usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data_tr0(handle);
			} 
		}
	}
}

/* The reactions of state sending_ack. */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack(Usi_twi_peripheral* handle)
{
	/* The reactions of state sending_ack. */
	if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr0(handle);
	}  else
	{
		if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr1_tr1(handle) == bool_true)
		{ 
			usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr1(handle);
		}  else
		{
			if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack_tr0_tr0(handle) == bool_true)
			{ 
				usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_sending_ack_tr0(handle);
			} 
		}
	}
}

/* The reactions of state sending_data. */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data(Usi_twi_peripheral* handle)
{
	/* The reactions of state sending_data. */
	if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr0(handle);
	}  else
	{
		if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr1_tr1(handle) == bool_true)
		{ 
			usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr1(handle);
		}  else
		{
			if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data_tr0_tr0(handle) == bool_true)
			{ 
				usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data_tr0(handle);
			} 
		}
	}
}

/* The reactions of state reading_ack. */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack(Usi_twi_peripheral* handle)
{
	/* The reactions of state reading_ack. */
	if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr0(handle);
	}  else
	{
		if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr1_tr1(handle) == bool_true)
		{ 
			usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr1(handle);
		}  else
		{
			if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack_tr0_tr0(handle) == bool_true)
			{ 
				usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_reading_ack_tr0(handle);
			} 
		}
	}
}

/* The reactions of state waiting_for_address. */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_waiting_for_address(Usi_twi_peripheral* handle)
{
	/* The reactions of state waiting_for_address. */
	if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr0(handle);
	}  else
	{
		if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr1_tr1(handle) == bool_true)
		{ 
			usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr1(handle);
		}  else
		{
			if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_waiting_for_address_tr0_tr0(handle) == bool_true)
			{ 
				usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_waiting_for_address_tr0(handle);
			} 
		}
	}
}

/* The reactions of state sending_ack. */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_sending_ack(Usi_twi_peripheral* handle)
{
	/* The reactions of state sending_ack. */
	if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr0(handle);
	}  else
	{
		if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_tr1_tr1(handle) == bool_true)
		{ 
			usi_twi_peripheral_effect_main_region_initialized_inner_region_active_tr1(handle);
		}  else
		{
			if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_sending_ack_tr0_tr0(handle) == bool_true)
			{ 
				usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_sending_ack_tr0(handle);
			} 
		}
	}
}

/* The reactions of state null. */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0(Usi_twi_peripheral* handle)
{
	/* The reactions of state null. */
	if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr0(handle);
	}  else
	{
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__choice_0_tr1(handle);
	}
}

/* The reactions of state null. */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region__choice_0(Usi_twi_peripheral* handle)
{
	/* The reactions of state null. */
	if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region__choice_0_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_0_tr0(handle);
	}  else
	{
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_0_tr1(handle);
	}
}

/* The reactions of state null. */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region__choice_1(Usi_twi_peripheral* handle)
{
	/* The reactions of state null. */
	if (usi_twi_peripheral_check_main_region_initialized_inner_region_active_inner_region__choice_1_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_1_tr0(handle);
	}  else
	{
		usi_twi_peripheral_effect_main_region_initialized_inner_region_active_inner_region__choice_1_tr1(handle);
	}
}

/* Default react sequence for initial entry  */
static void usi_twi_peripheral_react_main_region__entry_Default(Usi_twi_peripheral* handle)
{
	/* Default react sequence for initial entry  */
	usi_twi_peripheral_enseq_main_region_uninitialized_default(handle);
}

/* Default react sequence for initial entry  */
static void usi_twi_peripheral_react_main_region_initialized_inner_region__entry_Default(Usi_twi_peripheral* handle)
{
	/* Default react sequence for initial entry  */
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_idle_default(handle);
}

/* Default react sequence for initial entry  */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1__entry_Default(Usi_twi_peripheral* handle)
{
	/* Default react sequence for initial entry  */
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_reading_from_master_r1_waiting_for_data_default(handle);
}

/* Default react sequence for initial entry  */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1__entry_Default(Usi_twi_peripheral* handle)
{
	/* Default react sequence for initial entry  */
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_writing_to_master_r1_sending_data_default(handle);
}

/* Default react sequence for initial entry  */
static void usi_twi_peripheral_react_main_region_initialized_inner_region_active_inner_region__entry_Default(Usi_twi_peripheral* handle)
{
	/* Default react sequence for initial entry  */
	usi_twi_peripheral_enseq_main_region_initialized_inner_region_active_inner_region_waiting_for_address_default(handle);
}


