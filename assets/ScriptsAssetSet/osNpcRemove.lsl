/*
osNpcRemove(key npc)

    Removes the NPC specified by key npc. 
*/

//
// osNpcRemove Script Exemple
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcRemove usage.");
    }
 
    touch_start(integer number)
    {
        list npcs = llList2ListStrided(osGetNPCList(), 0, -1, 3);
 
        if (npcs == [])
        {
            llSay(PUBLIC_CHANNEL, "There is no NPC's in this sim currently.");
        }
 
        else
        {
            integer length = llGetListLength(npcs);
            integer i;
 
            for (i = 0; i < length; i++)
            {
                key npc = llList2Key(npcs, i);
                llSay(PUBLIC_CHANNEL, "Remove NPC: " + npc + " (" + llKey2Name(npc) + ").");
                osNpcSay(npc, "Goodbye!");
                osNpcRemove(npc);
            }
        }
    }
}