/*
osSetSitActiveRange(float range)
sets a limit on how far a avatar can be to have a sit request accepted, or disable sits.

    range > 0: sit request is silently ignored if a avatar is further than range from the prim.
    range == 0: disables this limit. Region default is used. Currently range is unlimited if a sit target is set or physics can sit the avatar, otherwise 10m.
    range < 0: sits are disabled. Requests are silently ignored. 

The range value is stored in the prim, even if the script is removed
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osSetSitActiveRange
 
vector target = <0.0, 0.3, 0.55>;
vector rotate = <0.0, 0.0, 90.0>;
float active_range = 5.0;
key avatar;
 
debug(string name)
{
    active_range = osGetSitActiveRange();
    llOwnerSay("active_range for avatar " + name + " is " + (string)active_range);
}
 
default
{
    state_entry()
    {
        llUnSit(llAvatarOnSitTarget());
        llSetClickAction(CLICK_ACTION_SIT);
        llSitTarget(target, llEuler2Rot((rotate * DEG_TO_RAD)));
        osSetSitActiveRange(active_range);
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