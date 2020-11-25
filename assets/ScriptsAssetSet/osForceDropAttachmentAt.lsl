/*
osForceDropAttachmentAt(vector pos, rotation rot)
Drops an attachment at position pos with rotation rot without checking if PERMISSION_ATTACH has been granted.
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osForceDropAttachmentAt Script Example (YEngine)
// Author: djphil
//
 
vector pos;
rotation rot;
 
default
{
    state_entry()
    {
        pos = llGetPos();
        rot = llGetRot();
 
        llSay(PUBLIC_CHANNEL, "Touch to see osForceAttachToAvatar attach this object to your avatar's left hand.");
        llSay(PUBLIC_CHANNEL, "Touch it again to see osForceDropAttachmentAt drop this object to its original position and rotation.");
        llSay(PUBLIC_CHANNEL, "The posistion is " + (string)pos + " and the rotation is " + (string)rot);
    }
 
    touch_start(integer number)
    {
        if (!llGetAttached())
        {
            osForceAttachToAvatar(ATTACH_LHAND);
        }
 
        else if (llGetAttached())
        {
            osForceDropAttachmentAt(pos, rot);
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