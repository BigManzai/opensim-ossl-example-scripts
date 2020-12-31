/*
osNpcShout(key npc, integer channel, string message)
npc shouts message on the given channel.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcShout Script Example
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcShout usage.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <-1.0, 0.0, 1.0>;
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
        osNpcShout(npc, PUBLIC_CHANNEL, "Hello world!");
        osNpcShout(npc, PUBLIC_CHANNEL, "I Love OpenSimulator!");
        osNpcShout(npc, PUBLIC_CHANNEL, "The Open Source Metaverse!");
    }
 
    touch_start(integer number)
    {
        osNpcShout(npc, PUBLIC_CHANNEL, "Goodbye!");
        llSetTimerEvent(0.0);
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}