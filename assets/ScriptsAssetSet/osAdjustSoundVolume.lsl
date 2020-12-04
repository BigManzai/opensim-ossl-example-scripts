/*
osAdjustSoundVolume(integer linknum, float volume)
Adjust the volume of attached sound for a prim in a linkset.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0.1 seconds
Example(s)
*/

//
// osAdjustSoundVolume Script Example
// Author: djphil
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
            llSay(PUBLIC_CHANNEL, "Touch to hear osAdjustSoundVolume running.");
        }
    }
 
    touch_start(integer number)
    {
        float volume = llFrand(1.0);
        osAdjustSoundVolume(1, volume);
        osPlaySound(1, sound, volume);
        llSay(PUBLIC_CHANNEL, "The volume of the primitive (link 1) has been adjusted to " + (string)volume);
    }
}

/* And with uuid:

//
// osAdjustSoundVolume Script Example
// Author: djphil
//
 
string sound = "ed124764-705d-d497-167a-182cd9fa2e6c";
 
default
{
    state_entry()
    {
        if (osIsUUID(sound))
        {
            llSay(PUBLIC_CHANNEL, "Touch to hear osAdjustSoundVolume running.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid uuid detected ...");
        }
    }
 
    touch_start(integer number)
    {
        float volume = llFrand(1.0);
        osAdjustSoundVolume(1, volume);
        osPlaySound(1, sound, volume);
        llSay(PUBLIC_CHANNEL, "The volume of the primitive (link 1) has been adjusted to " + (string)volume);
    }
}
*/