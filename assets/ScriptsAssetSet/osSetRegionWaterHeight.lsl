/*
osSetRegionWaterHeight(float height)
Sets the water height for the current region.
Threat Level 	High
Permissions 	ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s) 
*/

// Region Water Height utility
// I know, it's probably horribly inefficient and confusing, but it works.
// Arkaniad Exonar, '10
 
float g_WaterHeight; // <---- Storage Var
integer g_ListenChan = 0;
list g_ltmp; // <--------Temporary buffer
 
default
{
    state_entry()
    {
        llListen(g_ListenChan, "", llGetOwner(), ""); //Prepare listener
        llSay(0, "Ready for commands");
    }
    listen(integer channel, string name, key id, string message)
    {
        g_ltmp = llParseString2List(message, [" "], []); // Split the message into chunks
        if(llList2String(g_ltmp, 0) == "/waterheight") // Self explanatory
        {
            osSetRegionWaterHeight(llList2Float(g_ltmp, 1)); // Set the region water height to the specified value
            llSay(0, "Setting region water height to "+llList2String(g_ltmp, 1)+"m (In case anyone was wondering)");
            g_ltmp = []; // Flush buffers
        }
    }
}