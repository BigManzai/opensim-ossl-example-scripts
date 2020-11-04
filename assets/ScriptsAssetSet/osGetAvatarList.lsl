/*
list osGetAvatarList()
C#: LSL_List osGetAvatarList()
Returns a strided list of the UUID, position, and name of each avatar in the region except the owner.

This function is similar to osGetAgents but returns enough info for a radar.
Threat Level 	None
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// Example of osGetAvatarList.
//
default
{
    touch_start(integer total_number)
    {
        list avatars = osGetAvatarList();
        if (avatars == [])
            llSay(0, "You must be the owner. There is nobody else here who could have touched me.");
        else
            llSay(0, "Avatars in this sim (without the owner): " + llList2CSV(avatars));
    }
}