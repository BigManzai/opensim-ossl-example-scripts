/*
osTriggerSound(integer linknum, string sound, float volume)
Start playing the specified sound in the viewers of nearby avatars once at the specified volume.

The sound parameter can be the UUID of a sound or the name of a sound that is in the inventory of the target prim.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osTriggerSound Script Example
//
 
string sound;
 
default
{
    state_entry()
    {
        sound = llGetInventoryName(INVENTORY_SOUND, 0);
 
        if (sound == "")
        {
            llSay(PUBLIC_CHANNEL, "Inventory sound missing ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Touch to hear osTriggerSound running.");
        }
    }
 
    touch_start(integer number)
    {
        osTriggerSound(1, sound, 1.0);
    }
}

/* And with uuid:

//
// osTriggerSound Script Example
//
 
string sound = "f4a0660f-5446-dea2-80b7-6482a082803c";
 
default
{
    state_entry()
    {
        if (osIsUUID(sound))
        {
            llSay(PUBLIC_CHANNEL, "Touch to hear osTriggerSound running.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid uuid detected ...");
        }
    }
 
    touch_start(integer number)
    {
        osTriggerSound(1, sound, 1.0);
    }
}
*/