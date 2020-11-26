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

integer on = FALSE;
string soundname = "youresound"; //sound file name

default
{
    state_entry()
    {
        on = FALSE;
        soundname = llGetInventoryName(INVENTORY_SOUND, 0);
        }

    touch_start(integer total_number)
    {
        if(llDetectedKey(0) != llGetOwner())
        return;
        if(soundname != "")
        {
            if(on)
            osStopSound(0);
            else
            osLoopSound(0, soundname, 1);
            on = !on;
        }
    }
}