/*
string osGetInventoryDesc(string itemName_or_itemId)
Returns a string that is the description of inventory item with id "itemName_or_itemId" if that parameter is a valid key or with that name if not.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osGetInventoryDesc Script Exemple
// Author: Gudule Lapointe
//
 
default
{
    state_entry()
    {
        if (llGetInventoryNumber(INVENTORY_LANDMARK))
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osGetInventoryDesc usage.");
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