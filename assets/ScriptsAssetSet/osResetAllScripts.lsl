/*
osResetAllScripts(integer AllLinkSet)
Resets all the scripts on the same prim if AllLinkSet is FALSE( or 0) or on same linkset if AllLinkSet is TRUE ( or 1 )

This function can be heavy, and can have negative side effects due to the asynchronous nature of script engines.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osResetAllScripts Script Example
//
 
 
integer AllLinkSet = 0;
 
default
{
    touch_start(integer total_number)
    {
        osResetAllScripts(AllLinkSet);
    }
}