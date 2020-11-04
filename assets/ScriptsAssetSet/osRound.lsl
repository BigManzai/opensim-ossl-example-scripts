/*
float osRound(float value, integer ndigits)
returns the value rounded to the number with a number if decimal places set by ndigits.
ndigits = 0 is same as llRound(), max value is 15.
Threat Level 	No threat level specified
Permissions 	No permissions specified
Delay 	0 seconds
Example(s)
*/

// Example of osRound
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch me to show osRound");
    }
 
    touch_start(integer n)
    {
        float value = llFrand(1000);
        float round = osRound(value, 3);
        llOwnerSay("osRound(value, 3) of \"" + (string)value + "\" is \"" + (string)round + "\"");
    }
}