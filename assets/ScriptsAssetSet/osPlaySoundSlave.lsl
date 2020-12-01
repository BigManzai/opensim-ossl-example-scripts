/*
osPlaySoundSlave(integer linknum, string sound, float volume)
Play the specified sound at the specified volume and loop it indefinitely.

This sound will be set as a slave sound. The playing of a slave sound will be synchronized to the playing of the same sound declared in another prim as the master sound.

The sound parameter can be the UUID of a sound or the name of a sound that is in the inventory of the target prim.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)

osPlaySoundSlave(linknum, "c98100c4-6a2a-456c-a5ba-3cfdb5c14715", volume);
osPlaySoundSlave(linknum, "Name of sound in prim inventory", volume);

Notes
A prim can only have one active sound. The osPlaySoundSlave() function should refer to a different prim than the one that was defined as a master or it will remove the master sound and there will be no master sound to which the slave can be synchronized.

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