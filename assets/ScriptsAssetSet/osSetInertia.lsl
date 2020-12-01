/*
osSetInertia(float mass, vector centerOfMass, vector principalInertiaScaled, rotation InertiaRot)
Allows creators to set the major physics dynamic proprieties, replacing the values estimated from the linkset parts. Call osClearInertia to undo

Caution ! Only supported by ubOde for now
Arguments:

    Mass total mass of link set
    centerOfMass location of center of mass relative to root prim in local frame
    principalInertiaScaled moment of inertia relative to principal axis and center of mass,Ixx, Iyy, Izz divided by mass so it can be changed independently
    InertiaRot rotation of the inertia, relative to local axis 

Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
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