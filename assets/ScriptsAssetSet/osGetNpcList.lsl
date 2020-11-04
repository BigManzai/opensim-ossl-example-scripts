/*
list osGetNPCList()
Returns a strided list of the UUID, position, and name of each NPC in the region. Only available after 0.9 Commit # e53f43, July 26,2017

This function is similar to OsGetAvatarList.
Threat Level 	None
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// Example of osGetNPCList.
//
default
{
    touch_start(integer total_number)
    {
        list npcs = osGetNPCList();
        if (npcs == [])
            llSay(0, "You must be the owner. There is nobody else here who could have touched me.");
        else
            llSay(0, "NPC's in this sim (without avatars): " + llList2CSV(npcs));
    }
}