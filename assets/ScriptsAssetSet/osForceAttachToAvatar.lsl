/*
osForceAttachToAvatar(integer attachmentPoint)
Works exactly like llAttachToAvatar() except that PERMISSION_ATTACH is not required.
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osForceAttachToAvatar Script Example (YEngine)
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osForceAttachToAvatar attach this object to your avatar's left hand.");
    }
 
    touch_start(integer number)
    {
        if (!llGetAttached())
        {
            osForceAttachToAvatar(ATTACH_LHAND);
        }
    }
 
    // The attach event is called on both attach and detach.
    attach(key id)
    {
        // Test if is a valid key ('id' is only valid on attach)
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