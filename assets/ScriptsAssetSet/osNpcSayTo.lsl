/*
osNpcSayTo(key npc, key target, integer channel, string message)
npc says message on the given channel to the specified target
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcSayTo Script Example
// Author: djphil
//
 
key npc;
key user;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcSayTo usage.");
    }
 
    touch_start(integer number)
    {
        user = llDetectedKey(0);
        vector npcPos = llGetPos() + <-1.0, 0.0, 1.0>;
        osAgentSaveAppearance(user, "appearance");
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
        osNpcSayTo(npc, user, PUBLIC_CHANNEL, "Hello world!");
        osNpcSayTo(npc, user, PUBLIC_CHANNEL, "I Love OpenSimulator!");
        osNpcSayTo(npc, user, PUBLIC_CHANNEL, "The Open Source Metaverse!");
    }
 
    touch_start(integer number)
    {
        osNpcSayTo(npc, user, PUBLIC_CHANNEL, "Goodbye!");
        llSetTimerEvent(0.0);
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}