/*
float osAngleBetween(vector a, vector b);
returns a angle between 0 and PI
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osAngleBetween Script Example
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osAngleBetween usage.");
    }
 
    touch_start(integer number) 
    {
        vector input_a = <1.0, 2.0, 3.0>;
        vector input_b = <3.0, 2.0, 1.0>;
        float angle = osAngleBetween(input_a, input_b);
 
        llSay(PUBLIC_CHANNEL, "The angle (0.0 and PI) between " + (string)input_a + " and " + (string)input_b 
            + " is " + (string)(angle) + " in degrees and " + (string)(angle * DEG_TO_RAD) + " in radians.");
    }
}