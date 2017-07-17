
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
	ifaceInternalSCI.rotation = 0;
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
		case main_region_waiting_for_button :
		{
			react_main_region_waiting_for_button();
			break;
		}
		case main_region_clockwise :
		{
			react_main_region_clockwise();
			break;
		}
		case main_region_counter_clockwise :
		{
			react_main_region_counter_clockwise();
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
		case main_region_waiting_for_button : 
			return (sc_boolean) (stateConfVector[0] == main_region_waiting_for_button
			);
		case main_region_clockwise : 
			return (sc_boolean) (stateConfVector[0] == main_region_clockwise
			);
		case main_region_counter_clockwise : 
			return (sc_boolean) (stateConfVector[0] == main_region_counter_clockwise
			);
		default: return false;
	}
}

Main::SCI_Robot* Main::getSCI_Robot()
{
	return &ifaceRobot;
}

void Main::SCI_Robot::raise_on_button_press()
{
	on_button_press_raised = true;
}


void Main::setSCI_Robot_OCB(SCI_Robot_OCB* operationCallback)
{
	ifaceRobot_OCB = operationCallback;
}

sc_integer Main::InternalSCI::get_rotation()
{
	return rotation;
}

void Main::InternalSCI::set_rotation(sc_integer value)
{
	rotation = value;
}


// implementations of all internal functions

sc_boolean Main::check_main_region_waiting_for_button_tr0_tr0()
{
	return (ifaceRobot.on_button_press_raised) && (ifaceInternalSCI.rotation == 0);
}

sc_boolean Main::check_main_region_waiting_for_button_tr1_tr1()
{
	return (ifaceRobot.on_button_press_raised) && (ifaceInternalSCI.rotation == 1);
}

sc_boolean Main::check_main_region_clockwise_tr0_tr0()
{
	return timeEvents[0];
}

sc_boolean Main::check_main_region_counter_clockwise_tr0_tr0()
{
	return timeEvents[1];
}

void Main::effect_main_region_waiting_for_button_tr0()
{
	exseq_main_region_waiting_for_button();
	enseq_main_region_clockwise_default();
}

void Main::effect_main_region_waiting_for_button_tr1()
{
	exseq_main_region_waiting_for_button();
	enseq_main_region_counter_clockwise_default();
}

void Main::effect_main_region_clockwise_tr0()
{
	exseq_main_region_clockwise();
	enseq_main_region_waiting_for_button_default();
}

void Main::effect_main_region_counter_clockwise_tr0()
{
	exseq_main_region_counter_clockwise();
	enseq_main_region_waiting_for_button_default();
}

/* Entry action for state 'clockwise'. */
void Main::enact_main_region_clockwise()
{
	/* Entry action for state 'clockwise'. */
	timer->setTimer(this, (sc_eventid)(&timeEvents[0]), 1 * 1000, false);
	ifaceRobot_OCB->start_rotating(false);
}

/* Entry action for state 'counter clockwise'. */
void Main::enact_main_region_counter_clockwise()
{
	/* Entry action for state 'counter clockwise'. */
	timer->setTimer(this, (sc_eventid)(&timeEvents[1]), 1 * 1000, false);
	ifaceRobot_OCB->start_rotating(true);
}

/* Exit action for state 'clockwise'. */
void Main::exact_main_region_clockwise()
{
	/* Exit action for state 'clockwise'. */
	timer->unsetTimer(this, (sc_eventid)(&timeEvents[0]));
	ifaceInternalSCI.rotation = 1;
	ifaceRobot_OCB->stop();
}

/* Exit action for state 'counter clockwise'. */
void Main::exact_main_region_counter_clockwise()
{
	/* Exit action for state 'counter clockwise'. */
	timer->unsetTimer(this, (sc_eventid)(&timeEvents[1]));
	ifaceInternalSCI.rotation = 0;
	ifaceRobot_OCB->stop();
}

/* 'default' enter sequence for state waiting for button */
void Main::enseq_main_region_waiting_for_button_default()
{
	/* 'default' enter sequence for state waiting for button */
	stateConfVector[0] = main_region_waiting_for_button;
	stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state clockwise */
void Main::enseq_main_region_clockwise_default()
{
	/* 'default' enter sequence for state clockwise */
	enact_main_region_clockwise();
	stateConfVector[0] = main_region_clockwise;
	stateConfVectorPosition = 0;
}

/* 'default' enter sequence for state counter clockwise */
void Main::enseq_main_region_counter_clockwise_default()
{
	/* 'default' enter sequence for state counter clockwise */
	enact_main_region_counter_clockwise();
	stateConfVector[0] = main_region_counter_clockwise;
	stateConfVectorPosition = 0;
}

/* 'default' enter sequence for region main region */
void Main::enseq_main_region_default()
{
	/* 'default' enter sequence for region main region */
	react_main_region__entry_Default();
}

/* Default exit sequence for state waiting for button */
void Main::exseq_main_region_waiting_for_button()
{
	/* Default exit sequence for state waiting for button */
	stateConfVector[0] = Main_last_state;
	stateConfVectorPosition = 0;
}

/* Default exit sequence for state clockwise */
void Main::exseq_main_region_clockwise()
{
	/* Default exit sequence for state clockwise */
	stateConfVector[0] = Main_last_state;
	stateConfVectorPosition = 0;
	exact_main_region_clockwise();
}

/* Default exit sequence for state counter clockwise */
void Main::exseq_main_region_counter_clockwise()
{
	/* Default exit sequence for state counter clockwise */
	stateConfVector[0] = Main_last_state;
	stateConfVectorPosition = 0;
	exact_main_region_counter_clockwise();
}

/* Default exit sequence for region main region */
void Main::exseq_main_region()
{
	/* Default exit sequence for region main region */
	/* Handle exit of all possible states (of main.main_region) at position 0... */
	switch(stateConfVector[ 0 ])
	{
		case main_region_waiting_for_button :
		{
			exseq_main_region_waiting_for_button();
			break;
		}
		case main_region_clockwise :
		{
			exseq_main_region_clockwise();
			break;
		}
		case main_region_counter_clockwise :
		{
			exseq_main_region_counter_clockwise();
			break;
		}
		default: break;
	}
}

/* The reactions of state waiting for button. */
void Main::react_main_region_waiting_for_button()
{
	/* The reactions of state waiting for button. */
	if (check_main_region_waiting_for_button_tr0_tr0())
	{ 
		effect_main_region_waiting_for_button_tr0();
	}  else
	{
		if (check_main_region_waiting_for_button_tr1_tr1())
		{ 
			effect_main_region_waiting_for_button_tr1();
		} 
	}
}

/* The reactions of state clockwise. */
void Main::react_main_region_clockwise()
{
	/* The reactions of state clockwise. */
	if (check_main_region_clockwise_tr0_tr0())
	{ 
		effect_main_region_clockwise_tr0();
	} 
}

/* The reactions of state counter clockwise. */
void Main::react_main_region_counter_clockwise()
{
	/* The reactions of state counter clockwise. */
	if (check_main_region_counter_clockwise_tr0_tr0())
	{ 
		effect_main_region_counter_clockwise_tr0();
	} 
}

/* Default react sequence for initial entry  */
void Main::react_main_region__entry_Default()
{
	/* Default react sequence for initial entry  */
	enseq_main_region_waiting_for_button_default();
}


