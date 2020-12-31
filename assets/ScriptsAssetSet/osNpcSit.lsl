/*
osNpcSit(key npc, key target, integer options)

    Makes an NPC sit on an object.
    Options - OS_NPC_SIT_NOW. Makes the npc instantly sit on the prim if possible. This is the only option available and is currently always on no matter what is actually specified in the options field.
        If the prim has a sit target then sit always succeeds no matter the distance between the NPC and the prim.
        If the prim has no sit target then
            If the prim is within 10 meters of the NPC then the sit will always succeed.
            At OpenSimulator 0.7.5 and later, if the prim is further than 10 meters away then nothing will happen.
            Before OpenSimulator 0.7.5, if the prim is further than 10 meters away then the avatar will attempt to walk over to the prim but will not sit when it reaches it. 

Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcSit (without llSitTarget) Script Example
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcSit (without llSitTarget) usage.");
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
        osNpcSit(npc, llGetKey(), OS_NPC_SIT_NOW);
        osNpcSay(npc, "Hello world!");
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

/* With llSitTarget:

//
// osNpcSit (with llSitTarget) Script Example
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcSit (with llSitTarget) usage.");
        llSitTarget(<0.3, 0.0, 0.55>, ZERO_ROTATION);
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
        osNpcSit(npc, llGetKey(), OS_NPC_SIT_NOW);
        osNpcSay(npc, "Hello world!");
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
*/