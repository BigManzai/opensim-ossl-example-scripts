/*
integer osGetSimulatorMemoryKB();
No descriptions provided
Threat Level 	Moderate
Permissions 	${OSSL}|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
Simple Script (displays only the integer such as 234652064) 
*/


// Simple Unformatted Output
 
integer TotMemUsed;
 
default
{
    state_entry()
    {
        TotMemUsed = osGetSimulatorMemoryKB();
        llSetText( (string)TotMemUsed+" Memory by the OpenSimulator Instance", <0.0, 1.0, 0.0>, 1.0 );
    }
 
    touch(integer number)
    {
        TotMemUsed = osGetSimulatorMemoryKB();
        llSetText( (string)TotMemUsed+" Memory by the OpenSimulator Instance", <0.0, 1.0, 0.0>, 1.0 );
    }
}