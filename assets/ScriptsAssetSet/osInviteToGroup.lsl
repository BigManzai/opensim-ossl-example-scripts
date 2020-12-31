/*
integer osInviteToGroup(key user)
Invite the given user to the group the object is set to.

The object must have a group set and can not be group owned.
The object owner must have the right to invite new users to the group the object is set to.
The user with the given key has to be online in that region.
The user gets a normal group invitation, showing the owner of the object as sender. The invitation can be accepted or rejected and the user can open the corresponding group window.

Returns TRUE (1), if the invitation could be sent, otherwise FALSE (0).
Since version 0.9.2, it will return 2 if user is already member of the group.
Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osInviteToGroup Script Example
// Author: djphil
//
 
key userID = "<USER_UUID_TO_INVITE>";
 
default
{
    state_entry()
    {
        if (userID == "<USER_UUID_TO_INVITE>" || !osIsUUID(userID))
        {
            llOwnerSay("Please replace <USER_UUID_TO_EJECT> with a valid user uuid");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osInviteToGroup invite you to this object's group.");
        }
    }
 
    touch_start(integer number)
    {
        if (llDetectedKey(0) == llGetOwnerKey(llGetKey()))
        {
            integer result = osInviteToGroup(userID);
 
            if (result == 0) // FALSE
            {
                llOwnerSay("Invitation sent unsuccessfully.");
            }
 
            if (result == 1) // TRUE
            {
                llOwnerSay("Invitation sent successfully.");
            }
 
            if (result == 2)
            {
                llOwnerSay("This user is already a member of this object's group.");
            }
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Sorry, you are not the owner of this object.");
        }
    }
}