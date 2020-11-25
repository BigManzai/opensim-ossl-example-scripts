/*
integer osEjectFromGroup(key user)
Eject the given user from the group the object is set to.

The object owner must have the right to eject users from the group the object is set to. The group member who is ejected can be offline. The user gets an instant message, that he/she has been ejected from that group. The result is TRUE, if the user could be ejected, otherwise FALSE.
Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osEjectFromGroup Script Exemple
// Author: djphil
//
 
key userID = "<USER_UUID_TO_EJECT>";
 
default
{
    state_entry()
    {
        if (userID == "<USER_UUID_TO_EJECT>" || !osIsUUID(userID))
        {
            llOwnerSay("Please replace <USER_UUID_TO_EJECT> with a valid user uuid");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osEjectFromGroup eject the user from this object's group.");
        }
    }
 
    touch_start(integer number)
    {
        if (llDetectedKey(0) == llGetOwnerKey(llGetKey()))
        {
            integer result = osEjectFromGroup(userID);
 
            if (result == TRUE)
            {
                llOwnerSay("Eject " + osKey2Name(userID) + " from group successfully.");
            }
 
            if (result == FALSE)
            {
                llOwnerSay("Eject " + osKey2Name(userID) + " from group unsuccessfully.");
            }
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Sorry, you are not the owner of this object.");
        }
    }
}