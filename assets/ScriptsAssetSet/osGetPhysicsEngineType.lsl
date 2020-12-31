/*
string osGetPhysicsEngineType()
This function returns a string containing the name of the Physics Engine.
Threat Level 	High
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/


//
// osGetPhysicsEngineType Script Example
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osGetPhysicsEngineType usage.");
    }
 
    touch_start(integer number)
    {
        string physics_engine_type = osGetPhysicsEngineType();
 
        if (physics_engine_type == "ubODE")
        {
            llSay(PUBLIC_CHANNEL, physics_engine_type + " is detected ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, physics_engine_type + " is not detected ...");
        }
    }
}