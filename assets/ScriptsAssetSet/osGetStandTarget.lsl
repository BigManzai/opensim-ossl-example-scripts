/*
vector osGetStandTarget()
Returns the stand target set on the prim see osSetStandTarget.

If return is vector <0,0,0> the stand target is disabled. Default stand offset and login are used.
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osGetStandTarget
 
vector target = <0.0, 0.3, 0.55>;
vector rotate = <0.0, 0.0, 90.0>;
vector stand_target = <1.0, -1.0, 1.0>;
key avatar;
 
debug(string name)
{
    stand_target = osGetStandTarget();
    llOwnerSay("stand_target for avatar " + name + " is " + (string)stand_target);
}
 
default
{
    state_entry()
    {
        llUnSit(llAvatarOnSitTarget());
        llSetClickAction(CLICK_ACTION_SIT);
        llSitTarget(target, llEuler2Rot((rotate * DEG_TO_RAD)));
        osSetStandTarget(stand_target);
    }
 
    changed(integer change)
    {
        if (change & CHANGED_LINK)
        {
            key user = llAvatarOnSitTarget();
 
            if (user != NULL_KEY)
            {
                avatar = user;
                debug(osKey2Name(avatar));
            }
 
            else if (user == NULL_KEY)
            {
                debug(osKey2Name(avatar));
                avatar = NULL_KEY;
            }
 
            else
            {
                llResetScript();
            }
        }
    }
}