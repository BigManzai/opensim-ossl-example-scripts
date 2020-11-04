/*
osClearInertia()
clears the effect of osSetInertia* functions. Link set total mass, center of mass and inertia will be the values estimated by default from the link set parts.

Caution ! Only supported by ubOde for now

Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s) 
*/

// Example of osClearInertia
 
default
{
    state_entry()
    {
        //...
        osClearInertia();
        //...
    }
}