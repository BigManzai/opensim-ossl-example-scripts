/*
float osVecMagSquare(vector a)
returns the square of the magnitude of vector a.

This saves a square root math operation that is relative slow, when is not needed.
for example to check if magnitude is larger than 10, check if the square is larger than 100
Threat Level 	ignore is unknown threat level
Permissions 	Use of this function is always allowed by default
Extra Delay 	0 seconds
Example(s)
*/

//
// osVecMagSquare Script Example
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osVecMagSquare usage.");
    }
 
    touch_start(integer number) 
    {
        vector input = <1.0, 2.0, 3.0>;
        llSay(PUBLIC_CHANNEL, "The square root of the magnitude of " + (string)input + " is " 
            + (string)osVecMagSquare(input) + ".");
    }
}