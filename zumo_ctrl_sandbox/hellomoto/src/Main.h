
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
			main_region_running,
			main_region_running_inner_region_moving_10cm,
			main_region_running_inner_region_waiting_for_button,
			main_region_running_inner_region_waiting_for_finger,
			main_region_initializing,
			Main_last_state
		} MainStates;
		
		//! Inner class for robot interface scope.
		class SCI_Robot
		{
			
			public:
				/*! Raises the in event 'initialized' that is defined in the interface scope 'robot'. */
				void raise_initialized();
				
				/*! Raises the in event 'on_button_press' that is defined in the interface scope 'robot'. */
				void raise_on_button_press();
				
				
			private:
				friend class Main;
				sc_boolean initialized_raised;
				sc_boolean on_button_press_raised;
		};
				
				//! Inner class for robot interface scope operation callbacks.
				class SCI_Robot_OCB
				{
					public:
						virtual ~SCI_Robot_OCB() = 0;
						
						virtual void spew() = 0;
						
						virtual sc_real get_distance_mm() = 0;
						
						virtual void set_speed(sc_real speed) = 0;
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
				/*! Gets the value of the variable 'baseline' that is defined in the internal scope. */
				sc_real get_baseline();
				
				/*! Sets the value of the variable 'baseline' that is defined in the internal scope. */
				void set_baseline(sc_real value);
				
				
			private:
				friend class Main;
				sc_real baseline;
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
		
		sc_boolean check_main_region_running_lr0_lr0();
		sc_boolean check_main_region_running_inner_region_moving_10cm_tr0_tr0();
		sc_boolean check_main_region_running_inner_region_moving_10cm_tr1_tr1();
		sc_boolean check_main_region_running_inner_region_waiting_for_button_tr0_tr0();
		sc_boolean check_main_region_running_inner_region_waiting_for_finger_tr0_tr0();
		sc_boolean check_main_region_initializing_tr0_tr0();
		void effect_main_region_running_lr0_lr0();
		void effect_main_region_running_inner_region_moving_10cm_tr0();
		void effect_main_region_running_inner_region_moving_10cm_tr1();
		void effect_main_region_running_inner_region_waiting_for_button_tr0();
		void effect_main_region_running_inner_region_waiting_for_finger_tr0();
		void effect_main_region_initializing_tr0();
		void enact_main_region_running();
		void enact_main_region_running_inner_region_moving_10cm();
		void enact_main_region_running_inner_region_waiting_for_finger();
		void exact_main_region_running();
		void exact_main_region_running_inner_region_moving_10cm();
		void exact_main_region_running_inner_region_waiting_for_finger();
		void enseq_main_region_running_default();
		void enseq_main_region_running_inner_region_moving_10cm_default();
		void enseq_main_region_running_inner_region_waiting_for_button_default();
		void enseq_main_region_running_inner_region_waiting_for_finger_default();
		void enseq_main_region_initializing_default();
		void enseq_main_region_default();
		void enseq_main_region_running_inner_region_default();
		void exseq_main_region_running_inner_region_moving_10cm();
		void exseq_main_region_running_inner_region_waiting_for_button();
		void exseq_main_region_running_inner_region_waiting_for_finger();
		void exseq_main_region_initializing();
		void exseq_main_region();
		void exseq_main_region_running_inner_region();
		void react_main_region_running_inner_region_moving_10cm();
		void react_main_region_running_inner_region_waiting_for_button();
		void react_main_region_running_inner_region_waiting_for_finger();
		void react_main_region_initializing();
		void react_main_region__entry_Default();
		void react_main_region_running_inner_region__entry_Default();
		void clearInEvents();
		void clearOutEvents();
		
};
inline Main::SCI_Robot_OCB::~SCI_Robot_OCB() {}
#endif /* MAIN_H_ */
