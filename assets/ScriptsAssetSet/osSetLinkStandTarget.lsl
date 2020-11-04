/*
osSetLinkStandTarget(integer linkNumber, vector feetTarget)
Sets a position, relative to prim local frame, where to place the feet of a standing avatar. The final position may not be exactly that.

Setting it to <0,0,0> disables it, default stand offset and login are used. This vector is stored on the prim, even if the script is removed

linkNumber: the link number of the prim, LINK_THIS or LINK_ROOT 

if link number is invalid it will silent fail
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osSetLinkStandTarget
 
vector target = <0.0, 0.3, 0.55>;
vector rotate = <0.0, 0.0, 90.0>;
vector stand_link_target = <1.0, -1.0, 1.0>;
integer link = 2;
key avatar;
 
debug(string name)
{
    stand_link_target = osGetLinkStandTarget(link);
    llOwnerSay("stand_link_target for avatar " + name + " is " + (string)stand_link_target);
}
 
default
{
    state_entry()
    {
        llUnSit(llAvatarOnSitTarget());
        llSetClickAction(CLICK_ACTION_SIT);
        llLinkSitTarget(link, target, llEuler2Rot((rotate * DEG_TO_RAD)));
        osSetLinkStandTarget(link, stand_link_target);
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