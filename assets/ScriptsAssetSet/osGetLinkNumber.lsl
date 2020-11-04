/*
integer osGetLinkNumber(string name)
returns the link number of the prim or sitting avatar with name "name" on the link set or -1 if the name is not found.

    if names are not unique, the one with lower link number should be return
    names "Object" and "Primitive" are ignored 

Threat Level 	None
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/

// Example of osGetLinkNumber
 
string object_name = "Change Me!";
 
default
{
    state_entry()
    {
        integer link_number = osGetLinkNumber(object_name);
        llOwnerSay(llGetLinkName(link_number));
    }
}