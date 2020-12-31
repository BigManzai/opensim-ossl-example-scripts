/*
osNpcPlayAnimation(key npc, string animation)
Plays animation on the NPC identified by their key.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcPlayAnimation Script Example
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcPlayAnimation usage.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <1.0, 0.0, 1.0>;
        osAgentSaveAppearance(toucher, "appearance");
        npc = osNpcCreate("ImYour", "Clone", npcPos, "appearance");
        state hasNPC;
    }
}
 
state hasNPC
{
    state_entry()
    {
        llSetTimerEvent(5.0);
    }
 
    timer()
    {
        llSetTimerEvent(0.0);
        osNpcSay(npc, "Hello world!");
        osNpcPlayAnimation(npc, "clap");
    }
 
    touch_start(integer number)
    {
        osNpcSay(npc, "Goodbye!");
        llSetTimerEvent(0.0);
        osNpcStand(npc);
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}