/*
string osGetApparentTimeString(integer format24)
Returns a string with current parcel sun hour. Will use 12 or 24 hour format if format24 is 0 or 1, respectible. If parcel does not have own environment, region hour is returned.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
//osGetApparentTimeString() example
//
default
{
    state_entry()
    {
        llSay(0, "Current Apparent Sun Hour: "+ osGetApparentTimeString(1));
    }
}