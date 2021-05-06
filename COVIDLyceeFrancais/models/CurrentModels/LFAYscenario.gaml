/**
* Name: StroyTelling
* Based on the internal empty template. 
* Author: arno
* Tags: 
*/



model StoryTelling
 
import 'CityScope_Coronaizer.gaml'

/* Insert your model definition here */

experiment Episode1 type: gui parent: Coronaizer{
	string usecase<-"LFAY";// 1."UDG/CUCS/Level 2" 2.!!!!DOESN'TWORK"UDG/CUT/lab" 3."UDG/CUAAD" 4. "UDG/CUCEA" 5."UDG/CUSUR"
	string scenario<-"school day";
	float timespent<-2.0#h;
	parameter 'fileName:' var: useCase category: 'Initialization' <- usecase;
	
	action _init_
	{   
		create simulation with: [title::"Mask", proba_goto_common_area::0.0, num_people_per_room:: 20, maskRatio::1.0,density_scenario::"num_people_room",distance_people::2.0#m, ventilationType::"Natural",
		useCase::usecase,agenda_scenario::scenario,timeSpent::timespent, use_dxf::false, validator:: false];
	}
}
