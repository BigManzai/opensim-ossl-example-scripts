/*
osSetProjectionParams(integer projection, key texture, float fov, float focus, float ambiance)
osSetProjectionParams(integer linknumber, integer projection, key texture, float fov, float focus, float ambiance)
osSetProjectionParams(key prim, integer projection, key texture, float fov, float focus, float ambiance)

Sets a prim projector parameters, argument projection is TRUE(1) or FALSE(0). The prim can be the host prim on first variant, a prim on the linkset or a prim with giving UUID.

In last case Threat level is high and controlled by Allow_osSetProjectionParams. The other cases have no threat level check. Note that you may need to set the prim light also.

Threat Level 	No threat level specified
Permissions 	No permissions specified
Delay 	0 seconds

Example(s)

These examples will control the projection map in the host prim, a prim on the linkset and another prim identified by it's uuid.  
*/

//
// osSetProjectionParams Script Example
// Author: djphil
//
 
// These variables correspond to the settings found in the "Features" tab of the build editor
float fov = 1.5;        // Range 0.0 to 3.0
float focus = 15.0;     // Range -20.0 to 20.0
float ambiance = 0.4;   // Range 0.0 yp 1.0
 
// Can be texture's name in object's inventory or the texture uuid
key texture = "00000000-0000-2222-3333-100000001001";
 
integer power;
 
integer check_values()
{
    if (fov < 0.0 || fov > 3.0) return FALSE;
    if (focus < -20.0 || focus > 20.0) return FALSE;
    if (ambiance < 0.0 || ambiance > 1.0) return FALSE;
    return TRUE;
}
 
default
{
    state_entry()
    {
        if (check_values() == TRUE)
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osSetProjectionParams usage.");
            llSay(PUBLIC_CHANNEL, "fov: " + (string)fov);
            llSay(PUBLIC_CHANNEL, "focus: " + (string)focus);
            llSay(PUBLIC_CHANNEL, "ambiance: " + (string)ambiance);
            llSay(PUBLIC_CHANNEL, "texture: " + (string)texture);
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid value(s) detected ...");
        }
    }
 
    touch_start(integer number) 
    {
        power = !power;
        osSetPrimitiveParams(llGetKey(),[PRIM_POINT_LIGHT, power, <1.0, 1.0, 1.0>, 1.0, 5.0, 0.5]);
        osSetProjectionParams(power, texture, fov, focus, ambiance);
    }
}

/* With a link number:

//
// osSetProjectionParams Script Example
// Author: djphil
//
 
// These variables correspond to the settings found in the "Features" tab of the build editor
float fov = 1.5;        // Range 0.0 to 3.0
float focus = 15.0;     // Range -20.0 to 20.0
float ambiance = 0.4;   // Range 0.0 yp 1.0
 
// Link number of other primitive that we want to control
integer link = 2;
 
// Can be texture's name in object's inventory or the texture uuid
key texture = "00000000-0000-2222-3333-100000001001";
 
integer power;
 
integer check_values()
{
    if (fov < 0.0 || fov > 3.0) return FALSE;
    if (focus < -20.0 || focus > 20.0) return FALSE;
    if (ambiance < 0.0 || ambiance > 1.0) return FALSE;
    return TRUE;
}
 
default
{
    state_entry()
    {
        if (check_values() == TRUE)
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osSetProjectionParams usage.");
            llSay(PUBLIC_CHANNEL, "fov: " + (string)fov);
            llSay(PUBLIC_CHANNEL, "focus: " + (string)focus);
            llSay(PUBLIC_CHANNEL, "ambiance: " + (string)ambiance);
            llSay(PUBLIC_CHANNEL, "link: " + (string)link);
            llSay(PUBLIC_CHANNEL, "texture: " + (string)texture);
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid value(s) detected ...");
        }
    }
 
    touch_start(integer number) 
    {
        power = !power;
        llSetLinkPrimitiveParamsFast(link, [PRIM_POINT_LIGHT, power, <1.0, 1.0, 1.0>, 1.0, 5.0, 0.5]);
        osSetProjectionParams(link, power, texture, fov, focus, ambiance);
    }
}
*/

/* With a primitive uuid:

//
// osSetProjectionParams Script Example
// Author: djphil
//
 
// These variables correspond to the settings found in the "Features" tab of the build editor
float fov = 1.5;        // Range 0.0 to 3.0
float focus = 15.0;     // Range -20.0 to 20.0
float ambiance = 0.4;   // Range 0.0 yp 1.0
 
// uuid of other primitive that we want to control
key target = "8c68368f-3a10-4473-abb3-f4e91a42013e";
 
// Can be texture's name in object's inventory or the texture uuid
key texture = "00000000-0000-2222-3333-100000001001";
 
integer power;
 
integer check_values()
{
    if (fov < 0.0 || fov > 3.0) return FALSE;
    if (focus < -20.0 || focus > 20.0) return FALSE;
    if (ambiance < 0.0 || ambiance > 1.0) return FALSE;
    return TRUE;
}
 
default
{
    state_entry()
    {
        if (check_values() == TRUE)
        {
            llSay(PUBLIC_CHANNEL, "Touch to see osSetProjectionParams usage.");
            llSay(PUBLIC_CHANNEL, "fov: " + (string)fov);
            llSay(PUBLIC_CHANNEL, "focus: " + (string)focus);
            llSay(PUBLIC_CHANNEL, "ambiance: " + (string)ambiance);
            llSay(PUBLIC_CHANNEL, "target: " + (string)target);
            llSay(PUBLIC_CHANNEL, "texture: " + (string)texture);
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "Invalid value(s) detected ...");
        }
    }
 
    touch_start(integer number) 
    {
        power = !power;
        osSetPrimitiveParams(target,[PRIM_POINT_LIGHT, power, <1.0, 1.0, 1.0>, 1.0, 5.0, 0.5]);
        osSetProjectionParams(target, power, texture, fov, focus, ambiance);
    }
}
*/