/*
osSetHealth(key avatar, float health)
Sets an avatars health by key to the specified float value.

See also osGetHealth, OsCauseDamage, OsCauseHealing.
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// osSetHealth Script Example
//
 
default
{
    touch(integer t)
    {
        key agentID = llDetectedKey(0);
        osSetHealth(agentID, 50);
        llSay(0, llKey2Name(agentID) + " has " + (string)osGetHealth(agentID) + "% health left.");
    }
}