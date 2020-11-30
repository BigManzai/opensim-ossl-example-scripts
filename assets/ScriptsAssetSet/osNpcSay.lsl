/*
osNpcSay(key npc, integer channel, string message)

osNpcSay(key npc, string message)
npc says message on the given channel (channel is 0 in the second form)
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcSay (without channel) Script Exemple
// Authior: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcSay (without channel) usage.");
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
        osNpcSay(npc, "Hello world!");
        osNpcSay(npc, "I Love OpenSimulator!");
        osNpcSay(npc, "The Open Source Metaverse!");
    }
 
    touch_start(integer number)
    {
        osNpcSay(npc, "Goodbye!");
        llSetTimerEvent(0.0);
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}

/* And with channel:

//
// osNpcSay (with channel) Script Exemple
// Authior: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcSay (with channel) usage.");
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
        osNpcSay(npc, PUBLIC_CHANNEL, "Hello world!");
        osNpcSay(npc, PUBLIC_CHANNEL, "I Love OpenSimulator!");
        osNpcSay(npc, PUBLIC_CHANNEL, "The Open Source Metaverse!");
    }
 
    touch_start(integer number)
    {
        osNpcSay(npc, PUBLIC_CHANNEL, "Goodbye!");
        llSetTimerEvent(0.0);
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}
*/