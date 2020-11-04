/*
float osGetHealth(key avatar)
Gets an avatars health by key and returns the value as a float.

See also OsCauseDamage, OsCauseHealing.
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osGetHealth Script Example
//
 
default
{
    touch(integer t)
    {
        key agentID = llDetectedKey(0);
        osCauseDamage(agentID, 50);
        llSay(0, llKey2Name(agentID) + " has " + (string)osGetHealth(agentID) + "% health left.");
    }
}