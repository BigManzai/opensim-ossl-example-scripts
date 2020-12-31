/*
string osGetNotecardLine(string name, integer line)
This function directly reads a line of text from the specified notecard, if it exists within the task inventory, and returns the text as a string. It skips the dataserver event, thereby reducing code complexity.
Threat Level 	VeryHigh
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// osGetNotecardLine example
 
default 
{
    state_entry()
    {
        integer i;
        string notecard_name = llGetInventoryName(INVENTORY_NOTECARD, 0);
        integer notecard_line = osGetNumberOfNotecardLines(notecard_name);
 
        for(i = 0; i < notecard_line; ++i)
        {
            llSay(PUBLIC_CHANNEL, llStringTrim(osGetNotecardLine(notecard_name, i), STRING_TRIM));
        }
    }
}