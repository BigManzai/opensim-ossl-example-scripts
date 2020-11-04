/*
string osGetPhysicsEngineName()
This function returns a string containing the name and version number of the physics engine.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/


// Example of osGetPhysicsEngineName

default
{
    state_entry() // display @ start
    {
        llSay(0, "Touch me to get the physics engine name using osGetPhysicsEngineName");
    }
    touch_end(integer num) // Tell toucher our version
    {
        llInstantMessage(llDetectedKey(0), "Physics engine type: "+osGetPhysicsEngineName());
    }
}