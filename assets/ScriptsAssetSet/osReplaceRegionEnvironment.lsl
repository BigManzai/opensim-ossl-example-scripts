/*
integer osReplaceRegionEnvironment(integer transition, string daycycle, float daylenght, float dayoffset, float altitude1, float altitude2, float altitude3)
Replaces region dayclycle.

    If parameter daycycle is NULL_KEY or "", current environment is used as base,
    daycycle can be a name of a daycycle asset on prim contents. If it is a UUID it can also be grid asset.
    daylenght in hours - if zero, current is used. Range 4 to 168
    dayoffset in hours - offset from UTC. Range -11.5 to 11.5. if outside range current is used
    altitudes in meters - defines environment transition altitudes 1 to 3 levels. Range 1 to 4000. If 0, current is used. Please keep them sorted ( 1 < 2 < 3)
    if return value is negative, it failed.
    transition should be the viewer transition time to the new one. May not work on most viewers. 

Threat Level 	This function does not do a threat level check
Permissions 	Prim owner must have estate manager rights
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