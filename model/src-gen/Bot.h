/* Copyright (c) 2016 Scott A Dixon */

#ifndef BOT_H_
#define BOT_H_

#include "sc_types.h"

#ifdef __cplusplus
extern "C" { 
#endif 

/*! \file Header of the state machine 'bot'.
*/

/*! Enumeration of all states */ 
typedef enum {
	Bot_main_region_usleep,
	Bot_main_region_on,
	Bot_main_region_on_main_programming,
	Bot_main_region_on_main_navigate,
	Bot_main_region_on_main_navigate_control_load_instruction,
	Bot_main_region_on_main_navigate_control_plan_move,
	Bot_main_region_on_main_navigate_control_move,
	Bot_main_region_on_main_navigate_control_evaluate_move,
	Bot_main_region_on_main_idle,
	Bot_last_state
} BotStates;

/*! Type definition of the data structure for the BotInternal interface scope. */
typedef struct {
	sc_boolean click_raised;
	sc_boolean long_click_raised;
	sc_boolean move_done_raised;
	sc_integer instruction;
	sc_integer instructionCount;
} BotInternal;


/*! Define dimension of the state configuration vector for orthogonal states. */
#define BOT_MAX_ORTHOGONAL_STATES 1

/*! 
 * Type definition of the data structure for the Bot state machine.
 * This data structure has to be allocated by the client code. 
 */
typedef struct {
	BotStates stateConfVector[BOT_MAX_ORTHOGONAL_STATES];
	sc_ushort stateConfVectorPosition; 
	
	BotInternal internal;
} Bot;

/*! Initializes the Bot state machine data structures. Must be called before first usage.*/
extern void bot_init(Bot* handle);

/*! Activates the state machine */
extern void bot_enter(Bot* handle);

/*! Deactivates the state machine */
extern void bot_exit(Bot* handle);

/*! Performs a 'run to completion' step. */
extern void bot_runCycle(Bot* handle);



/*!
 * Checks if the statemachine is active (until 2.4.1 this method was used for states).
 * A statemachine is active if it was entered. It is inactive if it has not been entered at all or if it was exited.
 */
extern sc_boolean bot_isActive(const Bot* handle);

/*!
 * Checks if all active states are final. 
 * If there are no active states then the statemachine is considered as inactive and this method returns false.
 */
extern sc_boolean bot_isFinal(const Bot* handle);

/*! Checks if the specified state is active (until 2.4.1 the used method for states was calles isActive()). */
extern sc_boolean bot_isStateActive(const Bot* handle, BotStates state);

#ifdef __cplusplus
}
#endif 

#endif /* BOT_H_ */
