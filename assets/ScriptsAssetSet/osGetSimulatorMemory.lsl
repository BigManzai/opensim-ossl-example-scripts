/*
integer osGetSimulatorMemory();
Implemented December 12,2009 by Adam Frisby in GIT# 87e89efbf9727b294658f149c6494fd49608bc12 - Rev 11700
Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
Simple Script (displays only the integer such as 234652064) 
*/


// ----------------------------------------------------------------
// Example / Sample Script to show function use.
//
// Simple Unformatted Output
// 
integer TotMemUsed;
default
{
 state_entry()
 {
 TotMemUsed = osGetSimulatorMemory();
 llSetText( (string)TotMemUsed+" Memory by the OpenSimulator Instance", <0.0,1.0,0.0>, 1.0 );
 }
 touch(integer num)
 {
 TotMemUsed = osGetSimulatorMemory();
 llSetText( (string)TotMemUsed+" Memory by the OpenSimulator Instance", <0.0,1.0,0.0>, 1.0 );
 }
}