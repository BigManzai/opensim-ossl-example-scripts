/*
osForceDropAttachment()
Drops an attachment like a user-triggered attachment drop without checking if PERMISSION_ATTACH has been granted.
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osForceDropAttachment Script Example (YEngine)
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osForceAttachToAvatar attach this object to your avatar's left hand.");
        llSay(PUBLIC_CHANNEL, "Touch it again to see osForceDropAttachment drop this object on the ground in front of your avatar.");
    }
 
    touch_start(integer number)
    {
        if (!llGetAttached())
        {
            osForceAttachToAvatar(ATTACH_LHAND);
        }
 
        else if (llGetAttached())
        {
            osForceDropAttachment();
        }
    }
 
    // The attach event is called on both attach and detach.
    attach(key id)
    {
        // Test if is a valid key('id' is only valid on attach)
        if (id)
        {
            llOwnerSay("The object is attached to " + llKey2Name(id));
        }
 
        else 
        {
            llOwnerSay("The object is not attached!");
        }
    }
 
    on_rez(integer param)
    {
        // Reset the script if it's not attached.
        if (!llGetAttached())        
        {
            llResetScript();
        }
    }
}