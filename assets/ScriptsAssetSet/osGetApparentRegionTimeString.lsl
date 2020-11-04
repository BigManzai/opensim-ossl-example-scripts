/*
string osGetApparentRegionTimeString(integer format24)
Returns a string with current region sun hour. Will use 12 or 24 hour format if format24 is 0 or 1, respectible.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
//osGetApparentRegionTimeString() example
//
default
{
    state_entry()
    {
        llSay(0, "Current Apparent Sun Hour: "+ osGetApparentRegionTimeString(1));
    }
}