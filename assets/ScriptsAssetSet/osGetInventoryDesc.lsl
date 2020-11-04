/*
string osGetInventoryDesc(string itemName_or_itemId)
Returns a string that is the description of inventory item with id "itemName_or_itemId" if that parameter is a valid key or with that name if not.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osGetInventoryDesc
 
default
{
    state_entry()
    {
        string name = llGetInventoryName(INVENTORY_LANDMARK, 0);
        string decription = osGetInventoryDesc(name);
    }
}