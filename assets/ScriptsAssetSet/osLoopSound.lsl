/*
osLoopSound(integer linknum, string sound, float volume)
Play the specified sound at the specified volume and loop it indefinitely.

The sound parameter can be the UUID of a sound or the name of a sound that is in the inventory of the target prim.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osLoopSound Script Example
// Author: djphil
//
 
string soundName;
integer power;
 
default
{
    state_entry()
    {
        // Get the first inventory sound name
        soundName = llGetInventoryName(INVENTORY_SOUND, 0);
 
        if (soundName == "")
        {
            llOwnerSay("Inventory sound missing ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osLoopSound usage.");
        }
    }
 
    touch_start(integer number)
    {
        if (power = !power)
        {
            osLoopSound(1, soundName, 1.0);
        }
 
        else
        {
            osStopSound(1);
        }
    }
}

/* And with uuid:

//
// osLoopSound Script Example
// Author: djphil
//
 
string soundUuid = "5e191c7b-8996-9ced-a177-b2ac32bfea06";
integer power;
 
default
{
    state_entry()
    {
        if (osIsUUID(soundUuid))
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osLoopSound usage.");
        }
 
        else
        {
            llOwnerSay("Invalid UUID detected ...");
        }
    }
 
    touch_start(integer number)
    {
        if (power = !power)
        {
            osLoopSound(1, soundUuid, 1.0);
        }
 
        else
        {
            osStopSound(1);
        }
    }
}
*/