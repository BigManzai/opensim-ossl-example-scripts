/*
key osNpcCreate(string firstname, string lastname, vector position, string cloneFrom)

key osNpcCreate(string firstname, string lastname, vector position, string cloneFrom, integer options)

Creates an NPC named firstname lastname at position from avatar appearance resource cloneFrom 

Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Example(s)
*/

//
// osNpcCreate Script Exemple
// Author: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcCreate usage.");
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

/* With OS_NPC_SENSE_AS_AGENT: (It Needs the setting AllowSenseAsAvatar on true in section [NPC] of your OpenSim.ini)

//
// osNpcCreate Script Exemple
// Authior: djphil
//
 
integer sens_as_agent = TRUE;
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcCreate usage.");
 
        if (sens_as_agent == TRUE)
        {
            llSay(PUBLIC_CHANNEL, "This with the use of the option OS_NPC_SENSE_AS_AGENT.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "This without the use of the option OS_NPC_SENSE_AS_AGENT.");
        }   
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <1.0, 0.0, 1.0>;
        osAgentSaveAppearance(toucher, "appearance");
 
        if (sens_as_agent == TRUE)
        {
            npc = osNpcCreate("ImYour", "Clone", npcPos, "appearance", OS_NPC_SENSE_AS_AGENT);
        }
 
        else
        {
            npc = osNpcCreate("ImYour", "Clone", npcPos, "appearance");
        }
 
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
 
        if (sens_as_agent == TRUE)
        {
            llSensor("", npc, AGENT, 2.0, PI);
        }
 
        else
        {
            llSensor("", npc, NPC, 2.0, PI);
        }
    }
 
    touch_start(integer number)
    {
        osNpcSay(npc, "Goodbye!");
        llSetTimerEvent(0.0);
        osNpcRemove(npc);
        npc = NULL_KEY;
        state default;
    }
 
    sensor(integer number)
    {
        if (sens_as_agent == TRUE)
        {
            llSay(PUBLIC_CHANNEL, (string)number + " NPC sense as agent deteced: " + llDetectedName(0));
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, (string)number + " NPC sense as npc deteted: " + llDetectedName(0));
        }
    }
 
    no_sensor()
    {
        if (sens_as_agent == TRUE)
        {
            llSay(PUBLIC_CHANNEL, "No NPC sense as agent is near me at present.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "No NPC senss as npc is near me at present.");
        }
    }
}

With OS_NPC_OBJECT_GROUP: (It Needs the setting NoNPCGroup on false in section [NPC] of your OpenSim.ini)

//
// osNpcCreate Script Exemple
// Authior: djphil
//
 
key npc;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osNpcCreate usage.");
        llSay(PUBLIC_CHANNEL, "This with the use of the option OS_NPC_OBJECT_GROUP.");
    }
 
    touch_start(integer number)
    {
        key toucher = llDetectedKey(0);
        vector npcPos = llGetPos() + <1.0, 0.0, 1.0>;
        osAgentSaveAppearance(toucher, "appearance");
        npc = osNpcCreate("ImYour", "Clone", npcPos, "appearance", OS_NPC_OBJECT_GROUP);
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