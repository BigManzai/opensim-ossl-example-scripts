/*
key osNpcGetOwner(key npc)
Gets the NPC's owner's UUID
Threat Level 	None
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Notes
This function was added in 0.7.3-post-fixes 
*/

//
// osNpcGetOwner Script Exemple
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcGetOwner usage.");
        llSay(PUBLIC_CHANNEL, "This with the use of the option OS_NPC_CREATOR_OWNED.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <1.0, 0.0, 1.0>;
        osAgentSaveAppearance(toucher, "appearance");
        npc = osNpcCreate("ImYour", "Clone", npcPos, "appearance", OS_NPC_CREATOR_OWNED);
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
        key npc_owner = osNpcGetOwner(npc);
        osNpcSay(npc, "Hello world!");
        osNpcSay(npc, "My owner is: " + (string)npc_owner + " (" + llKey2Name(npc_owner) + ")");
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

/* With OS_NPC_NOT_OWNED: (It Needs the setting AllowNotOwned on true in section [NPC] of your OpenSim.ini)

//
// osNpcGetOwner Script Exemple
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcGetOwner usage.");
        llSay(PUBLIC_CHANNEL, "This with the use of the option OS_NPC_NOT_OWNED.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <1.0, 0.0, 1.0>;
        osAgentSaveAppearance(toucher, "appearance");
        npc = osNpcCreate("ImYour", "Clone", npcPos, "appearance", OS_NPC_NOT_OWNED);
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
        key npc_owner = osNpcGetOwner(npc);
        osNpcSay(npc, "Hello world!");
        osNpcSay(npc, "My owner is: " + (string)npc_owner + " (" + llKey2Name(npc_owner) + ")");
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
*/