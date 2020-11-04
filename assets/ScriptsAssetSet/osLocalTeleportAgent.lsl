/*
osLocalTeleportAgent(key agentID, vector newPosition, vector newVelocity, vector newLookat, integer optionFlags)

Caution ! still experimental, subject to changes

Teleports an avatar with uuid agentID to the specified newPosition within same region.
It ignores region teleport settings like Telehub or landpoint

The avatar must have rights to enter the target position.
The avatar must had granted PERMISSION_TELEPORT to the script or the owner of the prim containing the script must also be owner of the parcel where the avatar is currently on.
The function will fail silently if conditions are not meet.

- If newPosition is outside the region the target will be at nearest region border.
- newVelocity, if selected with optionFlags bit 0 set, should set a avatar velocity, but may only work with ubOde Physics engine, even so results may be a bit unpredictable. It will stop if the avatar collides with anything at destination or if the user presses a movement key. It also has a fast decay. This behavior will need future changes. If bit 0 is not set, current velocity is kept
- newLookAt, if selected with optionFlags bit 1 set, changes the avatar look at direction. Bit 2 can alternatively be used to align the look at to the velocity, if that is not zero vector. Camera direction will depend on viewer camera state at teleport time (like camera attached to avatar or free). Look at is the direction the avatar head will face. Body will face close to that, depending on viewers. Look At Z component is zero. If both bits are not set, the look at direction will be the current camera direction

- OptionFlags is a bit field:
bit 0 (OS_LTPAG_USEVEL): use newVelocity
bit 1 (OS_LTPAG_USELOOKAT): use newLookAt
bit 2 (OS_LTPAG_ALGNLV): align lookat to velocity if it is not zero vector
bit 3 (OS_LTPAG_FORCEFLY): force fly.
bit 4 (OS_LTPAG_FORCENOFLY): force no fly. Will not work if viewer has fly after teleport option set

if both bits 1 and 2 are set bit 2 is ignored
if both bits 3 and 4 are set bit 4 is ignored
Threat Level 	None
Permissions 	see description
Delay 	0 seconds
Example(s)
*/

//
// osLocalTeleportAgent Script Example
//
 
vector LandingPoint = <128,128,50>; // X,Y,Z landing point for avatar to arrive at
vector TPvel = <0,0,0>;
vector LookAt = <1,1,0>; // which way they look at when arriving
 
//
default
{
  state_entry()
  {
    llWhisper(0, "OS Local Teleport Active");
  }
  touch_start(integer num_detected) 
  {
    key avatar = llDetectedKey(0);
    llInstantMessage(avatar, "Teleporting you to : " + (string)LandingPoint);
    osLocalTeleportAgent(avatar, LandingPoint, TPvel, LookAt, OS_LTPAG_USELOOKAT | OS_LTPAG_FORCEFLY); 
  }
}