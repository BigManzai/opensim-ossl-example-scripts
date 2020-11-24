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
//

string gEnvironment = "A-12AM"; // Can be asset's name in object's inventory or the asset ID
float gTransitionTime = 3.0;
 
default
{
    touch_start(integer total_number)
    {
        key person = llDetectedKey(0);
        if (llGetAgentSize(person) != ZERO_VECTOR)
        {
            llRequestExperiencePermissions(person, "");
        }
        else
        {
            llInstantMessage(person, "You need to be in the same region to change environment");
        }
    }
 
    experience_permissions(key agent_id)
    {
        integer envTest = osReplaceAgentEnvironment(agent_id, gTransitionTime, gEnvironment);
        if (envTest == 1)
        {
            llRegionSayTo(agent_id, 0, "Applying environment for " + (string)agent_id);
        }
        else
        {
            llRegionSayTo(agent_id, 0, "Cannot apply environment for " + (string)agent_id + " due to reason id: " + (string)envTest);
        }
    }
 
    experience_permissions_denied(key agent_id, integer reason)
    {
        llRegionSayTo(agent_id, 0, "Denied experience permissions for " + (string)agent_id + " due to reason id: " + (string)reason);
    }
}