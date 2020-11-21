/*
osAgentSaveAppearance(key agentId, string notecard, integer includeHuds)
No descriptions provided
Threat Level 	None
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/

//
// osAgentSaveAppearance Script Example
// GPLv3 license attributed to the Wizardry and Steamworks group at http://was.fm/opensim:npc
// touch to save your XML to a notecard named appearance for use with NPC follower and NPC puppeteer script.
//
 
default
{
    touch_start(integer num)
    {
        osAgentSaveAppearance(llDetectedKey(0), "appearance");
    }
}