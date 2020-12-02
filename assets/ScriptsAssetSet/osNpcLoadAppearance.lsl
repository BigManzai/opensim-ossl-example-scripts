/*
osNpcLoadAppearance(key npc, string notecard)
Load appearance from a notecard. This notecard must contain appearance data created with one of the save appearance functions.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

// Load an appearance notecard on the collided npc with the same name like the npc.
// Attention: The unauthorized copying of someone else's property
// is a criminal offense in many countries!
 
default
{
    collision_start(integer number)
    {
        key collider = llDetectedKey(0);
 
        if (osIsNpc(collider)) // Check is the collider an npc
        {
            if (llGetInventoryType(collider) == INVENTORY_NOTECARD) // Is the notecard available
            {
                osNpcLoadAppearance(collider, llDetectedName(0)); // Load the new appearance
            }
        }
    }
}