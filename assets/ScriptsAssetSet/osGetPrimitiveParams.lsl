/*
list osGetPrimitiveParams(key primId, list rules)

    Gets the parameters for the prim specified by primId according to rules.
    This function has the same behave as llGetPrimitiveParams except you can specify target prim anywhere in the scene.
    For general information about rules, see llGetPrimitiveParams in SecondLife Wiki.
    If there is prim with id primId in the scene, or the owner of the target prim is different from the owner of the scripted prim, it will fail without error. 

Threat Level 	None
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osGetPrimitiveParams Script Example
//
 
// Change target_uuid to any uuid of the prim you wish to get params.
string target_uuid = "44d375e6-c42b-49ad-b01d-663309350511";
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osGetPrimitiveParams usage.");
    }
 
    touch_start(integer number) 
    {
        list buffer = osGetPrimitiveParams(target_uuid, [PRIM_NAME, PRIM_SIZE, PRIM_POSITION, PRIM_ROTATION]);
 
        llSay(PUBLIC_CHANNEL, "[PRIM_NAME] " + llList2String(buffer, 0));
        llSay(PUBLIC_CHANNEL, "[PRIM_SIZE] " + llList2String(buffer, 1));
        llSay(PUBLIC_CHANNEL, "[PRIM_POSITION] " + llList2String(buffer, 2));
        llSay(PUBLIC_CHANNEL, "[PRIM_ROTATION] " + llList2String(buffer, 3));
    }
}