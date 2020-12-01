/*
integer osReplaceParcelEnvironment(integer transition, string daycycle)
Replaces parcel daycycle.

    If parameter daycycle is NULL_KEY or "", parcel environment is removed,
    daycycle can be a name of a daycycle asset on prim contents. If it is a UUID it can also be grid asset.
    if return value is negative, it failed.
    transition should be the viewer transition time to the new one. May not work on most viewers. 

Threat Level 	This function does not do a threat level check
Permissions 	Prim owner must have rights to change parcel and parcel environment and region must allow parcel environments
Delay 	0 seconds
Example(s)

//

Notes
Added in 0.9.2 
*/

//
// empty Script Example
//

default
{
    state_entry()
    {
        llSay(0, "This script example does not yet exist.");
    }
}