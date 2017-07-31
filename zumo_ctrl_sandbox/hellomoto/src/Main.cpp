
#include "Main.h"
#include <string.h>

/*! \file Implementation of the state machine 'main'
*/

Main::Main()
{
	
	ifaceRobot_OCB = null;
	
	stateConfVectorPosition = 0;
	
	timer = null;
}

Main::~Main()
{
}


void Main::init()
{
	for (int i = 0; i < maxOrthogonalStates; ++i)
		stateConfVector[i] = Main_last_state;
	
	stateConfVectorPosition = 0;

	clearInEvents();
	clearOutEvents();
	
	/* Default init sequence for statechart main */
	ifaceInternalSCI.baseline = 0.0;
}

void Main::enter()
{
	/* Default enter sequence for statechart main */
	enseq_main_region_default();
}

void Main::exit()
{
	/* Default exit sequence for statechart main */
	exseq_main_region();
}

sc_boolean Main::isActive()
{
	return stateConfVector[0] != Main_last_state;
}

/* 
 * Always returns 'false' since this state machine can never become final.
 */
sc_boolean Main::isFinal()
{
   return false;}

void Main::runCycle()
{
	
	clearOutEvents();
	
	for (stateConfVectorPosition = 0;
		stateConfVectorPosition < maxOrthogonalStates;
		stateConfVectorPosition++)
		{
			
		switch (stateConfVector[stateConfVectorPosition])
		{
		case main_region_running_inner_region_moving_10cm :
		{
			react_main_region_running_inner_region_moving_10cm();
			break;
		}
		case main_region_running_inner_region_waiting_for_button :
		{
			react_main_region_running_inner_region_waiting_for_button();
			break;
		}
		case main_region_running_inner_region_waiting_for_finger :
		{
			react_main_region_running_inner_region_waiting_for_finger();
			break;
		}
		case main_region_initializing :
		{
			react_main_region_initializing();
			break;
		}
		default:
			break;
		}
	}
	
	clearInEvents();
}

void Main::clearInEvents()
{
	ifaceRobot.initialized_raised = false;
	ifaceRobot.on_button_press_raised = false;
	timeEvents[0] = false; 
	timeEvents[1] = false; 
}

void Main::clearOutEvents()
{
}


void Main::setTimer(TimerInterface* timer)
{
	this->timer = timer;
}

TimerInterface* Main::getTimer()
{
	return timer;
}

void Main::raiseTimeEvent(sc_eventid evid)
{
	if ((evid >= (sc_eventid)timeEvents) && (evid < (sc_eventid)(&timeEvents[timeEventsCount])))
	{
		*(sc_boolean*)evid = true;
	}				
}

sc_boolean Main::isStateActive(MainStates state)
{
	switch (state)
	{
		case main_region_running : 
			return (sc_boolean) (stateConfVector[0] >= main_region_running
				&& stateConfVector[0] <= main_region_running_inner_region_waiting_for_finger);
		case main_region_running_inner_region_moving_10cm : 
			return (sc_boolean) (stateConfVector[0] == main_region_running_inner_region_moving_10cm
			);
		case main_region_running_inner_region_waiting_for_button : 
			return (sc_boolean) (stateConfVector[0] == main_region_running_inner_region_waiting_for_button
			);
		case main_region_running_inner_region_waiting_for_finger : 
			return (sc_boolean) (stateConfVector[0] == main_region_running_inner_region_waiting_for_finger
			);
		case main_region_initializing : 
			return (sc_boolean) (stateConfVector[0] == main_region_initializing
			);
		default: return false;
	}
}

Main::SCI_Robot* Main::getSCI_Robot()
{
	return &ifaceRobot;
}

void Main::SCI_Robot::raise_initialized()
{
	initialized_raised = true;
}

void Main::SCI_Robot::raise_on_button_press()
{
	on_button_press_raised = true;
}


void Main::setSCI_Robot_OCB(SCI_Robot_OCB* operationCallback)
{
	ifaceRobot_OCB = operationCallback;
}

sc_real Main::InternalSCI::get_baseline()
{
	return baseline;
}

void Main::InternalSCI::set_baseline(sc_real value)
{
	baseline = value;
}


// implementations of all internal functions

sc_boolean Main::check_main_region_running_lr0_lr0()
{
	return timeEvents[0];
}

sc_boolean Main::check_main_region_running_inner_region_moving_10cm_tr0_tr0()
{
	return ifaceRobot_OCB->get_distance_mm() - ifaceInternalSCI.baseline >= 100;
}

sc_boolean Main::check_main_region_running_inner_region_moving_10cm_tr1_tr1()
{
	return ifaceRobot.on_button_press_raised;
}

