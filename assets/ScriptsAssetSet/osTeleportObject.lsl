/*
integer osTeleportObject(key objectID, vector targetPos, rotation rot, integer flags)

Arguments:

    objectID the id of the linkset to teleport
    targetPos target position in region local coords 

    rot a rotation.
    flags 

Flags:

    OSTPOBJ_NONE it is just 0
    OSTPOBJ_STOPATTARGET object is stopped at destination
    OSTPOBJ_STOPONFAIL stops at start point if tp fails (still does nothing)
    OSTPOBJ_SETROT the rotation is the final object rotation, otherwise is a added rotation 

Threat Level 	Severe
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// Example of osTeleportObject
 
default
{
    state_entry()
    {
       llSay(0, "Script running");
    }
    touch_start(integer num)
    {
        // target position in region local coords
        vector target =<873.911926, 879.844910, 21.332354>;  
        rotation rot =<0,0,0.707,.707>;
        osTeleportObject(llGetKey(),target,rot,1);
    }
}