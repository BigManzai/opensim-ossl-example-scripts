/*
osStopSound(integer linknum)
Stop the sound playing in the specified prim of a linkset.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osStopSound Script Example
// Author: djphil
// Usage: Link 2 prims far from each other and place this script and sounds on root
//
 
string soundName_1;
string soundName_2;
integer power;
 
default
{
    state_entry()
    {
        // Get the first and the second inventory sound names
        soundName_1 = llGetInventoryName(INVENTORY_SOUND, 0);
        soundName_2 = llGetInventoryName(INVENTORY_SOUND, 1);
 
        if (soundName_1 == "" || soundName_2 == "")
        {
            llOwnerSay("Inventory sound(s) missing ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osStopSound usage.");
        }
    }
 
    touch_start(integer number)
    {
        if (power = !power)
        {
            osLoopSound(1, soundName_1, 1.0);
            osLoopSound(2, soundName_2, 1.0);
        }
 
        else
        {
            osStopSound(LINK_SET);
        }
    }
}