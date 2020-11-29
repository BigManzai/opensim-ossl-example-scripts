/*
osLoopSoundMaster(integer linknum, string sound, float volume)
Play the specified sound at the specified volume and loop it indefinitely.

This sound will be set as a master sound. The playing of the sound in other prims using osLoopSoundSlave will be synchronized to this sound.

The sound parameter can be the UUID of a sound or the name of a sound that is in the inventory of the target prim.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)

osLoopSoundMaster(linknum, "c98100c4-6a2a-456c-a5ba-3cfdb5c14715", volume);
osLoopSoundMaster(linknum, "Name of master sound in prim inventory", volume);
*/

//
// osLoopSoundMaster Script Example
// Author: djphil
//
 
// Can be sound's name in object's inventory or the sound uuid
string sound_master = "f4a0660f-5446-dea2-80b7-6482a082803c";
string sound_slave = "d7a9a565-a013-2a69-797d-5332baa1a947";
float volume = 1.0;
integer switch;
 
default
{
    state_entry()
    {
        llPreloadSound(sound_master);
        llPreloadSound(sound_slave);
        llSay(PUBLIC_CHANNEL, "Touch to see osLoopSoundMaster usage.");
    }
 
    touch_start(integer number)
    {
        if (switch = !switch)
        {
            osLoopSoundMaster(1, sound_master, volume);
            osLoopSoundSlave(2, sound_slave, volume);
        }
 
        else
        {
            osStopSound(1);
            osStopSound(2);
        }
    }
}