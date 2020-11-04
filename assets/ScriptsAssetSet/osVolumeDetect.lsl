/*
osVolumeDetect(integer detect)
If script is on root prim, it is like llVolumeDetect(). On child prims, it will turn just that prim a detector.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osVolumeDetect
 
default
{
    state_entry()
    {
        llSay(0, "Script running");
        osVolumeDetect(TRUE);
    }
    on_rez(integer hh)
    {
        osVolumeDetect(TRUE);
    }
    collision_start(integer uu)
    {
        llOwnerSay("s");
    }
    collision_end(integer uu)
    {
        llOwnerSay("e");
    }    
}