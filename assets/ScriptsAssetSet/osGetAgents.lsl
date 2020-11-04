/*
list osGetAgents()
Returns a list of all the agents names in the region.
Threat Level 	None
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

//
// Example of osGetAgents.
//
default
{
    state_entry()
    {
        // Demo-Script 
    }
    touch_start(integer total_number)
    {
        llSay (0, "Agents in sim: "+ llList2CSV(osGetAgents()));
    }
}