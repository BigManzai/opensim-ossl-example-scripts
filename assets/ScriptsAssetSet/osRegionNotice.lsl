/*
osRegionNotice(string message)
osRegionNotice(key agentID, string message)
Sends a region notice to the entire current region.
Threat Level 	VeryHigh
Permissions 	ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osRegionNotice Script Example
//

/default
{
    state_entry()
    {
        llSay(0,"Touch to send a Notice to the region");
    }
    touch_start(integer total_num)
    {
        string message = "This is a test Notice to this region using osRegionNotice";
        osRegionNotice(message);
    }
}