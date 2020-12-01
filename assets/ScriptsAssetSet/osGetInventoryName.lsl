/*
string osGetInventoryName(key itemId)
Returns a string that is the name of inventory item
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// llGetInventoryName Script Exemple
//
 
default
{
    state_entry()
    {
        if (llGetInventoryNumber(INVENTORY_LANDMARK))
        {
            llSay(PUBLIC_CHANNEL, "Touch to see llGetInventoryName usage.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Inventory landmark missing ...");
        }
    }
 
    touch_start(integer number)
    {
        string inventory_name = llGetInventoryName(INVENTORY_LANDMARK, 0);
        string inventory_desc = osGetInventoryDesc(inventory_name);
        llSay(PUBLIC_CHANNEL, "inventory_name: " + inventory_name);
        llSay(PUBLIC_CHANNEL, "inventory_desc: " + inventory_desc);
    }
}