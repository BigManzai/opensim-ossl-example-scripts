/*
key osGetRegionMapTexture(string regionNameOrID)
This function retrieves the key of the texture used to represent a region on the world map. regionNameOrID can be the region UUID or its name. If empty string, will return the current region map texture key, but in that case you should use osGetMapTexture().
Threat Level 	High
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	1 seconds
Example(s)
*/


//Example osGetRegionMapTexture

default {
    state_entry() {
        key map = osGetRegionMapTexture(llGetRegionName());
        llSetTexture(map, 0);
    }
}