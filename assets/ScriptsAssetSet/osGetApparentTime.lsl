/*
float osGetApparentTime()
Returns parcel time in seconds since midnight. If parcel does not have own environment, region time is returned
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
        llSay(0, "Current Apparent SunTime: "+(string)osGetApparentTime());
    }
}