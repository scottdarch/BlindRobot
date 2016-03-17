/* Copyright (c) 2016 Scott A Dixon */

#include <stdlib.h>
#include <string.h>
#include "sc_types.h"
#include "Bot.h"
/*! \file Implementation of the state machine 'bot'
*/

/* prototypes of all internal functions */
static sc_boolean bot_check_main_region_usleep_tr0_tr0(const Bot* handle);
static sc_boolean bot_check_main_region_on_tr0_tr0(const Bot* handle);
static sc_boolean bot_check_main_region_on_main_programming_tr0_tr0(const Bot* handle);
static sc_boolean bot_check_main_region_on_main_navigate_control_load_instruction_tr0_tr0(const Bot* handle);
static sc_boolean bot_check_main_region_on_main_navigate_control_plan_move_tr0_tr0(const Bot* handle);
static sc_boolean bot_check_main_region_on_main_navigate_control_move_tr0_tr0(const Bot* handle);
static sc_boolean bot_check_main_region_on_main_navigate_control_evaluate_move_tr0_tr0(const Bot* handle);
static sc_boolean bot_check_main_region_on_main_idle_tr0_tr0(const Bot* handle);
static sc_boolean bot_check_main_region_on_main_navigate_control__choice_0_tr1_tr1(const Bot* handle);
static sc_boolean bot_check_main_region_on_main_navigate_control__choice_0_tr0(const Bot* handle);
static sc_boolean bot_check_main_region_on_main__choice_0_tr1_tr1(const Bot* handle);
static sc_boolean bot_check_main_region_on_main__choice_0_tr0(const Bot* handle);
static void bot_effect_main_region_usleep_tr0(Bot* handle);
static void bot_effect_main_region_on_tr0(Bot* handle);
static void bot_effect_main_region_on_main_programming_tr0(Bot* handle);
static void bot_effect_main_region_on_main_navigate_control_load_instruction_tr0(Bot* handle);
static void bot_effect_main_region_on_main_navigate_control_plan_move_tr0(Bot* handle);
static void bot_effect_main_region_on_main_navigate_control_move_tr0(Bot* handle);
static void bot_effect_main_region_on_main_navigate_control_evaluate_move_tr0(Bot* handle);
static void bot_effect_main_region_on_main_idle_tr0(Bot* handle);
static void bot_effect_main_region_on_main_navigate_control__choice_0_tr1(Bot* handle);
static void bot_effect_main_region_on_main_navigate_control__choice_0_tr0(Bot* handle);
static void bot_effect_main_region_on_main__choice_0_tr1(Bot* handle);
static void bot_effect_main_region_on_main__choice_0_tr0(Bot* handle);
static void bot_enact_main_region_usleep(Bot* handle);
static void bot_enact_main_region_on_main_navigate(Bot* handle);
static void bot_enact_main_region_on_main_navigate_control_load_instruction(Bot* handle);
static void bot_enseq_main_region_usleep_default(Bot* handle);
static void bot_enseq_main_region_on_default(Bot* handle);
static void bot_enseq_main_region_on_main_programming_default(Bot* handle);
static void bot_enseq_main_region_on_main_navigate_default(Bot* handle);
static void bot_enseq_main_region_on_main_navigate_control_load_instruction_default(Bot* handle);
static void bot_enseq_main_region_on_main_navigate_control_plan_move_default(Bot* handle);
static void bot_enseq_main_region_on_main_navigate_control_move_default(Bot* handle);
static void bot_enseq_main_region_on_main_navigate_control_evaluate_move_default(Bot* handle);
static void bot_enseq_main_region_on_main_idle_default(Bot* handle);
static void bot_enseq_main_region_default(Bot* handle);
static void bot_enseq_main_region_on_main_default(Bot* handle);
static void bot_enseq_main_region_on_main_navigate_control_default(Bot* handle);
static void bot_exseq_main_region_usleep(Bot* handle);
static void bot_exseq_main_region_on(Bot* handle);
static void bot_exseq_main_region_on_main_programming(Bot* handle);
static void bot_exseq_main_region_on_main_navigate(Bot* handle);
static void bot_exseq_main_region_on_main_navigate_control_load_instruction(Bot* handle);
static void bot_exseq_main_region_on_main_navigate_control_plan_move(Bot* handle);
static void bot_exseq_main_region_on_main_navigate_control_move(Bot* handle);
static void bot_exseq_main_region_on_main_navigate_control_evaluate_move(Bot* handle);
static void bot_exseq_main_region_on_main_idle(Bot* handle);
static void bot_exseq_main_region(Bot* handle);
static void bot_exseq_main_region_on_main(Bot* handle);
static void bot_exseq_main_region_on_main_navigate_control(Bot* handle);
static void bot_react_main_region_usleep(Bot* handle);
static void bot_react_main_region_on_main_programming(Bot* handle);
static void bot_react_main_region_on_main_navigate_control_load_instruction(Bot* handle);
static void bot_react_main_region_on_main_navigate_control_plan_move(Bot* handle);
static void bot_react_main_region_on_main_navigate_control_move(Bot* handle);
static void bot_react_main_region_on_main_navigate_control_evaluate_move(Bot* handle);
static void bot_react_main_region_on_main_idle(Bot* handle);
static void bot_react_main_region_on_main_navigate_control__choice_0(Bot* handle);
static void bot_react_main_region_on_main__choice_0(Bot* handle);
static void bot_react_main_region__entry_Default(Bot* handle);
static void bot_react_main_region_on_main__entry_Default(Bot* handle);
static void bot_react_main_region_on_main_navigate_control__entry_Default(Bot* handle);
static void bot_clearInEvents(Bot* handle);
static void bot_clearOutEvents(Bot* handle);	