sc_boolean Main::check_main_region_running_inner_region_waiting_for_button_tr0_tr0()
{
	return ifaceRobot.on_button_press_raised;
}

sc_boolean Main::check_main_region_running_inner_region_waiting_for_finger_tr0_tr0()
{
	return timeEvents[1];
}

sc_boolean Main::check_main_region_initializing_tr0_tr0()
{
	return ifaceRobot.initialized_raised;
}

void Main::effect_main_region_running_lr0_lr0()
{
	ifaceRobot_OCB->spew();
}

void Main::effect_main_region_running_inner_region_moving_10cm_tr0()
{
	exseq_main_region_running_inner_region_moving_10cm();
	enseq_main_region_running_inner_region_waiting_for_button_default();
}

void Main::effect_main_region_running_inner_region_moving_10cm_tr1()
{
	exseq_main_region_running_inner_region_moving_10cm();
	enseq_main_region_running_inner_region_waiting_for_button_default();
}

void Main::effect_main_region_running_inner_region_waiting_for_button_tr0()
{
	exseq_main_region_running_inner_region_waiting_for_button();
	enseq_main_region_running_inner_region_waiting_for_finger_default();
}

void Main::effect_main_region_running_inner_region_waiting_for_finger_tr0()
{
	exseq_main_region_running_inner_region_waiting_for_finger();
	enseq_main_region_running_inner_region_moving_10cm_default();
}

void Main::effect_main_region_initializing_tr0()
{
	exseq_main_region_initializing();
	enseq_main_region_running_default();
}

/* Entry action for state 'running'. */
void Main::enact_main_region_running()
{
	/* Entry action for state 'running'. */
	timer->setTimer(this, (sc_eventid)(&timeEvents[0]), 1 * 1000, true);
}

/* Entry action for state 'moving 10cm'. */
void Main::enact_main_region_running_inner_region_moving_10cm()
{
	/* Entry action for state 'moving 10cm'. */
	ifaceInternalSCI.baseline = ifaceRobot_OCB->get_distance_mm();
	ifaceRobot_OCB->set_speed(0.5);
}

/* Entry action for state 'waiting for finger'. */
void Main::enact_main_region_running_inner_region_waiting_for_finger()
{
	/* Entry action for state 'waiting for finger'. */
	timer->setTimer(this, (sc_eventid)(&timeEvents[1]), 500, false);
}

/* Exit action for state 'running'. */
void Main::exact_main_region_running()
{
	/* Exit action for state 'running'. */
	timer->unsetTimer(this, (sc_eventid)(&timeEvents[0]));
}

/* Exit action for state 'moving 10cm'. */
void Main::exact_main_region_running_inner_region_moving_10cm()
{
	/* Exit action for state 'moving 10cm'. */
	ifaceRobot_OCB->set_speed(0.0);
}

/* Exit action for state 'waiting for finger'. */
void Main::exact_main_region_running_inner_region_waiting_for_finger()
{
	/* Exit action for state 'waiting for finger'. */
	timer->unsetTimer(this, (sc_eventid)(&timeEvents[1]));
}

/* 'default' enter sequence for state running */
void Main::enseq_main_region_running_default()
{
	/* 'default' enter sequence for state running */
	enact_main_region_running();
	enseq_main_region_running_inner_region_default();
}

