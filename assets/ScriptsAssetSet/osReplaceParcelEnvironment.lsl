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
// osReplaceParcelEnvironment Script Example
// Author: djphil
//
 
// Can be daycycle's name in object's inventory or the daycycle uuid
string daycycle_a = "Daycycle_A";
string daycycle_b = "Daycycle_B";
integer transition = 3;
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osReplaceParcelEnvironment usage.");
        llSay(PUBLIC_CHANNEL, "Transition: " + (string)transition + " second(s).");
    }
 
    touch_start(integer number)
    {
        integer result;
 
        if (switch =! switch)
        {
            result = osReplaceParcelEnvironment(transition, daycycle_a);
            llSay(PUBLIC_CHANNEL, "daycycle_a: " + daycycle_a);
        }
 
        else
        {
            result = osReplaceParcelEnvironment(transition, daycycle_b);
            llSay(PUBLIC_CHANNEL, "daycycle_b: " + daycycle_b);
        }
 
        if (daycycle_a == "" || daycycle_a == NULL_KEY || daycycle_b == "" || daycycle_b == NULL_KEY)
        {
            llSay(PUBLIC_CHANNEL, "The environment of the parcel has been deleted");
        }
 
        if (result > 0)
        {
            llSay(PUBLIC_CHANNEL, "The Parcel Environment was replaced with success.");
        }
 
        else if (result < 0)
        {
            llSay(PUBLIC_CHANNEL, "The Parcel Environment was replaced without success.");
        }
    }
}

/* With all errors message:

//
// osReplaceParcelEnvironment Script Example
// Author: djphil
//
 
// Can be daycycle's name in object's inventory or the daycycle uuid
string daycycle_a = "Daycycle_A";
string daycycle_b = "Daycycle_B";
integer transition = 3;
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osReplaceParcelEnvironment usage.");
        llSay(PUBLIC_CHANNEL, "Transition: " + (string)transition + " second(s).");
    }
 
    touch_start(integer number)
    {
        integer result;
 
        if (switch =! switch)
        {
            result = osReplaceParcelEnvironment(transition, daycycle_a);
            llSay(PUBLIC_CHANNEL, "daycycle_a: " + daycycle_a);
        }
 
        else
        {
            result = osReplaceParcelEnvironment(transition, daycycle_b);
            llSay(PUBLIC_CHANNEL, "daycycle_b: " + daycycle_b);
        }
 
        if (daycycle_a == "" || daycycle_a == NULL_KEY || daycycle_b == "" || daycycle_b == NULL_KEY)
        {
            llSay(PUBLIC_CHANNEL, "The environment of the parcel has been deleted");
        }
 
        if (result > 0)
        {
            llSay(PUBLIC_CHANNEL, "The Parcel Environment was replaced with success.");
        }
 
        else if (result < 0)
        {
            llSay(PUBLIC_CHANNEL, "The Parcel Environment was replaced without success.");
 
            if (result == -1)
            {
                llSay(PUBLIC_CHANNEL, "The \"Parcel Owners May Override Environment\" isn't checked ...");
                llSay(PUBLIC_CHANNEL, "(See menu \"World/Region Details\" on tab \"Environment\")");
            }
 
            if (result == -2)
            {
                llSay(PUBLIC_CHANNEL, "The parcel is not found (This is a bad thingy) ...");
            }
 
            if (result == -3)
            {
                llSay(PUBLIC_CHANNEL, "You have no rights to edit parcel ...");
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