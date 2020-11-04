/*
osAddAgentToGroup(key AgentID, string GroupName, string RequestedRole)
Prerequisites

    The Group must be created
    You must have the Group UUID
    Roles within the group must be defined (default has Everyone & Owners) 

Threat Level 	None
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/

//
// osAddAgentToGroup Script Example
//
 
string GroupToJoin = "Test Group";
string RoleToJoin = "Everyone";
 
default
{
    state_entry()
    {
        llSay(0,"Touch to use osAddAgentToGroup to add yourself to a group"); 
    }
 
    touch_end(integer num)
    {
        key AgentID = llDetectedKey(0);
        osAddAgentToGroup(AgentID, GroupToJoin, RoleToJoin);
    }
}