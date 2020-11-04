/*
float osMin(float a, float b)
Returns the smaller of two numbers. Wraps to the system Math.Min() function.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example osMin

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
        llSay(PUBLIC_CHANNEL, "\nThe smaller value between " + (string)a + " and " + (string)b + " is " + (string)osMin(a, b));
    }
}