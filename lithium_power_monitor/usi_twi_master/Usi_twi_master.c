
#include <stdlib.h>
#include <string.h>
#include "../sc_types.h"
#include "Usi_twi_master.h"
#include "Usi_twi_masterRequired.h"
/*! \file Implementation of the state machine 'usi_twi_master'
*/

/* prototypes of all internal functions */
static void usi_twi_master_enact_main_region_StateA(Usi_twi_master* handle);
static void usi_twi_master_enseq_main_region_StateA_default(Usi_twi_master* handle);
static void usi_twi_master_enseq_main_region_default(Usi_twi_master* handle);
static void usi_twi_master_exseq_main_region_StateA(Usi_twi_master* handle);
static void usi_twi_master_exseq_main_region(Usi_twi_master* handle);
static void usi_twi_master_react_main_region_StateA(Usi_twi_master* handle);
static void usi_twi_master_react_main_region__entry_Default(Usi_twi_master* handle);
static void usi_twi_master_clearInEvents(Usi_twi_master* handle);
static void usi_twi_master_clearOutEvents(Usi_twi_master* handle);


void usi_twi_master_init(Usi_twi_master* handle)
{
	sc_integer i;

	for (i = 0; i < USI_TWI_MASTER_MAX_ORTHOGONAL_STATES; ++i)
	{
		handle->stateConfVector[i] = Usi_twi_master_last_state;
	}
	
	
	handle->stateConfVectorPosition = 0;

	usi_twi_master_clearInEvents(handle);
	usi_twi_master_clearOutEvents(handle);


}

void usi_twi_master_enter(Usi_twi_master* handle)
{
	/* Default enter sequence for statechart usi_twi_master */
	usi_twi_master_enseq_main_region_default(handle);
}

void usi_twi_master_exit(Usi_twi_master* handle)
{
	/* Default exit sequence for statechart usi_twi_master */
	usi_twi_master_exseq_main_region(handle);
}

sc_boolean usi_twi_master_isActive(const Usi_twi_master* handle)
{
	sc_boolean result;
	if (handle->stateConfVector[0] != Usi_twi_master_last_state)
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
sc_boolean usi_twi_master_isFinal(const Usi_twi_master* handle)
{
   return bool_false;
}

static void usi_twi_master_clearInEvents(Usi_twi_master* handle)
{
}

static void usi_twi_master_clearOutEvents(Usi_twi_master* handle)
{
}

void usi_twi_master_runCycle(Usi_twi_master* handle)
{
	
	usi_twi_master_clearOutEvents(handle);
	
	for (handle->stateConfVectorPosition = 0;
		handle->stateConfVectorPosition < USI_TWI_MASTER_MAX_ORTHOGONAL_STATES;
		handle->stateConfVectorPosition++)
		{
			
		switch (handle->stateConfVector[handle->stateConfVectorPosition])
		{
		case Usi_twi_master_main_region_StateA :
		{
			usi_twi_master_react_main_region_StateA(handle);
			break;
		}
		default:
			break;
		}
	}
	
	usi_twi_master_clearInEvents(handle);
}


sc_boolean usi_twi_master_isStateActive(const Usi_twi_master* handle, Usi_twi_masterStates state)
{
	sc_boolean result = bool_false;
	switch (state)
	{
		case Usi_twi_master_main_region_StateA :
			result = (sc_boolean) (handle->stateConfVector[0] == Usi_twi_master_main_region_StateA
			);
			break;
		default:
			result = bool_false;
			break;
	}
	return result;
}






/* implementations of all internal functions */

/* Entry action for state 'StateA'. */
static void usi_twi_master_enact_main_region_StateA(Usi_twi_master* handle)
{
	/* Entry action for state 'StateA'. */
	usi_twi_masterIfaceDriver_reset(handle);
}

/* 'default' enter sequence for state StateA */
static void usi_twi_master_enseq_main_region_StateA_default(Usi_twi_master* handle)
{
	/* 'default' enter sequence for state StateA */
	usi_twi_master_enact_main_region_StateA(handle);
	handle->stateConfVector[0] = Usi_twi_master_main_region_StateA;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void usi_twi_master_enseq_main_region_default(Usi_twi_master* handle)
{
	/* 'default' enter sequence for region main region */
	usi_twi_master_react_main_region__entry_Default(handle);
}

/* Default exit sequence for state StateA */
static void usi_twi_master_exseq_main_region_StateA(Usi_twi_master* handle)
{
	/* Default exit sequence for state StateA */
	handle->stateConfVector[0] = Usi_twi_master_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for region main region */
static void usi_twi_master_exseq_main_region(Usi_twi_master* handle)
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of usi_twi_master.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ])
	{
		case Usi_twi_master_main_region_StateA :
		{
			usi_twi_master_exseq_main_region_StateA(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state StateA. */
static void usi_twi_master_react_main_region_StateA(Usi_twi_master* handle)
{
	/* The reactions of state StateA. */
}

/* Default react sequence for initial entry  */
static void usi_twi_master_react_main_region__entry_Default(Usi_twi_master* handle)
{
	/* Default react sequence for initial entry  */
	usi_twi_master_enseq_main_region_StateA_default(handle);
}


