/*
osAdjustSoundVolume(integer linknum, float volume)
Adjust the volume of attached sound for a prim in a linkset.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0.1 seconds
Example(s)
*/

// Example use of osAdjustSoundVolume
 
integer which_prim = 2;
 
default
{
    state_entry()
    {
        llListen(10, "", llGetOwner(), "");
    }
 
    listen(integer channel, string name, key id, string msg)
    {
        float volume = (float)msg;
        osAdjustSoundVolume(which_prim, volume);
        llOwnerSay("Volume in prim " + (string)which_prim + " was set to " + (string)volume);
    }
}