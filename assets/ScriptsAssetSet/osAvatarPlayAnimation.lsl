/*
osAvatarPlayAnimation(key avatar, string animation)
This function causes an animation to be played on the specified avatar.

The variable animation must be the name of an animation within the task inventory. For security reasons, UUIDs are not allowed here.

Instead of the name of an animation in the prim's inventory, you can also use the names of the viewer's built-in animations.

osAvatarPlayAnimation does not perform any security checks or request animation permissions from the targeted avatar.
Threat Level 	VeryHigh
Permissions 	Use of this function is always disabled by default
Delay 	0 seconds
Example(s)
*/

//Example Usage: 
default { 
  touch_start(integer num) 
  {
    string anim = llGetInventoryName(INVENTORY_ANIMATION, 0);
    osAvatarPlayAnimation(llDetectedKey(0), anim);
  }
}

/*
Notes
When using this function in an object that requires the user to sit on the object (like a chair,or a poseball), you will need to stop the sit animation by including the following snippet: 

changed(integer change)
{
  if (change & CHANGED_LINK)
  {
    key user = llAvatarOnSitTarget();
    osAvatarStopAnimation(user, "sit");
    osAvatarPlayAnimation(user, anim);        
  }
}
*/