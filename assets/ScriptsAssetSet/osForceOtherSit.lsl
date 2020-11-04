/*
osForceOtherSit(key avatar)

osForceOtherSit(key avatar, key target)
Forces a sit of targeted avatar onto prim.

    avatar - The key of the avatar to which to attach. Nothing happens if this is not a UUID.
    target - The key of another prim to sit avatar on. Nothing happens if this is not a UUID of prim in region. 

In OpenSimulator 0.8.0.1.
Threat Level 	VeryHigh
Permissions 	Use of this function is always disabled by default
Delay 	0 seconds
Example(s)
*/

//Simple example for osForceOtherSit
 
default
{
    state_entry()
    {
        llSitTarget(<0.0, 0.0, 1.0>, ZERO_ROTATION); //The vector's components must not all be set to 0 for effect to take place.
    }
 
     touch_start(integer num)
    {
      osForceOtherSit(llDetectedKey(0));
    }
}