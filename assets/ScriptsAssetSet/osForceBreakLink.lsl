/*
osForceBreakLink(integer linknumber)

    Identical to llBreakLink(integer linknumber) except that it doesn't require the link permission to be granted. Present in 0.8 and later. 

Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Notes
This function was added in 0.8-post-fixes 
*/

//
// osForceBreakLink Script Example
// Author: djphil
//
 
key target = "fbe8ad1b-b7bf-4919-b219-3ebf78e5f607";
integer parent = LINK_ROOT;
integer switch;
 
default
{
    state_entry()
    {
        if (osIsUUID(target))
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osForceBreakLink usage.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid uuid detected ...");
        }
    }
 
    touch_start(integer number)
    {
        if (switch = !switch)
        {
            osForceCreateLink(target, parent);
        }
 
        else
        {
            osForceBreakLink(2);
        }
    }
 
    changed(integer change)
    {
        if (change & CHANGED_LINK)
        {
            llSay(PUBLIC_CHANNEL, "The number of links have changed.");
        }
    }
}