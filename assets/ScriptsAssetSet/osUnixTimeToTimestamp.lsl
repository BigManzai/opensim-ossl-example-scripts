/*
string osUnixTimeToTimestamp(integer epoch);
This function allows an input Unix time to be converted to an llGetTimeStamp() format. 
Please note that there will be no second fractions. 
This is because the implementation works with seconds only.
Threat Level 	VeryLow
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osUnixTimeToTimestamp Script Example
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osUnixTimeToTimestamp usage.");
    }
 
    touch_start(integer number)
    {
        integer epoch = llGetUnixTime();
        llSay(PUBLIC_CHANNEL, "Clicked at " + osUnixTimeToTimestamp(epoch));
    }
}