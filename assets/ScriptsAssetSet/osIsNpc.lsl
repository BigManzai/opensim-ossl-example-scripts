/*
integer osIsNpc(key npc)
Returns NPC status on the provided key

    Returns TRUE (1) / FALSE (0) if key provided is an NPC
    Returns FALSE (0) if the key provided doesn't exist in the scene. 

Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Test For NPC
// Author: mewtwo0641
// Date: 8-5-13
 
// This script listens for a key on channel 1 which will then
// tell you if the specified key is an NPC or not.
 
default
{
    state_entry()
    {
        llListen(1, "", llGetOwner(), "");    
    }
 
    listen(integer channel , string name, key id, string message)
    {
        if(channel == 1)
        {
            integer isNPC = osIsNpc((key)message); //Get information on the key.
            string keyInfo = llKey2Name((key)message) + " (" + message + ")";
 
            if(isNPC) //Supplied key is an NPC
                llOwnerSay(keyInfo + " is an NPC.");
 
            else if(!isNPC)
            {
                //We now know that the supplied key isn't an NPC.
                //Let's find out if the key exists as an agent or not.
 
                if(llGetAgentSize((key)message) != ZERO_VECTOR) //Supplied key is an agent and not an npc
                    llOwnerSay(keyInfo + " is an AGENT and not an NPC");
 
                else //Supplied key is either not an NPC or the NPC doesn't exist
                    llOwnerSay(keyInfo + " is either not an NPC or the NPC does not exist.");
            } 
        }   
    }
}