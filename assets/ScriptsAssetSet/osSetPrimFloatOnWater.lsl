/*
osSetPrimFloatOnWater(integer float)
No descriptions provided
Threat Level 	VeryLow
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
//osSetPrimFloatOnWater() example, by Tom Earth.
//
default
{
    state_entry()
    {
        osSetPrimFloatOnWater(TRUE);
    }
}