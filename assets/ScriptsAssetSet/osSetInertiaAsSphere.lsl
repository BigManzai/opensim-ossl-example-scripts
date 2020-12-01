/*
osSetInertiaAsSphere(float mass, float radius, vector centerOfMass)
Allows creators to set the link set total mass, center of mass and moment of inertia. Moment of inertia will be the one of a sphere of radius radius, placed at the center of mass. Call osClearInertia to undo.

Caution ! Only supported by ubOde for now
Arguments:

    Mass new total mass of link set
    centerOfMass new location of center of mass relative to root prim in local frame
    radius radius of a sphere used to calculate the new inertia 

Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osSetInertiaAsSphere Script Example
//
 
default
{
    state_entry()
    {
        //...
        osSetInertiaAsSphere(100.0, 10.0, <1.0, -0.5, 0.0>);
        //...
    }
}