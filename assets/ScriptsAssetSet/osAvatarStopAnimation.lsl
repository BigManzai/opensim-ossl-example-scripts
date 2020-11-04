/*
osAvatarStopAnimation(key avatar, string animation)
This function stops the specified animation if it is playing on the avatar given.

The value avatar is a UUID, and the animation value is either the name of an animation in the task inventory or the UUID of an animation.

If the specified avatar is not logged in or on the same sim as the script, then osAvatarStopAnimation silently fails.
Threat Level 	VeryHigh
Permissions 	Use of this function is always disabled by default
Delay 	0 seconds
Example(s)
*/

// ----------------------------------------------------------------
// Example / Sample Script to show function use.
//
// Script Title:    osAvatarStopAnimation.lsl
// Script Author:   WhiteStar Magic
// Threat Level:    VeryHigh
// Script Source:   
//
// Notes: See Script Source reference for more detailed information
// This sample is full opensource and available to use as you see fit and desire.
// Threat Levels only apply to OSSL & AA Functions
//================================================================
// Inworld Script Line:    osAvatarStopAnimation(key targetuuid, string anim);
//
// NOTE:  anim can be the Name (if contained in prim) or UUID of the animation
//
default
{
    state_entry()
    {
        llSay(0, "Touch to have Avatar STOP using the contained animation with osAvatarStopAnimation ");
    }
 
    touch_end(integer num)
    {
        string anim = llGetInventoryName(INVENTORY_ANIMATION, 0);
        if(anim == "") 
        {
            llOwnerSay("ERROR: Animation Missing. Please drop an animation in the prim with this script");
            return;
        }
        else
        {
            llOwnerSay("Now Playing "+anim+" animation");
            osAvatarStopAnimation(llDetectedKey(0), anim);
        }
    }
}