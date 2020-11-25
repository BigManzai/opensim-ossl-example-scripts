/*
osForceDetachFromAvatar()
Works exactly like llDetachFromAvatar() except that PERMISSION_ATTACH is not required.
Threat Level 	High
Permissions 	Use of this function is always disabled by default
Delay 	0 seconds
Example(s)
*/

//
// osForceDetachFromAvatar Script Example (YEngine)
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osForceAttachToAvatar attach this object to your avatar's left hand.");
        llSay(PUBLIC_CHANNEL, "Touch it again to see osForceDetachFromAvatar detach this object from your avatar.");
    }
 
    touch_start(integer number)
    {
        if (!llGetAttached())
        {
            osForceAttachToAvatar(ATTACH_LHAND);
        }
 
        else if (llGetAttached())
        {
            osForceDetachFromAvatar();
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