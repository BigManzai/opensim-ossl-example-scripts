/*
string osGetPhysicsEngineType()
This function returns a string containing the name of the Physics Engine.
Threat Level 	High
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/


// ----------------------------------------------------------------
// Example / Sample Script to show function use.
//
// Script Title:    osGetPhysicsEngineType.lsl
// Script Author:   
// Threat Level:    High
// Script Source:   http://opensimulator.org/wiki/OsGetPhysicsEngineType
//
// Notes: See Script Source reference for more detailed information
// This sample is full opensource and available to use as you see fit and desire.
// Threat Levels only apply to OSSL & AA Functions
// See http://opensimulator.org/wiki/Threat_level
// ================================================================
// Inworld Script Line:    string osGetPhysicsEngineType();
//
// Example of osGetPhysicsEngineType()
//
default
{
    state_entry() // display @ start
    {
        llSay(0, "Touch me to get the physics engine type using osGetPhysicsEngineType");
    }
    touch_end(integer num) // Tell toucher our version
    {
        llInstantMessage(llDetectedKey(0), "Physics engine type: "+osGetPhysicsEngineType());
    }
}