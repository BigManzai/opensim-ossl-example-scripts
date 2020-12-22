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
// osReplaceRegionEnvironment Script Example
// Author: djphil
//
 
// Can be daycycle's name in object's inventory or the daycycle uuid
string daycycle_a = "Daycycle_A";
string daycycle_b = "Daycycle_B";
 
float daylenght = 10.0; // Range 4.0 to 168.0
float dayoffset = 5.0;  // UTC Range -11.5 to 11.5
 
// Range 1.0 to 4000.0, If 0.0, current is used
// Please keep them sorted (1 < 2 < 3)
float altitude1 = 1000.0;
float altitude2 = 2000.0;
float altitude3 = 3000.0;
 
integer transition = 3;
integer switch;
 
integer check_values()
{
    if (daylenght < 4.0 || daylenght > 168.0) return FALSE;
    if (dayoffset < -11.5 || daylenght > 11.5) return FALSE;
    if (altitude1 < 1.0 || altitude1 > 4000.0) return FALSE;
    if (altitude2 < 1.0 || altitude2 > 4000.0) return FALSE;
    if (altitude2 < 1.0 || altitude2 > 4000.0) return FALSE;
    if (altitude1 > altitude2) return FALSE;
    if (altitude1 > altitude3) return FALSE;
    if (altitude2 > altitude3) return FALSE;
    return TRUE;
}
 
default
{
    state_entry()
    {
        if (check_values() == TRUE)
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osReplaceRegionEnvironment usage.");
            llSay(PUBLIC_CHANNEL, "daylenght: " + (string)daylenght);
            llSay(PUBLIC_CHANNEL, "dayoffset: " + (string)dayoffset);
            llSay(PUBLIC_CHANNEL, "altitude1: " + (string)altitude1);
            llSay(PUBLIC_CHANNEL, "altitude2: " + (string)altitude2);
            llSay(PUBLIC_CHANNEL, "altitude3: " + (string)altitude3);
            llSay(PUBLIC_CHANNEL, "Transition: " + (string)transition + " second(s).");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid value(s) detected ...");
        }
    }
 
    touch_start(integer number)
    {
        integer result;
 
        if (switch = !switch)
        {
            result = osReplaceRegionEnvironment(transition, daycycle_a, daylenght, dayoffset, altitude1, altitude2, altitude3);
            llSay(PUBLIC_CHANNEL, "daycycle_a: " + daycycle_a);
        }
 
        else
        {
            result = osReplaceRegionEnvironment(transition, daycycle_b, daylenght, dayoffset, altitude1, altitude2, altitude3);
            llSay(PUBLIC_CHANNEL, "daycycle_b: " + daycycle_b);
        }
 
        if (daycycle_a == "" || daycycle_a == NULL_KEY || daycycle_b == "" || daycycle_b == NULL_KEY)
        {
            llSay(PUBLIC_CHANNEL, "The current environment is used as a base.");
        }
 
        if (result > 0)
        {
            llSay(PUBLIC_CHANNEL, "The Region Environment was replaced with success.");
        }
 
        else if (result < 0)
        {
            llSay(PUBLIC_CHANNEL, "The Region Environment was replaced without success.");
        }
    }
}

/* With all errors message:

//
// osReplaceRegionEnvironment Script Example
// Author: djphil
//
 
// Can be daycycle's name in object's inventory or the daycycle uuid
string daycycle_a = "Daycycle_A";
string daycycle_b = "Daycycle_B";
 
float daylenght = 10.0; // Range 4.0 to 168.0
float dayoffset = 5.0;  // UTC Range -11.5 to 11.5
 
// Range 1.0 to 4000.0, If 0.0, current is used
// Please keep them sorted (1 < 2 < 3)
float altitude1 = 1000.0;
float altitude2 = 2000.0;
float altitude3 = 3000.0;
 
integer transition = 3;
integer switch;
 
integer check_values()
{
    if (daylenght < 4.0 || daylenght > 168.0) return FALSE;
    if (dayoffset < -11.5 || daylenght > 11.5) return FALSE;
    if (altitude1 < 1.0 || altitude1 > 4000.0) return FALSE;
    if (altitude2 < 1.0 || altitude2 > 4000.0) return FALSE;
    if (altitude2 < 1.0 || altitude2 > 4000.0) return FALSE;
    if (altitude1 > altitude2) return FALSE;
    if (altitude1 > altitude3) return FALSE;
    if (altitude2 > altitude3) return FALSE;
    return TRUE;
}
 
default
{
    state_entry()
    {
        if (check_values() == TRUE)
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osReplaceRegionEnvironment usage.");
            llSay(PUBLIC_CHANNEL, "daylenght: " + (string)daylenght);
            llSay(PUBLIC_CHANNEL, "dayoffset: " + (string)dayoffset);
            llSay(PUBLIC_CHANNEL, "altitude1: " + (string)altitude1);
            llSay(PUBLIC_CHANNEL, "altitude2: " + (string)altitude2);
            llSay(PUBLIC_CHANNEL, "altitude3: " + (string)altitude3);
            llSay(PUBLIC_CHANNEL, "Transition: " + (string)transition + " second(s).");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid value(s) detected ...");
        }
    }
 
    touch_start(integer number)
    {
        integer result;
 
        if (switch = !switch)
        {
            result = osReplaceRegionEnvironment(transition, daycycle_a, daylenght, dayoffset, altitude1, altitude2, altitude3);
            llSay(PUBLIC_CHANNEL, "daycycle_a: " + daycycle_a);
        }
 
        else
        {
            result = osReplaceRegionEnvironment(transition, daycycle_b, daylenght, dayoffset, altitude1, altitude2, altitude3);
            llSay(PUBLIC_CHANNEL, "daycycle_b: " + daycycle_b);
        }
 
        if (daycycle_a == "" || daycycle_a == NULL_KEY || daycycle_b == "" || daycycle_b == NULL_KEY)
        {
            llSay(PUBLIC_CHANNEL, "The current environment is used as a base.");
        }
 
        if (result > 0)
        {
            llSay(PUBLIC_CHANNEL, "The Region Environment was replaced with success.");
        }
 
        else if (result < 0)
        {
            llSay(PUBLIC_CHANNEL, "The Region Environment was replaced without success.");
 
            if (result == -3)
            {
                llSay(PUBLIC_CHANNEL, "You have no estate rights ...");
            }
 
            if (result == -4)
            {
                llSay(PUBLIC_CHANNEL, "The daycycle asset is not found ...");
            }
 
            if (result == -5)
            {
                llSay(PUBLIC_CHANNEL, "Fail to decode daycycle asset ...");
            }
        }
    }
}
*/