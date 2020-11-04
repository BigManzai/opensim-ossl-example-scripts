/*
integer osEjectFromGroup(key user)
Eject the given user from the group the object is set to.

The object owner must have the right to eject users from the group the object is set to. The group member who is ejected can be offline. The user gets an instant message, that he/she has been ejected from that group. The result is TRUE, if the user could be ejected, otherwise FALSE.
Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Notes
This function was added in 0.7.4-post-fixes 
*/

default
{
    state_entry()
    {
        llSay(0, "Script running");
    }
}