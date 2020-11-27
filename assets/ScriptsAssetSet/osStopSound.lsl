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
            llSay(PUBLIC_CHANNEL, "Touch to see osStopSound usage.");
        }
    }
 
    touch_start(integer number)
    {
        if (power = !power)
        {
            osLoopSound(LINK_THIS, soundName, 1.0);
        }
 
        else
        {
            osStopSound(LINK_THIS);
        }
    }
}