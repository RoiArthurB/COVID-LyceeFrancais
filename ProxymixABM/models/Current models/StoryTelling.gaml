/**
* Name: StroyTelling
* Based on the internal empty template. 
* Author: arno
* Tags: 
*/



model StroyTelling

import 'CityScope_Coronaizer.gaml'

/* Insert your model definition here */

experiment Episode1 type: gui parent: Coronaizer{
	parameter 'fileName:' var: useCase category: 'file' <- "UDG/CUCS/Level 2";
	parameter 'useCaseType:' var: useCaseType category: 'file' <- "Classrooms and Offices";
	parameter 'ventilationType:' var: ventilationType category: 'file' <- "Natural";
	
	
	
	parameter "Density Scenario" var: density_scenario category:'Initialization'  <- "distance" among: ["data", "distance", "num_people_building", "num_people_room"];
	parameter 'distance people:' var: distance_people category:'Visualization' min:0.0 max:5.0#m <- 2.0#m;
	parameter "Mask Ratio:" category: "Policy" var: maskRatio min: 0.0 max: 1.0 step:0.1 <-0.0;
}

experiment Episode1Post type: gui parent: Coronaizer{
	parameter 'fileName:' var: useCase category: 'file' <- "UDG/CUCS/Level 2";
	parameter "Density Scenario" var: density_scenario category:'Initialization'  <- "distance" among: ["data", "distance", "num_people_building", "num_people_room"];
	parameter 'distance people:' var: distance_people category:'Visualization' min:0.0 max:5.0#m <- 2.0#m;
	parameter "Mask Ratio:" category: "Policy" var: maskRatio min: 0.0 max: 1.0 step:0.1 <-1.0;
}

experiment Episode2 type: gui parent: Coronaizer{
	parameter 'fileName:' var: useCase category: 'file' <- "UDG/CUT/lab";
	parameter "Density Scenario" var: density_scenario category:'Initialization'  <- "distance" among: ["data", "distance", "num_people_building", "num_people_room"];
	parameter 'distance people:' var: distance_people category:'Visualization' min:0.0 max:5.0#m <- 2.0#m;
}

experiment Episode3 type: gui parent: Coronaizer{
	parameter 'fileName:' var: useCase category: 'file' <- "UDG/CUAAD";
	parameter "Density Scenario" var: density_scenario category:'Initialization'  <- "distance" among: ["data", "distance", "num_people_building", "num_people_room"];
	parameter 'distance people:' var: distance_people category:'Visualization' min:0.0 max:5.0#m <- 2.0#m;	
}

experiment Episode4 type: gui parent: Coronaizer{
	parameter 'fileName:' var: useCase category: 'file' <- "UDG/CUCEA";
	parameter "Density Scenario" var: density_scenario category:'Initialization'  <- "distance" among: ["data", "distance", "num_people_building", "num_people_room"];
	parameter 'distance people:' var: distance_people category:'Visualization' min:0.0 max:5.0#m <- 2.0#m;
}

experiment Episode5 type: gui parent: Coronaizer{
	parameter 'fileName:' var: useCase category: 'file' <- "UDG/CUSUR";
	parameter "Density Scenario" var: density_scenario category:'Initialization'  <- "distance" among: ["data", "distance", "num_people_building", "num_people_room"];
	parameter 'distance people:' var: distance_people category:'Visualization' min:0.0 max:5.0#m <- 2.0#m;
}