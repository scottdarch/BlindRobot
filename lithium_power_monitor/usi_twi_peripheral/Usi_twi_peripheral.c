
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
static sc_boolean usi_twi_peripheral_check_main_region_initalized_r1_idle_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initalized_r1_active_usi_overflow_has_address_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initalized_r1_active_usi_overflow_waiting_for_address_tr0_tr0(const Usi_twi_peripheral* handle);
static sc_boolean usi_twi_peripheral_check_main_region_initalized_r1_setting_start_condition_tr0_tr0(const Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_uninitialized_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_uninitialized_tr1(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initalized_r1_idle_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initalized_r1_active_usi_overflow_has_address_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initalized_r1_active_usi_overflow_waiting_for_address_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_effect_main_region_initalized_r1_setting_start_condition_tr0(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enact_main_region_initalized_r1_idle(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enact_main_region_initalized_r1_setting_start_condition(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_uninitialized_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initalized_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initalized_r1_idle_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initalized_r1_active_usi_overflow_has_address_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initalized_r1_active_usi_overflow_waiting_for_address_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initalized_r1_setting_start_condition_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_enseq_main_region_initalized_r1_default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_uninitialized(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initalized_r1_idle(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initalized_r1_active(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_has_address(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_waiting_for_address(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initalized_r1_setting_start_condition(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initalized_r1(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_uninitialized(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initalized_r1_idle(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initalized_r1_active_usi_overflow_has_address(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initalized_r1_active_usi_overflow_waiting_for_address(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initalized_r1_setting_start_condition(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region__entry_Default(Usi_twi_peripheral* handle);
static void usi_twi_peripheral_react_main_region_initalized_r1__entry_Default(Usi_twi_peripheral* handle);
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
	handle->internal.reg_address = 0;
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
	handle->ifacePeripheral.on_read_address_raised = bool_false;
	handle->ifacePeripheral.on_start_raised = bool_false;
	handle->ifaceDriver.on_peripheral_address_set_raised = bool_false;
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
		case Usi_twi_peripheral_main_region_initalized_r1_idle :
		{
			usi_twi_peripheral_react_main_region_initalized_r1_idle(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_has_address :
		{
			usi_twi_peripheral_react_main_region_initalized_r1_active_usi_overflow_has_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_waiting_for_address :
		{
			usi_twi_peripheral_react_main_region_initalized_r1_active_usi_overflow_waiting_for_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initalized_r1_setting_start_condition :
		{
			usi_twi_peripheral_react_main_region_initalized_r1_setting_start_condition(handle);
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
		case Usi_twi_peripheral_main_region_initalized :
			result = (sc_boolean) (handle->stateConfVector[0] >= Usi_twi_peripheral_main_region_initalized
				&& handle->stateConfVector[0] <= Usi_twi_peripheral_main_region_initalized_r1_setting_start_condition);
			break;
		case Usi_twi_peripheral_main_region_initalized_r1_idle :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initalized_r1_idle
			);
			break;
		case Usi_twi_peripheral_main_region_initalized_r1_active :
			result = (sc_boolean) (handle->stateConfVector[0] >= Usi_twi_peripheral_main_region_initalized_r1_active
				&& handle->stateConfVector[0] <= Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_waiting_for_address);
			break;
		case Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_has_address :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_has_address
			);
			break;
		case Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_waiting_for_address :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_waiting_for_address
			);
			break;
		case Usi_twi_peripheral_main_region_initalized_r1_setting_start_condition :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_peripheral_main_region_initalized_r1_setting_start_condition
			);
			break;
		default:
			result = bool_false;
			break;
	}
	return result;
}

void usi_twi_peripheralIfacePeripheral_raise_on_read_address(Usi_twi_peripheral* handle, sc_integer value)
{
	handle->ifacePeripheral.on_read_address_value = value;
	handle->ifacePeripheral.on_read_address_raised = bool_true;
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



/* implementations of all internal functions */

static sc_boolean usi_twi_peripheral_check_main_region_uninitialized_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return ((handle->ifaceDriver.on_peripheral_address_set_raised) && (handle->ifaceDriver.on_peripheral_address_set_value == 0)) ? bool_true : bool_false;
}

static sc_boolean usi_twi_peripheral_check_main_region_uninitialized_tr1_tr1(const Usi_twi_peripheral* handle)
{
	return handle->ifaceDriver.on_peripheral_address_set_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initalized_r1_idle_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return handle->ifacePeripheral.on_start_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initalized_r1_active_usi_overflow_has_address_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return (handle->internal.reg_address != handle->internal.peripheral_address) ? bool_true : bool_false;
}

static sc_boolean usi_twi_peripheral_check_main_region_initalized_r1_active_usi_overflow_waiting_for_address_tr0_tr0(const Usi_twi_peripheral* handle)
{
	return handle->ifacePeripheral.on_read_address_raised;
}

static sc_boolean usi_twi_peripheral_check_main_region_initalized_r1_setting_start_condition_tr0_tr0(const Usi_twi_peripheral* handle)
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
	usi_twi_peripheral_enseq_main_region_initalized_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initalized_r1_idle_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initalized_r1_idle(handle);
	usi_twi_peripheral_enseq_main_region_initalized_r1_active_usi_overflow_waiting_for_address_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initalized_r1_active_usi_overflow_has_address_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initalized_r1_active(handle);
	usi_twi_peripheral_enseq_main_region_initalized_r1_setting_start_condition_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initalized_r1_active_usi_overflow_waiting_for_address_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_waiting_for_address(handle);
	handle->internal.reg_address = handle->ifacePeripheral.on_read_address_value;
	usi_twi_peripheral_enseq_main_region_initalized_r1_active_usi_overflow_has_address_default(handle);
}

static void usi_twi_peripheral_effect_main_region_initalized_r1_setting_start_condition_tr0(Usi_twi_peripheral* handle)
{
	usi_twi_peripheral_exseq_main_region_initalized_r1_setting_start_condition(handle);
	usi_twi_peripheral_enseq_main_region_initalized_r1_idle_default(handle);
}

/* Entry action for state 'idle'. */
static void usi_twi_peripheral_enact_main_region_initalized_r1_idle(Usi_twi_peripheral* handle)
{
	/* Entry action for state 'idle'. */
	usi_twi_peripheralIfaceDriver_sleep(handle);
}

/* Entry action for state 'setting_start_condition'. */
static void usi_twi_peripheral_enact_main_region_initalized_r1_setting_start_condition(Usi_twi_peripheral* handle)
{
	/* Entry action for state 'setting_start_condition'. */
	usi_twi_peripheralIfaceDriver_reset(handle);
}

/* 'default' enter sequence for state uninitialized */
static void usi_twi_peripheral_enseq_main_region_uninitialized_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state uninitialized */
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_uninitialized;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state initalized */
static void usi_twi_peripheral_enseq_main_region_initalized_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state initalized */
	usi_twi_peripheral_enseq_main_region_initalized_r1_default(handle);
}

/* 'default' enter sequence for state idle */
static void usi_twi_peripheral_enseq_main_region_initalized_r1_idle_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state idle */
	usi_twi_peripheral_enact_main_region_initalized_r1_idle(handle);
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initalized_r1_idle;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state has_address */
static void usi_twi_peripheral_enseq_main_region_initalized_r1_active_usi_overflow_has_address_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state has_address */
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_has_address;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state waiting_for_address */
static void usi_twi_peripheral_enseq_main_region_initalized_r1_active_usi_overflow_waiting_for_address_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state waiting_for_address */
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_waiting_for_address;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state setting_start_condition */
static void usi_twi_peripheral_enseq_main_region_initalized_r1_setting_start_condition_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for state setting_start_condition */
	usi_twi_peripheral_enact_main_region_initalized_r1_setting_start_condition(handle);
	handle->stateConfVector[0] = Usi_twi_peripheral_main_region_initalized_r1_setting_start_condition;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void usi_twi_peripheral_enseq_main_region_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for region main region */
	usi_twi_peripheral_react_main_region__entry_Default(handle);
}

/* 'default' enter sequence for region r1 */
static void usi_twi_peripheral_enseq_main_region_initalized_r1_default(Usi_twi_peripheral* handle)
{
	/* 'default' enter sequence for region r1 */
	usi_twi_peripheral_react_main_region_initalized_r1__entry_Default(handle);
}

/* Default exit sequence for state uninitialized */
static void usi_twi_peripheral_exseq_main_region_uninitialized(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state uninitialized */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state idle */
static void usi_twi_peripheral_exseq_main_region_initalized_r1_idle(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state idle */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state active */
static void usi_twi_peripheral_exseq_main_region_initalized_r1_active(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state active */
	usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow(handle);
}

/* Default exit sequence for state has_address */
static void usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_has_address(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state has_address */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state waiting_for_address */
static void usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_waiting_for_address(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state waiting_for_address */
	handle->stateConfVector[0] = Usi_twi_peripheral_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state setting_start_condition */
static void usi_twi_peripheral_exseq_main_region_initalized_r1_setting_start_condition(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for state setting_start_condition */
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
		case Usi_twi_peripheral_main_region_initalized_r1_idle :
		{
			usi_twi_peripheral_exseq_main_region_initalized_r1_idle(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_has_address :
		{
			usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_has_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_waiting_for_address :
		{
			usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_waiting_for_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initalized_r1_setting_start_condition :
		{
			usi_twi_peripheral_exseq_main_region_initalized_r1_setting_start_condition(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region r1 */
static void usi_twi_peripheral_exseq_main_region_initalized_r1(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for region r1 */
	/* Handle exit of all possible states (of usi_twi_peripheral.main_region.initalized.r1) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Usi_twi_peripheral_main_region_initalized_r1_idle :
		{
			usi_twi_peripheral_exseq_main_region_initalized_r1_idle(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_has_address :
		{
			usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_has_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_waiting_for_address :
		{
			usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_waiting_for_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initalized_r1_setting_start_condition :
		{
			usi_twi_peripheral_exseq_main_region_initalized_r1_setting_start_condition(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region usi_overflow */
static void usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow(Usi_twi_peripheral* handle)
{
	/* Default exit sequence for region usi_overflow */
	/* Handle exit of all possible states (of usi_twi_peripheral.main_region.initalized.r1.active.usi_overflow) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_has_address :
		{
			usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_has_address(handle);
			break;
		}
		case Usi_twi_peripheral_main_region_initalized_r1_active_usi_overflow_waiting_for_address :
		{
			usi_twi_peripheral_exseq_main_region_initalized_r1_active_usi_overflow_waiting_for_address(handle);
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
static void usi_twi_peripheral_react_main_region_initalized_r1_idle(Usi_twi_peripheral* handle)
{
	/* The reactions of state idle. */
	if (usi_twi_peripheral_check_main_region_initalized_r1_idle_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initalized_r1_idle_tr0(handle);
	} 
}

/* The reactions of state has_address. */
static void usi_twi_peripheral_react_main_region_initalized_r1_active_usi_overflow_has_address(Usi_twi_peripheral* handle)
{
	/* The reactions of state has_address. */
	if (usi_twi_peripheral_check_main_region_initalized_r1_active_usi_overflow_has_address_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initalized_r1_active_usi_overflow_has_address_tr0(handle);
	} 
}

/* The reactions of state waiting_for_address. */
static void usi_twi_peripheral_react_main_region_initalized_r1_active_usi_overflow_waiting_for_address(Usi_twi_peripheral* handle)
{
	/* The reactions of state waiting_for_address. */
	if (usi_twi_peripheral_check_main_region_initalized_r1_active_usi_overflow_waiting_for_address_tr0_tr0(handle) == bool_true)
	{ 
		usi_twi_peripheral_effect_main_region_initalized_r1_active_usi_overflow_waiting_for_address_tr0(handle);
	} 
}

/* The reactions of state setting_start_condition. */
static void usi_twi_peripheral_react_main_region_initalized_r1_setting_start_condition(Usi_twi_peripheral* handle)
{
	/* The reactions of state setting_start_condition. */
	usi_twi_peripheral_effect_main_region_initalized_r1_setting_start_condition_tr0(handle);
}

/* Default react sequence for initial entry  */
static void usi_twi_peripheral_react_main_region__entry_Default(Usi_twi_peripheral* handle)
{
	/* Default react sequence for initial entry  */
	usi_twi_peripheral_enseq_main_region_uninitialized_default(handle);
}

/* Default react sequence for initial entry  */
static void usi_twi_peripheral_react_main_region_initalized_r1__entry_Default(Usi_twi_peripheral* handle)
{
	/* Default react sequence for initial entry  */
	usi_twi_peripheral_enseq_main_region_initalized_r1_setting_start_condition_default(handle);
}


