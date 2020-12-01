/*
osSetInertiaAsBox(float mass, vector boxSize, vector centerOfMass, rotation rot)
Allows creators to set the link set total mass, center of mass and moment of inertia. Moment of inertia will be the one of a box of size boxSize, placed at the center of mass and rotated by rot in the root prim local frame. Call osClearInertia to undo.


Caution ! Only supported by ubOde for now
Arguments:

    Mass new total mass of link set
    centerOfMass new location of center of mass relative to root prim in local frame
    boxSize size of the box used to calculate the new inertia
    rot the rotation of that box in local frame 

Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osSetInertiaAsBox Script Example
//
 
default
{
    state_entry()
    {
        //...
        osSetInertiaAsBox(1000.0, <2.0, 1.0, 0.5>, <-0.5, 0.0, 0.0>, ZERO_ROTATION);
        //... 
    }
}