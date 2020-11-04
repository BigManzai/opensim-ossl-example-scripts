/*
vector osGetRegionSize()
Returns the size of the region in meters.

Usually this function returns: Region size: <256.000000, 256.000000, 0.000000>. However, when called in a var/mega region it returns the size of the entire simulator.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/


//Example osGetRegionSize

default
{
    touch_start(integer t)
    {
        llSay(0, "Region size: " + (string)osGetRegionSize());
    }
}