void bot_init(Bot* handle)
{
	sc_integer i;

	for (i = 0; i < BOT_MAX_ORTHOGONAL_STATES; ++i) {
		handle->stateConfVector[i] = Bot_last_state;
	}
	
	
	handle->stateConfVectorPosition = 0;

	bot_clearInEvents(handle);
	bot_clearOutEvents(handle);

	/* Default init sequence for statechart bot */
	handle->internal.instruction = 0;
	handle->internal.instructionCount = 0;

}

void bot_enter(Bot* handle)
{
	/* Default enter sequence for statechart bot */
	bot_enseq_main_region_default(handle);
}

void bot_exit(Bot* handle)
{
	/* Default exit sequence for statechart bot */
	bot_exseq_main_region(handle);
}

sc_boolean bot_isActive(const Bot* handle) {
	sc_boolean result;
	if (handle->stateConfVector[0] != Bot_last_state)
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
sc_boolean bot_isFinal(const Bot* handle){
   return bool_false;
}

static void bot_clearInEvents(Bot* handle) {
	handle->internal.click_raised = bool_false; 
	handle->internal.long_click_raised = bool_false; 
	handle->internal.move_done_raised = bool_false; 
}

static void bot_clearOutEvents(Bot* handle) {
}

void bot_runCycle(Bot* handle) {
	
	bot_clearOutEvents(handle);
	
	for (handle->stateConfVectorPosition = 0;
		handle->stateConfVectorPosition < BOT_MAX_ORTHOGONAL_STATES;
		handle->stateConfVectorPosition++) {
			
		switch (handle->stateConfVector[handle->stateConfVectorPosition]) {
		case Bot_main_region_usleep : {
			bot_react_main_region_usleep(handle);
			break;
		}
		case Bot_main_region_on_main_programming : {
			bot_react_main_region_on_main_programming(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_load_instruction : {
			bot_react_main_region_on_main_navigate_control_load_instruction(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_plan_move : {
			bot_react_main_region_on_main_navigate_control_plan_move(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_move : {
			bot_react_main_region_on_main_navigate_control_move(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_evaluate_move : {
			bot_react_main_region_on_main_navigate_control_evaluate_move(handle);
			break;
		}
		case Bot_main_region_on_main_idle : {
			bot_react_main_region_on_main_idle(handle);
			break;
		}
		default:
			break;
		}
	}
	
	bot_clearInEvents(handle);
}


sc_boolean bot_isStateActive(const Bot* handle, BotStates state) {
	sc_boolean result = bool_false;
	switch (state) {
		case Bot_main_region_usleep : 
			result = (sc_boolean) (handle->stateConfVector[0] == Bot_main_region_usleep
			);
			break;
		case Bot_main_region_on : 
			result = (sc_boolean) (handle->stateConfVector[0] >= Bot_main_region_on
				&& handle->stateConfVector[0] <= Bot_main_region_on_main_idle);
			break;
		case Bot_main_region_on_main_programming : 
			result = (sc_boolean) (handle->stateConfVector[0] == Bot_main_region_on_main_programming
			);
			break;
		case Bot_main_region_on_main_navigate : 
			result = (sc_boolean) (handle->stateConfVector[0] >= Bot_main_region_on_main_navigate
				&& handle->stateConfVector[0] <= Bot_main_region_on_main_navigate_control_evaluate_move);
			break;
		case Bot_main_region_on_main_navigate_control_load_instruction : 
			result = (sc_boolean) (handle->stateConfVector[0] == Bot_main_region_on_main_navigate_control_load_instruction
			);
			break;
		case Bot_main_region_on_main_navigate_control_plan_move : 
			result = (sc_boolean) (handle->stateConfVector[0] == Bot_main_region_on_main_navigate_control_plan_move
			);
			break;
		case Bot_main_region_on_main_navigate_control_move : 
			result = (sc_boolean) (handle->stateConfVector[0] == Bot_main_region_on_main_navigate_control_move
			);
			break;
		case Bot_main_region_on_main_navigate_control_evaluate_move : 
			result = (sc_boolean) (handle->stateConfVector[0] == Bot_main_region_on_main_navigate_control_evaluate_move
			);
			break;
		case Bot_main_region_on_main_idle : 
			result = (sc_boolean) (handle->stateConfVector[0] == Bot_main_region_on_main_idle
			);
			break;
		default: 
			result = bool_false;
			break;
	}
	return result;
}


/* implementations of all internal functions */

static sc_boolean bot_check_main_region_usleep_tr0_tr0(const Bot* handle) {
	return handle->internal.click_raised;
}

static sc_boolean bot_check_main_region_on_tr0_tr0(const Bot* handle) {
	return handle->internal.long_click_raised;
}

static sc_boolean bot_check_main_region_on_main_programming_tr0_tr0(const Bot* handle) {
	return (handle->internal.click_raised) && handle->internal.instructionCount > 0;
}

static sc_boolean bot_check_main_region_on_main_navigate_control_load_instruction_tr0_tr0(const Bot* handle) {
	return bool_true;
}

static sc_boolean bot_check_main_region_on_main_navigate_control_plan_move_tr0_tr0(const Bot* handle) {
	return bool_true;
}

static sc_boolean bot_check_main_region_on_main_navigate_control_move_tr0_tr0(const Bot* handle) {
	return handle->internal.move_done_raised;
}

static sc_boolean bot_check_main_region_on_main_navigate_control_evaluate_move_tr0_tr0(const Bot* handle) {
	return bool_true;
}

static sc_boolean bot_check_main_region_on_main_idle_tr0_tr0(const Bot* handle) {
	return handle->internal.click_raised;
}

static sc_boolean bot_check_main_region_on_main_navigate_control__choice_0_tr1_tr1(const Bot* handle) {
	return handle->internal.instruction == handle->internal.instructionCount;
}

static sc_boolean bot_check_main_region_on_main_navigate_control__choice_0_tr0(const Bot* handle) {
	return bool_true;
}

static sc_boolean bot_check_main_region_on_main__choice_0_tr1_tr1(const Bot* handle) {
	return handle->internal.instructionCount > 0;
}

static sc_boolean bot_check_main_region_on_main__choice_0_tr0(const Bot* handle) {
	return bool_true;
}

static void bot_effect_main_region_usleep_tr0(Bot* handle) {
	bot_exseq_main_region_usleep(handle);
	bot_enseq_main_region_on_default(handle);
}

static void bot_effect_main_region_on_tr0(Bot* handle) {
	bot_exseq_main_region_on(handle);
	bot_enseq_main_region_usleep_default(handle);
}

static void bot_effect_main_region_on_main_programming_tr0(Bot* handle) {
	bot_exseq_main_region_on_main_programming(handle);
	bot_enseq_main_region_on_main_idle_default(handle);
}

static void bot_effect_main_region_on_main_navigate_control_load_instruction_tr0(Bot* handle) {
	bot_exseq_main_region_on_main_navigate_control_load_instruction(handle);
	bot_enseq_main_region_on_main_navigate_control_plan_move_default(handle);
}

static void bot_effect_main_region_on_main_navigate_control_plan_move_tr0(Bot* handle) {
	bot_exseq_main_region_on_main_navigate_control_plan_move(handle);
	bot_enseq_main_region_on_main_navigate_control_move_default(handle);
}

static void bot_effect_main_region_on_main_navigate_control_move_tr0(Bot* handle) {
	bot_exseq_main_region_on_main_navigate_control_move(handle);
	bot_enseq_main_region_on_main_navigate_control_evaluate_move_default(handle);
}

static void bot_effect_main_region_on_main_navigate_control_evaluate_move_tr0(Bot* handle) {
	bot_exseq_main_region_on_main_navigate_control_evaluate_move(handle);
	bot_react_main_region_on_main_navigate_control__choice_0(handle);
}

static void bot_effect_main_region_on_main_idle_tr0(Bot* handle) {
	bot_exseq_main_region_on_main_idle(handle);
	bot_enseq_main_region_on_main_navigate_default(handle);
}

static void bot_effect_main_region_on_main_navigate_control__choice_0_tr1(Bot* handle) {
	bot_exseq_main_region_on_main_navigate(handle);
	bot_enseq_main_region_on_main_idle_default(handle);
}

static void bot_effect_main_region_on_main_navigate_control__choice_0_tr0(Bot* handle) {
	bot_enseq_main_region_on_main_navigate_control_load_instruction_default(handle);
}

static void bot_effect_main_region_on_main__choice_0_tr1(Bot* handle) {
	bot_enseq_main_region_on_main_idle_default(handle);
}

static void bot_effect_main_region_on_main__choice_0_tr0(Bot* handle) {
	bot_enseq_main_region_on_main_programming_default(handle);
}

/* Entry action for state 'usleep'. */
static void bot_enact_main_region_usleep(Bot* handle) {
	/* Entry action for state 'usleep'. */
	handle->internal.instructionCount = 0;
}

/* Entry action for state 'navigate'. */
static void bot_enact_main_region_on_main_navigate(Bot* handle) {
	/* Entry action for state 'navigate'. */
	handle->internal.instruction = 0;
}

/* Entry action for state 'load_instruction'. */
static void bot_enact_main_region_on_main_navigate_control_load_instruction(Bot* handle) {
	/* Entry action for state 'load_instruction'. */
	handle->internal.instruction += 1;
}

/* 'default' enter sequence for state usleep */
static void bot_enseq_main_region_usleep_default(Bot* handle) {
	/* 'default' enter sequence for state usleep */
	bot_enact_main_region_usleep(handle);
	handle->stateConfVector[0] = Bot_main_region_usleep;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state on */
static void bot_enseq_main_region_on_default(Bot* handle) {
	/* 'default' enter sequence for state on */
	bot_enseq_main_region_on_main_default(handle);
}

/* 'default' enter sequence for state programming */
static void bot_enseq_main_region_on_main_programming_default(Bot* handle) {
	/* 'default' enter sequence for state programming */
	handle->stateConfVector[0] = Bot_main_region_on_main_programming;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state navigate */
static void bot_enseq_main_region_on_main_navigate_default(Bot* handle) {
	/* 'default' enter sequence for state navigate */
	bot_enact_main_region_on_main_navigate(handle);
	bot_enseq_main_region_on_main_navigate_control_default(handle);
}

/* 'default' enter sequence for state load_instruction */
static void bot_enseq_main_region_on_main_navigate_control_load_instruction_default(Bot* handle) {
	/* 'default' enter sequence for state load_instruction */
	bot_enact_main_region_on_main_navigate_control_load_instruction(handle);
	handle->stateConfVector[0] = Bot_main_region_on_main_navigate_control_load_instruction;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state plan_move */
static void bot_enseq_main_region_on_main_navigate_control_plan_move_default(Bot* handle) {
	/* 'default' enter sequence for state plan_move */
	handle->stateConfVector[0] = Bot_main_region_on_main_navigate_control_plan_move;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state move */
static void bot_enseq_main_region_on_main_navigate_control_move_default(Bot* handle) {
	/* 'default' enter sequence for state move */
	handle->stateConfVector[0] = Bot_main_region_on_main_navigate_control_move;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state evaluate_move */
static void bot_enseq_main_region_on_main_navigate_control_evaluate_move_default(Bot* handle) {
	/* 'default' enter sequence for state evaluate_move */
	handle->stateConfVector[0] = Bot_main_region_on_main_navigate_control_evaluate_move;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state idle */
static void bot_enseq_main_region_on_main_idle_default(Bot* handle) {
	/* 'default' enter sequence for state idle */
	handle->stateConfVector[0] = Bot_main_region_on_main_idle;
	handle->stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
static void bot_enseq_main_region_default(Bot* handle) {
	/* 'default' enter sequence for region main region */
	bot_react_main_region__entry_Default(handle);
}

/* 'default' enter sequence for region main */
static void bot_enseq_main_region_on_main_default(Bot* handle) {
	/* 'default' enter sequence for region main */
	bot_react_main_region_on_main__entry_Default(handle);
}

/* 'default' enter sequence for region control */
static void bot_enseq_main_region_on_main_navigate_control_default(Bot* handle) {
	/* 'default' enter sequence for region control */
	bot_react_main_region_on_main_navigate_control__entry_Default(handle);
}

/* Default exit sequence for state usleep */
static void bot_exseq_main_region_usleep(Bot* handle) {
	/* Default exit sequence for state usleep */
	handle->stateConfVector[0] = Bot_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state on */
static void bot_exseq_main_region_on(Bot* handle) {
	/* Default exit sequence for state on */
	bot_exseq_main_region_on_main(handle);
}

/* Default exit sequence for state programming */
static void bot_exseq_main_region_on_main_programming(Bot* handle) {
	/* Default exit sequence for state programming */
	handle->stateConfVector[0] = Bot_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state navigate */
static void bot_exseq_main_region_on_main_navigate(Bot* handle) {
	/* Default exit sequence for state navigate */
	bot_exseq_main_region_on_main_navigate_control(handle);
}

/* Default exit sequence for state load_instruction */
static void bot_exseq_main_region_on_main_navigate_control_load_instruction(Bot* handle) {
	/* Default exit sequence for state load_instruction */
	handle->stateConfVector[0] = Bot_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state plan_move */
static void bot_exseq_main_region_on_main_navigate_control_plan_move(Bot* handle) {
	/* Default exit sequence for state plan_move */
	handle->stateConfVector[0] = Bot_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state move */
static void bot_exseq_main_region_on_main_navigate_control_move(Bot* handle) {
	/* Default exit sequence for state move */
	handle->stateConfVector[0] = Bot_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state evaluate_move */
static void bot_exseq_main_region_on_main_navigate_control_evaluate_move(Bot* handle) {
	/* Default exit sequence for state evaluate_move */
	handle->stateConfVector[0] = Bot_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for state idle */
static void bot_exseq_main_region_on_main_idle(Bot* handle) {
	/* Default exit sequence for state idle */
	handle->stateConfVector[0] = Bot_last_state;
	handle->stateConfVectorPosition = 0;
}

/* Default exit sequence for region main region */
static void bot_exseq_main_region(Bot* handle) {
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of bot.main_region) at position 0... */
	switch(handle->stateConfVector[ 0 ]) {
		case Bot_main_region_usleep : {
			bot_exseq_main_region_usleep(handle);
			break;
		}
		case Bot_main_region_on_main_programming : {
			bot_exseq_main_region_on_main_programming(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_load_instruction : {
			bot_exseq_main_region_on_main_navigate_control_load_instruction(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_plan_move : {
			bot_exseq_main_region_on_main_navigate_control_plan_move(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_move : {
			bot_exseq_main_region_on_main_navigate_control_move(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_evaluate_move : {
			bot_exseq_main_region_on_main_navigate_control_evaluate_move(handle);
			break;
		}
		case Bot_main_region_on_main_idle : {
			bot_exseq_main_region_on_main_idle(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region main */
static void bot_exseq_main_region_on_main(Bot* handle) {
	/* Default exit sequence for region main */
	/* Handle exit of all possible states (of bot.main_region.on.main) at position 0... */
	switch(handle->stateConfVector[ 0 ]) {
		case Bot_main_region_on_main_programming : {
			bot_exseq_main_region_on_main_programming(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_load_instruction : {
			bot_exseq_main_region_on_main_navigate_control_load_instruction(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_plan_move : {
			bot_exseq_main_region_on_main_navigate_control_plan_move(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_move : {
			bot_exseq_main_region_on_main_navigate_control_move(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_evaluate_move : {
			bot_exseq_main_region_on_main_navigate_control_evaluate_move(handle);
			break;
		}
		case Bot_main_region_on_main_idle : {
			bot_exseq_main_region_on_main_idle(handle);
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region control */
static void bot_exseq_main_region_on_main_navigate_control(Bot* handle) {
	/* Default exit sequence for region control */
	/* Handle exit of all possible states (of bot.main_region.on.main.navigate.control) at position 0... */
	switch(handle->stateConfVector[ 0 ]) {
		case Bot_main_region_on_main_navigate_control_load_instruction : {
			bot_exseq_main_region_on_main_navigate_control_load_instruction(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_plan_move : {
			bot_exseq_main_region_on_main_navigate_control_plan_move(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_move : {
			bot_exseq_main_region_on_main_navigate_control_move(handle);
			break;
		}
		case Bot_main_region_on_main_navigate_control_evaluate_move : {
			bot_exseq_main_region_on_main_navigate_control_evaluate_move(handle);
			break;
		}
		default: break;
	}
}

/* The reactions of state usleep. */
static void bot_react_main_region_usleep(Bot* handle) {
	/* The reactions of state usleep. */
	if (bot_check_main_region_usleep_tr0_tr0(handle)) { 
		bot_effect_main_region_usleep_tr0(handle);
	} 
}

/* The reactions of state programming. */
static void bot_react_main_region_on_main_programming(Bot* handle) {
	/* The reactions of state programming. */
	if (bot_check_main_region_on_tr0_tr0(handle)) { 
		bot_effect_main_region_on_tr0(handle);
	}  else {
		if (bot_check_main_region_on_main_programming_tr0_tr0(handle)) { 
			bot_effect_main_region_on_main_programming_tr0(handle);
		} 
	}
}

/* The reactions of state load_instruction. */
static void bot_react_main_region_on_main_navigate_control_load_instruction(Bot* handle) {
	/* The reactions of state load_instruction. */
	if (bot_check_main_region_on_tr0_tr0(handle)) { 
		bot_effect_main_region_on_tr0(handle);
	}  else {
		bot_effect_main_region_on_main_navigate_control_load_instruction_tr0(handle);
	}
}

/* The reactions of state plan_move. */
static void bot_react_main_region_on_main_navigate_control_plan_move(Bot* handle) {
	/* The reactions of state plan_move. */
	if (bot_check_main_region_on_tr0_tr0(handle)) { 
		bot_effect_main_region_on_tr0(handle);
	}  else {
		bot_effect_main_region_on_main_navigate_control_plan_move_tr0(handle);
	}
}

/* The reactions of state move. */
static void bot_react_main_region_on_main_navigate_control_move(Bot* handle) {
	/* The reactions of state move. */
	if (bot_check_main_region_on_tr0_tr0(handle)) { 
		bot_effect_main_region_on_tr0(handle);
	}  else {
		if (bot_check_main_region_on_main_navigate_control_move_tr0_tr0(handle)) { 
			bot_effect_main_region_on_main_navigate_control_move_tr0(handle);
		} 
	}
}

/* The reactions of state evaluate_move. */
static void bot_react_main_region_on_main_navigate_control_evaluate_move(Bot* handle) {
	/* The reactions of state evaluate_move. */
	if (bot_check_main_region_on_tr0_tr0(handle)) { 
		bot_effect_main_region_on_tr0(handle);
	}  else {
		bot_effect_main_region_on_main_navigate_control_evaluate_move_tr0(handle);
	}
}

/* The reactions of state idle. */
static void bot_react_main_region_on_main_idle(Bot* handle) {
	/* The reactions of state idle. */
	if (bot_check_main_region_on_tr0_tr0(handle)) { 
		bot_effect_main_region_on_tr0(handle);
	}  else {
		if (bot_check_main_region_on_main_idle_tr0_tr0(handle)) { 
			bot_effect_main_region_on_main_idle_tr0(handle);
		} 
	}
}

/* The reactions of state null. */
static void bot_react_main_region_on_main_navigate_control__choice_0(Bot* handle) {
	/* The reactions of state null. */
	if (bot_check_main_region_on_main_navigate_control__choice_0_tr1_tr1(handle)) { 
		bot_effect_main_region_on_main_navigate_control__choice_0_tr1(handle);
	}  else {
		bot_effect_main_region_on_main_navigate_control__choice_0_tr0(handle);
	}
}

/* The reactions of state null. */
static void bot_react_main_region_on_main__choice_0(Bot* handle) {
	/* The reactions of state null. */
	if (bot_check_main_region_on_main__choice_0_tr1_tr1(handle)) { 
		bot_effect_main_region_on_main__choice_0_tr1(handle);
	}  else {
		bot_effect_main_region_on_main__choice_0_tr0(handle);
	}
}

/* Default react sequence for initial entry  */
static void bot_react_main_region__entry_Default(Bot* handle) {
	/* Default react sequence for initial entry  */
	bot_enseq_main_region_usleep_default(handle);
}

/* Default react sequence for initial entry  */
static void bot_react_main_region_on_main__entry_Default(Bot* handle) {
	/* Default react sequence for initial entry  */
	bot_react_main_region_on_main__choice_0(handle);
}

/* Default react sequence for initial entry  */
static void bot_react_main_region_on_main_navigate_control__entry_Default(Bot* handle) {
	/* Default react sequence for initial entry  */
	bot_enseq_main_region_on_main_navigate_control_load_instruction_default(handle);
}


