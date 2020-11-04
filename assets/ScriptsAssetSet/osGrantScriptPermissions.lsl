/*
osGrantScriptPermissions(key allowed_key, string function)
Dynamically allow ossl execution to owner/creator/group by function name.
Threat Level 	Severe (Pending Peer Review) is unknown threat level
Permissions 	Use of this function is always disabled by default
Delay 	0 seconds
Example(s)
*/

//
// osGrantScriptPermissions Script Example
//
 
list functions = ["osNpcCreate", "osNpcGetPos", "osNpcLoadAppearance", "osNpcGetRot", "osNpcMoveTo",
                "osNpcRemove", "osNpcSaveAppearance", "osNpcSay", "osNpcSetRot","osNpcSit", "osNpcStand",
                "osNpcPlayAnimation", "osNpcStopAnimation","osNpcMoveToTarget", "osNpcStopMoveToTarget",
                "osOwnerSaveAppearance", "osAgentSaveAppearance"];
 
default
{
    state_entry()
    {
        llSetColor(<1,0,0>,ALL_SIDES);
    }
 
    touch_start(integer det)
    {
        llSay(0, "Enable");
 
        osGrantScriptPermissions(llGetOwner(), functions);  
        state enabled;
    }
}
 
state enabled
{
    state_entry()
    {
        llSetColor(<0,1,0>,ALL_SIDES);
        llSay(0, "ossl functions enabled");
    }
 
    touch_start(integer det)
    {
        osRevokeScriptPermissions(llGetOwner(), functions);
        state default;
    }
}