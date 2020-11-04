/*
key osGetInventoryItemKey(string name)
Returns id(key) of a inventory item within the prim inventory.
If name is not unique result maybe unpredictable.
Note that unlike this function, llGetInventoryKey does not return the item ID but the ID of its asset.
Returns NULL_KEY if the item is not found or Owner has no rights
Threat Level 	This function does not do a threat level check
Permissions 	Script owner needs modify, copy and transfer rights
Delay 	0 seconds
Example(s)
*/

// Example of osGetInventoryItemKey
 
default
{
    state_entry()
    {
        llOwnerSay("Touch me to show osGetInventoryDesc");
    }
 
    touch_start(integer number)
    {
        key ItemKey = osGetInventoryItemKey("MyNoteCard");
        if (ItemKey != NULL_KEY) llOwnerSay(osGetInventoryDesc(ItemKey));
        else llOwnerSay("ItemKey is a NULL_KEY, item not found or owner has no rights ...");
    }   
}