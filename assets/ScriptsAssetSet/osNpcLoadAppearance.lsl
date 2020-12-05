/*
osNpcLoadAppearance(key npc, string notecard)
Load appearance from a notecard. This notecard must contain appearance data created with one of the save appearance functions.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcLoadAppearance Script Exemple
// Author: djphil
//
 
integer total;
 
default
{
    state_entry()
    {
        total = llGetInventoryNumber(INVENTORY_NOTECARD);
 
        if (total < 1)
        {
            llSay(PUBLIC_CHANNEL, "The inventory of this primitive must contain at least one appearance notecard for npc.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Collide a NPC with this primitive to see osNpcLoadAppearance usage.");
        }
    }
 
    collision_start(integer number)
    {
        key collider = llDetectedKey(0);
 
        if (osIsNpc(collider))
        {
            integer random = llFloor(llFrand((float)total));
            string notecard = llGetInventoryName(INVENTORY_ALL, random);
            osNpcLoadAppearance(collider, notecard);
            osNpcSay(collider, "Wow cool, i have a new appearance now!");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Only NPC's can collide with me and load a new appearance ...");
        }
    }
}