/* 'default' enter sequence for state moving 10cm */
void Main::enseq_main_region_running_inner_region_moving_10cm_default()
{
	/* 'default' enter sequence for state moving 10cm */
	enact_main_region_running_inner_region_moving_10cm();
	stateConfVector[0] = main_region_running_inner_region_moving_10cm;
	stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state waiting for button */
void Main::enseq_main_region_running_inner_region_waiting_for_button_default()
{
	/* 'default' enter sequence for state waiting for button */
	stateConfVector[0] = main_region_running_inner_region_waiting_for_button;
	stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state waiting for finger */
void Main::enseq_main_region_running_inner_region_waiting_for_finger_default()
{
	/* 'default' enter sequence for state waiting for finger */
	enact_main_region_running_inner_region_waiting_for_finger();
	stateConfVector[0] = main_region_running_inner_region_waiting_for_finger;
	stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state initializing */
void Main::enseq_main_region_initializing_default()
{
	/* 'default' enter sequence for state initializing */
	stateConfVector[0] = main_region_initializing;
	stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
void Main::enseq_main_region_default()
{
	/* 'default' enter sequence for region main region */
	react_main_region__entry_Default();
}

/* 'default' enter sequence for region inner region */
void Main::enseq_main_region_running_inner_region_default()
{
	/* 'default' enter sequence for region inner region */
	react_main_region_running_inner_region__entry_Default();
}

/* Default exit sequence for state moving 10cm */
void Main::exseq_main_region_running_inner_region_moving_10cm()
{
	/* Default exit sequence for state moving 10cm */
	stateConfVector[0] = Main_last_state;
	stateConfVectorPosition = 0;
	exact_main_region_running_inner_region_moving_10cm();
}

/* Default exit sequence for state waiting for button */
void Main::exseq_main_region_running_inner_region_waiting_for_button()
{
	/* Default exit sequence for state waiting for button */
	stateConfVector[0] = Main_last_state;
	stateConfVectorPosition = 0;
}

/* Default exit sequence for state waiting for finger */
void Main::exseq_main_region_running_inner_region_waiting_for_finger()
{
	/* Default exit sequence for state waiting for finger */
	stateConfVector[0] = Main_last_state;
	stateConfVectorPosition = 0;
	exact_main_region_running_inner_region_waiting_for_finger();
}

/* Default exit sequence for state initializing */
void Main::exseq_main_region_initializing()
{
	/* Default exit sequence for state initializing */
	stateConfVector[0] = Main_last_state;
	stateConfVectorPosition = 0;
}

/* Default exit sequence for region main region */
void Main::exseq_main_region()
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of main.main_region) at position 0... */
	switch(stateConfVector[ 0 ])
	{
		case main_region_running_inner_region_moving_10cm :
		{
			exseq_main_region_running_inner_region_moving_10cm();
			exact_main_region_running();
			break;
		}
		case main_region_running_inner_region_waiting_for_button :
		{
			exseq_main_region_running_inner_region_waiting_for_button();
			exact_main_region_running();
			break;
		}
		case main_region_running_inner_region_waiting_for_finger :
		{
			exseq_main_region_running_inner_region_waiting_for_finger();
			exact_main_region_running();
			break;
		}
		case main_region_initializing :
		{
			exseq_main_region_initializing();
			break;
		}
		default: break;
	}
}

/* Default exit sequence for region inner region */
void Main::exseq_main_region_running_inner_region()
{
	/* Default exit sequence for region inner region */
	/* Handle exit of all possible states (of main.main_region.running.inner_region) at position 0... */
	switch(stateConfVector[ 0 ])
	{
		case main_region_running_inner_region_moving_10cm :
		{
			exseq_main_region_running_inner_region_moving_10cm();
			break;
		}
		case main_region_running_inner_region_waiting_for_button :
		{
			exseq_main_region_running_inner_region_waiting_for_button();
			break;
		}
		case main_region_running_inner_region_waiting_for_finger :
		{
			exseq_main_region_running_inner_region_waiting_for_finger();
			break;
		}
		default: break;
	}
}

/* The reactions of state moving 10cm. */
void Main::react_main_region_running_inner_region_moving_10cm()
{
	/* The reactions of state moving 10cm. */
	if (check_main_region_running_lr0_lr0())
	{ 
		effect_main_region_running_lr0_lr0();
	} 
	if (check_main_region_running_inner_region_moving_10cm_tr0_tr0())
	{ 
		effect_main_region_running_inner_region_moving_10cm_tr0();
	}  else
	{
		if (check_main_region_running_inner_region_moving_10cm_tr1_tr1())
		{ 
			effect_main_region_running_inner_region_moving_10cm_tr1();
		} 
	}
}

/* The reactions of state waiting for button. */
void Main::react_main_region_running_inner_region_waiting_for_button()
{
	/* The reactions of state waiting for button. */
	if (check_main_region_running_lr0_lr0())
	{ 
		effect_main_region_running_lr0_lr0();
	} 
	if (check_main_region_running_inner_region_waiting_for_button_tr0_tr0())
	{ 
		effect_main_region_running_inner_region_waiting_for_button_tr0();
	} 
}

/* The reactions of state waiting for finger. */
void Main::react_main_region_running_inner_region_waiting_for_finger()
{
	/* The reactions of state waiting for finger. */
	if (check_main_region_running_lr0_lr0())
	{ 
		effect_main_region_running_lr0_lr0();
	} 
	if (check_main_region_running_inner_region_waiting_for_finger_tr0_tr0())
	{ 
		effect_main_region_running_inner_region_waiting_for_finger_tr0();
	} 
}

/* The reactions of state initializing. */
void Main::react_main_region_initializing()
{
	/* The reactions of state initializing. */
	if (check_main_region_initializing_tr0_tr0())
	{ 
		effect_main_region_initializing_tr0();
	} 
}

/* Default react sequence for initial entry  */
void Main::react_main_region__entry_Default()
{
	/* Default react sequence for initial entry  */
	enseq_main_region_initializing_default();
}

/* Default react sequence for initial entry  */
void Main::react_main_region_running_inner_region__entry_Default()
{
	/* Default react sequence for initial entry  */
	enseq_main_region_running_inner_region_waiting_for_button_default();
}


