/*
osPreloadSound(integer linknum, string sound)
Preload the specified sound in viewers of nearby avatars.

The sound parameter can be the UUID of a sound or the name of a sound that is in the inventory of the target prim.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	1 seconds
Example(s)

osPreloadSound(linknum, "c98100c4-6a2a-456c-a5ba-3cfdb5c14715");
osPreloadSound(linknum, "Name of sound in this prim");

Notes
This function was added in 0.9.0.1

Since 0.9.1 if target prim inventory does not contain the sound, the inventory of the prim containing the script calling this function is also checked 
*/

//
// empty Script Example
//

default
{
    state_entry()
    {
        llSay(0, "This script example does not yet exist.");
    }
}