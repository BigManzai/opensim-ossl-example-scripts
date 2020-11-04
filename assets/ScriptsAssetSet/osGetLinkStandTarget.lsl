/*
vector osGetLinkStandTarget(integer linkNumber)
Returns the stand target set on the prim see osSetLinkStandTarget.

    linkNumber: the link number of the prim, LINK_THIS or LINK_ROOT 

If return is vector <0,0,0> the stand target is disabled. Default stand offset and login are used.

It will also return <0,0,0> if linkNumber is invalid.
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osGetLinkStandTarget
 
vector target = <0.0, 0.3, 0.55>;
vector rotate = <0.0, 0.0, 90.0>;
float active_link_range = 5.0;
integer link = 2;
key avatar;
 
debug(string name)
{
    active_link_range = osGetLinkSitActiveRange(link);
    llOwnerSay("active_link_range for avatar " + name + " is " + (string)active_link_range);
}
 
default
{
    state_entry()
    {
        llUnSit(llAvatarOnSitTarget());
        llSetClickAction(CLICK_ACTION_SIT);
        llLinkSitTarget(link, target, llEuler2Rot((rotate * DEG_TO_RAD)));
        osSetLinkSitActiveRange(link, active_link_range);
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