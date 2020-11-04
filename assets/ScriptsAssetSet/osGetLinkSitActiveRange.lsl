/*
float osGetLinkSitActiveRange(integer linkNumber)
returns the sit active range of the selected prim, see osSetLinkSitActiveRange

linkNumber: the link number of the prim, LINK_THIS or LINK_ROOT
range > 0: if a avatar if far from the prim by more than that value, a sit request is silent ignored
range == 0: disables this limit. Region default is used. Current that is unlimited if a sit target is set or physics can sit the avatar, otherwise 10m
range < 0: sits are disabled. Requests are silently ignored 

if link number is invalid it returns -2147483648 (int min value)
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osGetLinkSitActiveRange
 
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