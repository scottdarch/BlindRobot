
#ifndef MAIN_H_
#define MAIN_H_

#include "sc_types.h"
#include "StatemachineInterface.h"
#include "TimedStatemachineInterface.h"

/*! \file Header of the state machine 'main'.
*/

class Main : public TimedStatemachineInterface, public StatemachineInterface
{
	
	public:
		
		Main();
		
		~Main();
		
		/*! Enumeration of all states */ 
		typedef enum
		{
			main_region_waiting_for_button,
			main_region_clockwise,
			main_region_counter_clockwise,
			Main_last_state
		} MainStates;
		
		//! Inner class for robot interface scope.
		class SCI_Robot
		{
			
			public:
				/*! Raises the in event 'on_button_press' that is defined in the interface scope 'robot'. */
				void raise_on_button_press();
				
				
			private:
				friend class Main;
				sc_boolean on_button_press_raised;
		};
				
				//! Inner class for robot interface scope operation callbacks.
				class SCI_Robot_OCB
				{
					public:
						virtual ~SCI_Robot_OCB() = 0;
						
						virtual void start_rotating(sc_boolean ccw) = 0;
						
						virtual void stop() = 0;
				};
				
				/*! Set the working instance of the operation callback interface 'SCI_Robot_OCB'. */
				void setSCI_Robot_OCB(SCI_Robot_OCB* operationCallback);
		
		/*! Returns an instance of the interface class 'SCI_Robot'. */
		SCI_Robot* getSCI_Robot();
		
		
		
		void init();
		
		void enter();
		
		void exit();
		
		void runCycle();
		
		/*!
		* Checks if the state machine is active (until 2.4.1 this method was used for states).
		* A state machine is active if it has been entered. It is inactive if it has not been entered at all or if it has been exited.
		*/
		sc_boolean isActive();
		
		
		/*!
		* Checks if all active states are final. 
		* If there are no active states then the state machine is considered being inactive. In this case this method returns false.
		*/
		sc_boolean isFinal();
		
		void setTimer(TimerInterface* timer);
		
		TimerInterface* getTimer();
		
		void raiseTimeEvent(sc_eventid event);
		
		/*! Checks if the specified state is active (until 2.4.1 the used method for states was calles isActive()). */
		sc_boolean isStateActive(MainStates state);
	
	private:
	
		//! Inner class for internal interface scope.
		class InternalSCI
		{
			
			public:
				/*! Gets the value of the variable 'rotation' that is defined in the internal scope. */
				sc_integer get_rotation();
				
				/*! Sets the value of the variable 'rotation' that is defined in the internal scope. */
				void set_rotation(sc_integer value);
				
				
			private:
				friend class Main;
				sc_integer rotation;
		};
	
		//! the maximum number of orthogonal states defines the dimension of the state configuration vector.
		static const sc_integer maxOrthogonalStates = 1;
		
		//! number of time events used by the state machine.
		static const sc_integer timeEventsCount = 2;
		TimerInterface* timer;
		sc_boolean timeEvents[timeEventsCount];
		
		MainStates stateConfVector[maxOrthogonalStates];
		
		sc_ushort stateConfVectorPosition;
		
		SCI_Robot ifaceRobot;
		SCI_Robot_OCB* ifaceRobot_OCB;
		InternalSCI ifaceInternalSCI;
		
		// prototypes of all internal functions
		
		sc_boolean check_main_region_waiting_for_button_tr0_tr0();
		sc_boolean check_main_region_waiting_for_button_tr1_tr1();
		sc_boolean check_main_region_clockwise_tr0_tr0();
		sc_boolean check_main_region_counter_clockwise_tr0_tr0();
		void effect_main_region_waiting_for_button_tr0();
		void effect_main_region_waiting_for_button_tr1();
		void effect_main_region_clockwise_tr0();
		void effect_main_region_counter_clockwise_tr0();
		void enact_main_region_clockwise();
		void enact_main_region_counter_clockwise();
		void exact_main_region_clockwise();
		void exact_main_region_counter_clockwise();
		void enseq_main_region_waiting_for_button_default();
		void enseq_main_region_clockwise_default();
		void enseq_main_region_counter_clockwise_default();
		void enseq_main_region_default();
		void exseq_main_region_waiting_for_button();
		void exseq_main_region_clockwise();
		void exseq_main_region_counter_clockwise();
		void exseq_main_region();
		void react_main_region_waiting_for_button();
		void react_main_region_clockwise();
		void react_main_region_counter_clockwise();
		void react_main_region__entry_Default();
		void clearInEvents();
		void clearOutEvents();
		
};
inline Main::SCI_Robot_OCB::~SCI_Robot_OCB() {}
#endif /* MAIN_H_ */
