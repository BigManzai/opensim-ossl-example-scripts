/*
osLoopSound(integer linknum, string sound, float volume)
Play the specified sound at the specified volume and loop it indefinitely.

The sound parameter can be the UUID of a sound or the name of a sound that is in the inventory of the target prim.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)

osLoopSound(linknum, "c98100c4-6a2a-456c-a5ba-3cfdb5c14715", volume);
    osLoopSound(linknum, "Name of sound in this prim", volume);

Notes
This function was added in 0.9.0.1

Since 0.9.1 if target prim inventory does not contain the sound, 
the inventory of the prim containing the script calling this function is also checked 
*/

//
// osLoopSound Script Example
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
			osStopSound();
			else
			osLoopSound(soundname, 1);
			on = !on;
		}
	}
}