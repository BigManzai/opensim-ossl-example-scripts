/*
integer osRegionRestart(float seconds)

integer osRegionRestart(float seconds, string message)
Restarts a region after a specified timeout. Only estate managers and administrators can successfully execute this function.

The string in the second version of this function will be used in the warning messages sent to all users in-the region about the region restart instead of the default warning message.
Threat Level 	High
Permissions 	ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// empty Script Example
//

key owner;
integer time = 120; // Delay of restart in seconds
default
{
    state_entry()
    {
        llSetText("Region Restart\nosRegionRestart", <1.0,1.0,1.0>,1.0);
 
    }
    touch (integer total_number)
    {
        owner = llDetectedOwner(0);
        key toucher = llDetectedKey(0);
        if (toucher == owner)
        {
            osRegionRestart(time);
            string name = llKey2Name(toucher);
            llSay (0,"Region Restart requested by " + name + " the sim will restart in " + ((string)time) + " seconds");
 
        }
        else
        {
             llSay(0,"You are not the owner");
        }
    }
}