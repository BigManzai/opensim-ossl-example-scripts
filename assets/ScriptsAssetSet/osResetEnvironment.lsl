/*
integer osResetEnvironment(integer ParcelOrRegion, integer transition)
Resets parcel or region environment.

    if ParcelOrRegion == 1 parcel environment is removed, region will be used, else region environment is set to the default.
    transition should be the viewer transition time to the new one. May not work on most viewers. 

if return is negative the operation failed.
Threat Level 	This function does not do a threat level check
Permissions 	Prim owner must have estate manager rights or parcel and parcel environment change rights
Delay 	0 seconds
Example(s)
*/

//
// osResetEnvironment Script Example
// Author: djphil
//
 
integer transition = 3;
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osResetEnvironment usage with a transition of " + (string)transition);
    }
 
    touch_start(integer number)
    {
        integer result;
 
        if (switch =! switch)
        {
            result = osResetEnvironment(switch, transition);
        }
 
        else
        {
            result = osResetEnvironment(switch, transition);
        }
 
        if (switch == 1 && result == 1)
        {
            llSay(PUBLIC_CHANNEL, "The parcel environment was removed with success.");
        }
 
        else if (switch == 1 && result == -1)
        {
            llSay(PUBLIC_CHANNEL, "The parcel environment was removed without success.");
        }
 
        else if (switch == 0 && result == 1)
        {
            llSay(PUBLIC_CHANNEL, "The region environment was set to the default with success.");
        }
 
        else if (switch == 0 && result == -1)
        {
            llSay(PUBLIC_CHANNEL, "The region environment was set to the default without success.");
        }
    }
}