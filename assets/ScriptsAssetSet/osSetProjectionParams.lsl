/*
osSetProjectionParams(integer projection, key texture, float fov, float focus, float amb)

osSetProjectionParams(integer linknumber, integer projection, key texture, float fov, float focus, float amb)
osSetProjectionParams(key prim, integer projection, key texture, float fov, float focus, float amb)
Sets a prim projector parameters, argument projection is TRUE(1) or FALSE(0). The prim can be the host prim on first variant, a prim on the linkset or a prim with giving UUID. In last case Threat level is high and controlled by Allow_osSetProjectionParams. The other cases have no threat level check. Note that you may need to set the prim light also.
Threat Level 	No threat level specified
Permissions 	No permissions specified
Delay 	0 seconds
Example(s)
These examples will control the projection map in the host prim, a prim on the linkset and another prim identified by it's uuid. 
*/

// Example of osSetProjectionParams control this prim
 
// These variables correspond to the settings found in the "Features" tab of the build editor
float FOV = 1.5;        // Values 0.00 - 3.00
float Focus = 15.0;     // Values -20.00 - 20.00
float Ambiance = 0.4;   // Values 0.00 - 1.00
 
// UUID of the texture to project
key Texture = "b4c6b075-4940-4270-bb10-d293fd6f8091";
 
integer Power;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Script running ...");
    }
 
    touch_start(integer number) 
    {
        Power =! Power;
        osSetPrimitiveParams(llGetKey(),[PRIM_POINT_LIGHT, Power, <1.0, 1.0, 1.0>, 1.0, 5.0, 0.5]);
        osSetProjectionParams(Power, Texture, FOV, Focus, Ambiance);
    }
}

// ************************************************************

/*
// Example of osSetProjectionParams control the prim with link number 2
 
// These variables correspond to the settings found in the "Features" tab of the build editor
float FOV = 1.5;        // Values 0.00 - 3.00
float Focus = 15.0;     // Values -20.00 - 20.00
float Ambiance = 0.4;   // Values 0.00 - 1.00
 
// UUID of the texture to project
key Texture = "b4c6b075-4940-4270-bb10-d293fd6f8091";
 
// Link number of prim that we want to control
integer Link = 2;
 
integer Power;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Script running ...");
    }
 
    touch_start(integer number) 
    {
        Power =! Power;
        llSetLinkPrimitiveParamsFast(Link, [PRIM_POINT_LIGHT, Power, <1.0, 1.0, 1.0>, 1.0, 5.0, 0.5]);
        osSetProjectionParams(Link, Power, Texture, FOV, Focus, Ambiance);
    }
}
*/

// ************************************************************

/*
// Example of osSetProjectionParams control the remote prim
 
// These variables correspond to the settings found in the "Features" tab of the build editor
float FOV = 1.5;        // Values 0.00 - 3.00
float Focus = 15.0;     // Values -20.00 - 20.00
float Ambiance = 0.4;   // Values 0.00 - 1.00
 
// UUID of the texture to project
key Texture = "b4c6b075-4940-4270-bb10-d293fd6f8091";
 
// UUID of other prim that we want to control
key Remote = "1721c368-e468-46da-bcae-0bdd3e647a2b";
 
integer Power;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Script running ...");
    }
 
    touch_start(integer number) 
    {
        Power =! Power;
        osSetPrimitiveParams(Remote,[PRIM_POINT_LIGHT, Power, <1.0, 1.0, 1.0>, 1.0, 5.0, 0.5]);
        osSetProjectionParams(Remote, Power, Texture, FOV, Focus, Ambiance);
    }
}
*/