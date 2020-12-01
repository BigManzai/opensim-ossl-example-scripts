/*
osSetInertiaAsCylinder(float mass, float radius, float length, vector centerOfMass, rotation rot)
Allows creators to set the link set total mass, center of mass and moment of inertia. Moment of inertia will be the one of a cylinder of radius and length, placed at the center of mass and rotated by rot in the root prim local frame. Call osClearInertia to undo.

Caution ! Only supported by ubOde for now
Arguments:

    Mass new total mass of link set
    centerOfMass new location of center of mass relative to root prim in local frame
    radius radius of a cylinder used to calculate the new inertia
    length length of a cylinder used to calculate the new inertia
    rot rotation of the cylinder in the root prim local frame. 

Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osSetInertiaAsCylinder Script Example
//
 
default
{
    state_entry()
    {
        ...
        osSetInertiaAsCylinder(20.0,  0.5, 2.0, <-0.5, 0.5, 1.0>, ZERO_ROTATION);
        ...
    }
}