/*
string osGetGridName()
Returns the current grid's name as a string.
Threat Level 	Moderate
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
 // Example of osGetGridName()
 // returns the value of gridname = "Hippogrid" in OpenSim.ini under [GridInfo] section
 //
  default
 {
 state_entry()
   {
   llSay(0, "Grid Name = "+osGetGridName());
   }
 }