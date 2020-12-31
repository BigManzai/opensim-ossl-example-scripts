/*
string osGetPhysicsEngineName()
This function returns a string containing the name and version number of the physics engine.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/


//
// osGetPhysicsEngineName Script Example
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osGetPhysicsEngineName usage.");
    }
 
    touch_start(integer number)
    {
        llSay(PUBLIC_CHANNEL, "The physics engine name is " + osGetPhysicsEngineName());
    }
}