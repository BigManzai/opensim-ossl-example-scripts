/*
integer osClearObjectAnimations()
clears all animations on the prim, returning how many it had running
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Notes
Added in 0.9.2.0 
*/

//
// osClearObjectAnimations Script Exemple
// Author= djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Right click on this object (animesh) and select \"Touch\" to see osClearObjectAnimations usage.");
    }
 
    touch_start(integer number)
    {
        integer total = osClearObjectAnimations();
 
        if (total > 0)
        {
            llSay(PUBLIC_CHANNEL, (string)total + " animation(s) of this object (animesh) have been cleared with success ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "There is " + (string)total + " animation running in this object ...");
        }
    }
}
/*
//
// osClearObjectAnimations Script Exemple
// Author= djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Drop this script to the object's inventory (animesh) to see osClearObjectAnimations usage.");
        llSay(PUBLIC_CHANNEL, "The script will then be automatically deleted from the object's inventory (animesh).");
 
        integer total = osClearObjectAnimations();
 
        if (total > 0)
        {
            llSay(PUBLIC_CHANNEL, (string)total + " animation(s) of this object (animesh) have been cleared with success ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "There is " + (string)total + " animation running in this object ...");
        }
 
        llRemoveInventory(llGetScriptName());
    }
}
*/