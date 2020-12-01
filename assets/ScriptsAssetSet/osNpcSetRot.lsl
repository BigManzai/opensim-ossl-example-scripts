/*
osNpcSetRot(key npc, rotation rot)
Set the rotation of the avatar. Only setting the rotation in the Z plane in Euler rotation will have any meaningful effect (turning the avatar to point in one direction or another). Setting X or Y Euler values will result in the avatar rotating in an undefined manner.
Threat Level 	High
Permissions 	${OSSL|osslNPC}
Delay 	0 seconds
Notes
This function was added in 0.7.2-post-fixes 
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