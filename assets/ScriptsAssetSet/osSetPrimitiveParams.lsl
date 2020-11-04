/*
osSetPrimitiveParams(key prim, list rules)

    Sets the parameters for the prim specified by prim_uuid according to rules.
    This function has the same behave as llSetPrimitiveParams except you can specify target prim anywhere in the scene.
    For general information about rules, see llSetPrimitiveParams in SecondLife Wiki.
    If there is no prim with id prim_uuid in the scene, or the owner of the target prim is different from the owner of the scripted prim, it will fail without error. 

Threat Level 	None
Permissions 	Use of this function is always disabled by default
Delay 	0 seconds
Example(s)
*/

// 
// Example osSetPrimitiveParams
//
// change target_uuid to any uuid of the prim you wish to change visibility by clicking.
string target_uuid = "69031c69-36a5-4031-bdc8-8ca8c37f8eda";
vector default_color;
 
default
{
    state_entry()
    {
        list prim_params = osGetPrimitiveParams(target_uuid, [PRIM_COLOR, ALL_SIDES]);
        default_color = llList2Vector(prim_params, 0);
    }     
 
    touch_start(integer number)
    {
        list rules = [PRIM_NAME, "HIDDEN", PRIM_COLOR, ALL_SIDES, default_color, 0.0];
        osSetPrimitiveParams(target_uuid, rules);
        state alpha;
    }
}
 
state alpha
{
    touch_start(integer number)
    {
        list rules = [PRIM_NAME, "VISIBLE", PRIM_COLOR, ALL_SIDES, default_color, 1.0];
        osSetPrimitiveParams(target_uuid, rules);
        state default;
    }
}