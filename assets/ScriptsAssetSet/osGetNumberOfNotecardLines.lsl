/*
integer osGetNumberOfNotecardLines(string name)
This function directly reads how many lines a notecard has if the specified notecard exists within the task inventory, bypassing the dataserver event to reduce code complexity.
Threat Level 	VeryHigh
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// osGetNumberOfNotecardLines example
 
default 
{
    state_entry()
    {
        string notecard = llGetInventoryName(INVENTORY_NOTECARD, 0);
        integer length=osGetNumberOfNotecardLines(notecard);
        llSay(0, "NumberOfNotecardLines is: " + (string) length);
 
    }
}