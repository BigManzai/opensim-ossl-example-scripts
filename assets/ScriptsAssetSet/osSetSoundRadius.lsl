/*
void osSetSoundRadius(integer linknum, float radius);
Establishes a hard cut-off radius for audibility of scripted sounds (both attached and triggered) in the specified prim of a linkset.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osSetSoundRadius Script Example
//
 
string sound = "f4a0660f-5446-dea2-80b7-6482a082803c";
float radius = 5.0;
 
default
{
    state_entry()
    {
        if (osIsUUID(sound))
        {
            llSay(PUBLIC_CHANNEL, "Touch to hear osSetSoundRadius running in a radius of " + (string)radius + " meters.");
            osSetSoundRadius(1, radius);
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