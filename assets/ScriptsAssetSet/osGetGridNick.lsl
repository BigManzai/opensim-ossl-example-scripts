/*
string osGetGridNick()
Returns the current grid's nickname as a string.
Threat Level 	Moderate
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
 // Example of osGetGridNick()
 // returns the value of gridnick = "hippogrid" in OpenSim.ini under [GridInfo] section
 //
  default
 {
 state_entry()
   {
   llSay(0, "Grid Nick Name = "+osGetGridNick());
   }
 }