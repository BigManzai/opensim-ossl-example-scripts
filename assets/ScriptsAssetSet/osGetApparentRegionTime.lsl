/*
float osGetApparentRegionTime()
Returns region time in seconds since midnight.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
//osGetApparentRegionTime() example
//
default
{
    state_entry()
    {
        llSay(0, "Current Apparent Sun Time: "+(string)osGetApparentRegionTime());
    }
}