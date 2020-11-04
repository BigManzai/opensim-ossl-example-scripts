/*
float osGetCurrentSunHour()
Returns a float value of the current region sun hour (24 hour clock).
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
//osGetCurrentSunHour() example, by Tom Earth.
//
default
{
    state_entry()
    {
        llSay(0, "Current sun hour: "+(string)osGetCurrentSunHour());
    }
}