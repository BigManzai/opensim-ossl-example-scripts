/*
float osVecMagSquare(vector a)
No descriptions provided
Threat Level 	No threat level specified
Permissions 	No permissions specified
Delay 	0 seconds
Example(s)
*/

//
// osVecMagSquare Script Example
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