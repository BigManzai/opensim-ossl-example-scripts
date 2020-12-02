/*
osForceBreakAllLinks()

    Identical to llBreakAllLinks() except that it doesn't require the link permission to be granted. Present in 0.8 and later. 

Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Notes
This function was added in 0.8-post-fixes 
*/

//
// osForceBreakAllLinks Script Example
// Authior: djphil
//
 
key target_a = "fbe8ad1b-b7bf-4919-b219-3ebf78e5f607";
key target_b = "07377b80-0484-4818-9e11-3397e48a32f4";
integer parent = LINK_ROOT;
integer switch;
 
default
{
    state_entry()
    {
        if (osIsUUID(target_a) && osIsUUID(target_b))
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osForceBreakAllLinks usage.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid uuid(s) detected ...");
        }
    }
 
    touch_start(integer number)
    {
        if (switch = !switch)
        {
            osForceCreateLink(target_a, parent);
            osForceCreateLink(target_b, parent);
        }
 
        else
        {
            osForceBreakAllLinks();
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