/*
float osMax(float a, float b)
Returns the larger of two numbers. Wraps to system Math.Max()
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example osMax

default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Script running");
    }
 
    touch_start(integer number)
    {
        float a = llFrand(10.0);
        float b = llFrand(10.0);
        llSay(PUBLIC_CHANNEL, "\nThe larger value between " + (string)a + " and " + (string)b + " is " + (string)osMax(a, b));
    }
}