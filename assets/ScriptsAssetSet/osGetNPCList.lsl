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
// osGetNPCList Script Exemple
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osGetNPCList usage.");
    }
 
    touch_start(integer number)
    {
        list npcs = osGetNPCList();
 
        if (npcs == [])
        {
            llSay(PUBLIC_CHANNEL, "There is no NPC's in this sim currently.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "NPC's in this sim (without avatars): " + llList2CSV(npcs));
        }
    }
}