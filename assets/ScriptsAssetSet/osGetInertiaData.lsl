/*
list osGetInertiaData()
returns a list:

[
float mass, // the total mass of the linkset
vector center, // the center of mass offset relative to root prim
vector Idiag, // diagonal elements of inertia
vector Ioffdiag // off diagonal elements of inertia
]

mass maybe -1 if inertia data is invalid or not available

Caution ! Only supported by ubOde for now

Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osGetInertiaData Script Example
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osGetInertiaData usage.");
        llSetStatus(STATUS_PHYSICS, TRUE);
    }
 
    touch_start(integer number)
    {
        list buffer = osGetInertiaData();
        float mass = llList2Float(buffer, 0);
        vector center = llList2Vector(buffer, 1);
        vector Idiag = llList2Vector(buffer, 2);
        vector Ioffdiag = llList2Vector(buffer, 3);
 
        if (mass == -1)
        {
            llSay(PUBLIC_CHANNEL, "The inertia data is invalid or not available ...");
        }
 
        else
        {
            string text;
            text += "\n• The total mass of the linkset is " + (string)mass;
            text += "\n• The center of mass offset relative to root prim is " + (string)center;
            text += "\n• Diagonal elements of inertia is " + (string)Idiag;
            text += "\n• Off diagonal elements of inertia is " + (string)Ioffdiag;
            llSay(PUBLIC_CHANNEL, text);
        }
    }
}