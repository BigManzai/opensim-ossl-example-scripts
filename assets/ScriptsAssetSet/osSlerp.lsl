/*
rotation osSlerp(rotation a, rotation b, float ratio);

Slerp is shorthand for spherical linear interpolation, 
introduced by Ken Shoemake in the context of quaternion interpolation for the purpose of animating 3D rotation.
It refers to constant-speed motion along a unit-radius great circle arc, given the ends and an interpolation parameter between 0 and 1.
osSlerp Returns a rotation that is the spherical interpolation of a and b, according to ratio that can be from 0.0 (result is a) to 1.0 (result is b)

Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osSlerp Script Example
// Author: djphil
//
 
rotation rot_a;
rotation rot_b;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osSlerp usage.");
    }
 
    touch_start(integer number)
    {
        float ratio;
        rot_a = rot_b;
        rot_b = llEuler2Rot(<llFrand(PI), llFrand(PI), llFrand(PI)>);;
        integer counter = 10;
 
        do {
            ratio += 0.1;
            llSetLinkPrimitiveParamsFast(LINK_THIS, [PRIM_ROTATION, osSlerp(rot_a, rot_b, ratio)]);
            llSleep(0.1);
        }
        while(--counter);
    }
}

/* With a couple of scripts:

//
// osSlerp Script Example
// Author: djphil
//
 
key target = "1209ffb3-3d27-4f77-bf09-d1da8bd36093";
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch the blue primitive to see osSlerp usage.");
        llSetColor(<0.0, 0.5, 1.0>, ALL_SIDES);
    }
 
    touch_start(integer number)
    {
        rotation rot = llEuler2Rot(<llFrand(PI), llFrand(PI), llFrand(PI)>);
        llSetLinkPrimitiveParamsFast(LINK_THIS, [PRIM_ROTATION, rot]);
        osMessageObject(target, (string)rot);
    }
}
*/

/*
//
// osSlerp Script Example
// Author: djphil
//
 
rotation rot_a;
rotation rot_b;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch the blue primitive to see osSlerp usage.");
        llSetColor(<1.0, 0.0, 1.0>, ALL_SIDES);
    }
 
    dataserver(key uuid, string data)
    {
        float ratio;
        rot_a = rot_b;
        rot_b = (rotation)data;
        integer counter = 10;
 
        do {
            ratio += 0.1;
            llSetLinkPrimitiveParamsFast(LINK_THIS, [PRIM_ROTATION, osSlerp(rot_a, rot_b, ratio)]);
            llSleep(0.1);
        }
        while(--counter);
    }
}
*/

/* A more complex example:

//
// osSlerp Script Example
// Author: Kayaker Mangic Sept 2019
//
 
// This isn't the right way to wiggle a stick (llSetKeyframedMotion is better) but it does demostrate osSlerp working!
// Put this script in a prim that is long in the X direction, it will wave it's tip around in a figure 8 (infinity) pattern.
 
rotation lastrot;   // slerp between these two rotations
rotation nextrot;   // slerp between these two rotations
float t = 0.0;      // parameter for calculating angles to slerp between
float ratio = 1.0;  // does 10 slerp steps of 0.1 between last and next
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osSlerp usage.");
    }
 
    touch_start(integer number)
    {
        if (switch = !switch)
        {
            llSetTimerEvent(1.0);
        }
 
        else
        {
            llSetTimerEvent(0.0);
        }
    }
 
    timer()
    {
        integer counter = 10;
 
        while(--counter)
        {
            ratio += 0.1;
 
            if (ratio > 1.0)
            {
                ratio = 0.1;                                    // start over
                lastrot = nextrot;                              // save the last rotation
                t += PI / 10.0;                                 // bump t to generate points on a Lissajous curve
                float y = llSin(t);                             // this will generate points around an
                float z = llSin(2.0 * t);                       // infinity sympol
                vector fwd = llVecNorm(<2.0, y, z>);            // tip of this vector carves out the shape
                vector lft = llVecNorm(<0.0, 0.0, 1.0> % fwd);  // convert that into a rotation
                nextrot = llAxes2Rot(fwd, lft, fwd % lft);      // this will be the next rotation to slerp to
            }
 
            rotation rot = osSlerp(lastrot, nextrot, ratio);
            llSetLinkPrimitiveParamsFast(LINK_THIS, [PRIM_ROTATION, rot]);
            llSleep(0.09);
        }
    }
}
*/