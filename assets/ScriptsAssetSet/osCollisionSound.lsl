/*
osCollisionSound(string impact_sound, float impact_volume)
Sets collision sound to impact_sound with specified volume.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osCollisionSound Script Example
//
 
default
{
    state_entry()
    {
        string impact_sound = llGetInventoryName(INVENTORY_SOUND, 0);
 
        if (impact_sound == "")
        {
            llSay(PUBLIC_CHANNEL, "Inventory sound missing ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Collide this object to hear osCollisionSound running.");
            osCollisionSound(impact_sound, 1.0);
        }
    }
}

/*And with uuid:

//
// osCollisionSound Script Example
//
 
// Can be sound's name in object's inventory or the sound uuid
string impact_sound = "ed124764-705d-d497-167a-182cd9fa2e6c";
 
default
{
    state_entry()
    {
        if (osIsUUID(impact_sound))
        {
            llSay(PUBLIC_CHANNEL, "Collide this object to hear osCollisionSound running.");
            osCollisionSound(impact_sound, 1.0);
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid uuid detected ...");
        }
    }
}
*/