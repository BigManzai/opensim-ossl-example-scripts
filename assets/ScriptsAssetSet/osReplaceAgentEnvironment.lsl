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
// osReplaceAgentEnvironment Script Example
// Author: djphil
//
 
// Can be asset's name in object's inventory or the asset uuid
string daycycle_a = "Daycycle_A";
string daycycle_b = NULL_KEY;
integer transition = 3;
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osReplaceAgentEnvironment usage.");
        llSay(PUBLIC_CHANNEL, "Transition: " + (string)transition + " second(s).");
    }
 
    touch_start(integer number)
    {
        key agentKey = llDetectedKey(0);
 
        if (llGetAgentSize(agentKey) != ZERO_VECTOR)
        {
            integer result;
 
            if (switch = !switch)
            {
                result = osReplaceAgentEnvironment(agentKey, transition, daycycle_a);
                llRegionSayTo(agentKey, PUBLIC_CHANNEL, "daycycle_a: " + daycycle_a);
            }
 
            else
            {
                result = osReplaceAgentEnvironment(agentKey, transition, daycycle_b);
                llRegionSayTo(agentKey, PUBLIC_CHANNEL, "daycycle_b: " + daycycle_b);
            }
 
            if (daycycle_a == "" || daycycle_a == NULL_KEY || daycycle_b == "" || daycycle_b == NULL_KEY)
            {
                llRegionSayTo(agentKey, PUBLIC_CHANNEL, "The normal environment for the parcel or region has been selected.");
            }
 
            if (result > 0)
            {
                llRegionSayTo(agentKey, PUBLIC_CHANNEL, "Agent environment replaced with success!");
            }
 
            else if (result < 0)
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