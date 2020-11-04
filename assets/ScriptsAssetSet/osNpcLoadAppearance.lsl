/*
osNpcLoadAppearance(key npc, string notecard)
Load appearance from a notecard. This notecard must contain appearance data created with one of the save appearance functions.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// Example of osNpcLoadAppearance.
// Load an appearance notecard on the collided npc with the same name like the npc.
 
default
{
    collision_start(integer num) //On Collision
    {
        if(osIsNpc(llDetectedKey(0))) //Check is the the agent an npc
        {
            if(llGetInventoryType(llDetectedName(0)) == INVENTORY_NOTECARD) //is the notecard available
            {
                osNpcLoadAppearance(llDetectedKey(0), llDetectedName(0)); //load the new appearance
            }
        }
    }
}