/*
integer osReplaceAgentEnvironment(key agentKey, integer transition, string daycycle)
Forces a dayclycle on a agent. Will do nothing if the agent is using a viewer local environment

    If parameter daycycle is NULL_KEY or "", agent will see normal environment for parcel or region,
    daycycle can be a name of a daycycle asset on prim contents. If it is a UUID it can also be grid asset.
    if return value is negative, it failed.
    transition should be the viewer transition time to the new one. May not work on most viewers. 

Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
//
// osReplaceAgentEnvironment Script Example
// Author: djphil
//
 
// Can be asset's name in object's inventory or the asset uuid
string daycycle_1 = "A-12AM";
string daycycle_2 = NULL_KEY;
integer transition = 3;
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osReplaceAgentEnvironment usage with a transition of " + (string)transition);
    }
 
    touch_start(integer number)
    {
        key agentKey = llDetectedKey(0);
 
        if (llGetAgentSize(agentKey) != ZERO_VECTOR)
        {
            integer result;
 
            llRegionSayTo(agentKey, PUBLIC_CHANNEL, "agentKey: " + (string)agentKey);
 
            if (switch = !switch)
            {
                result = osReplaceAgentEnvironment(agentKey, transition, daycycle_1);
                llRegionSayTo(agentKey, PUBLIC_CHANNEL, "daycycle_1: " + daycycle_1);
            }
 
            else
            {
                result = osReplaceAgentEnvironment(agentKey, transition, daycycle_2);
                llRegionSayTo(agentKey, PUBLIC_CHANNEL, "daycycle_2: " + daycycle_2);
            }
 
            if (result == 1)
            {
                llRegionSayTo(agentKey, PUBLIC_CHANNEL, "Agent environment replaced with success!");
            }
 
            else
            {
                llRegionSayTo(agentKey, PUBLIC_CHANNEL, "Agent environment replaced without success!");
            }
        }
 
        else
        {
            llInstantMessage(agentKey, "You need to be in the same region to use this function ...");
        }
    }
}