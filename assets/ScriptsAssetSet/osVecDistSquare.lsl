/*
float osVecDistSquare(vector a, vector b)
returns the square of norm of vector, or distance vector, (a - b), when expensive square root math operation is not needed.

for example to check if distance is larger than 10, check if the square is larger than 100
Threat Level 	No threat level specified
Permissions 	No permissions specified
Extra Delay 	0 seconds
Example(s)
*/

//
// osVecDistSquare Script Example
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osVecDistSquare usage.");
    }
 
    touch_start(integer number) 
    {
        vector input_a = <1.0, 2.0, 3.0>;
        vector input_b = <3.0, 2.0, 1.0>;
        llSay(PUBLIC_CHANNEL, "The square root of the distance between " + (string)input_a + " and " + (string)input_b 
            + " is " + (string)osVecDistSquare(input_a, input_b) + ".");
    }
}