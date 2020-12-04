/*
osNpcMoveToTarget(key npc, vector target, integer options)
Move the avatar to a given target over time. How the avatar will get there depends on the following options.

OS_NPC_FLY - Fly the avatar to the given position. The avatar will not land unless the OS_NPC_LAND_AT_TARGET option is also given.

OS_NPC_NO_FLY - Do not fly to the target. The NPC will attempt to walk to the location. If it's up in the air then the avatar will keep bouncing hopeless until another move target is given or the move is stopped.

OS_NPC_LAND_AT_TARGET - If given and the avatar is flying, then it will land when it reaches the target. If OS_NPC_NO_FLY is given then this option has no effect.

OS_NPC_FLY and OS_NPC_NO_FLY are options that cannot be combined - the avatar will end up doing one or the other. If you want the avatar to fly and land at the target, then OS_NPC_LAND_AT_TARGET must be combined with OS_NPC_FLY.

OS_NPC_RUNNING - Run the avatar to the given position.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Notes
This function was added in 0.7.2-post-fixes 
*/

//
// osNpcMoveToTarget Script Exemple
// With the use of the option OS_NPC_NO_FLY
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcMoveToTarget usage.");
        llSay(PUBLIC_CHANNEL, "This with the use of the option OS_NPC_NO_FLY.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <-5.0, -1.0, 1.0>;
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
        osNpcMoveToTarget(npc, llGetPos() + <5.0, -1.0, 0.0>, OS_NPC_NO_FLY);
    }
 
    touch_start(integer number)
    {
        llSetTimerEvent(0.0);
        osNpcSay(npc, "Goodbye!");
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}

With OS_NPC_FLY:

//
// osNpcMoveToTarget Script Exemple
// With the use of the option OS_NPC_FLY
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcMoveToTarget usage.");
        llSay(PUBLIC_CHANNEL, "This with the use of the option OS_NPC_FLY.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <-5.0, -1.0, 1.0>;
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
        osNpcMoveToTarget(npc, llGetPos() + <5.0, -1.0, 3.0>, OS_NPC_FLY);
    }
 
    touch_start(integer number)
    {
        llSetTimerEvent(0.0);
        osNpcSay(npc, "Goodbye!");
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}

/* With OS_NPC_FLY and OS_NPC_LAND_AT_TARGET:

//
// osNpcMoveToTarget Script Exemple
// With the use of the option OS_NPC_FLY and OS_NPC_LAND_AT_TARGET
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcMoveToTarget usage.");
        llSay(PUBLIC_CHANNEL, "This with the use of the option OS_NPC_FLY and OS_NPC_LAND_AT_TARGET.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <-5.0, -1.0, 1.0>;
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
        osNpcMoveToTarget(npc, llGetPos() + <5.0, -1.0, 3.0>, OS_NPC_FLY | OS_NPC_LAND_AT_TARGET);
    }
 
    touch_start(integer number)
    {
        llSetTimerEvent(0.0);
        osNpcSay(npc, "Goodbye!");
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}

With OS_NPC_RUNNING:

//
// osNpcMoveToTarget Script Exemple
// With the use of the option OS_NPC_RUNNING
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcMoveToTarget usage.");
        llSay(PUBLIC_CHANNEL, "This with the use of the option OS_NPC_RUNNING.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <-5.0, -1.0, 1.0>;
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
        osNpcMoveToTarget(npc, llGetPos() + <5.0, -1.0, 0.0>, OS_NPC_RUNNING);
    }
 
    touch_start(integer number)
    {
        llSetTimerEvent(0.0);
        osNpcSay(npc, "Goodbye!");
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
}
*/