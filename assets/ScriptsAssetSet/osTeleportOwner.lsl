/*
osTeleportOwner(integer regionX, integer regionY, vector position, vector lookat)

osTeleportOwner(string regionName, vector position, vector lookat)
osTeleportOwner(vector position, vector lookat)
Teleports the owner of the object containing the script to the specified location. The first variant is able to teleport to any addressable region, including hypergrid destinations. The second variant teleports to a region in the local grid; the region coordinates are specified as region cells (not as global coordinates based on meters). The third variant teleports within the current region.

These functions have been added to OpenSimulator with commit r/14355 on November 16, 2010.

See also osTeleportAgent.
Threat Level 	None
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	5 seconds
Example(s)
*/

// Teleporting HUD script
// Put this script into a prim and attach it as a HUD
 
list Destinations = [ "Welcome Area",
    "hg.osgrid.org:80",
    "ucigrid00.nacs.uci.edu:8002:Gateway 3000",
    "ucigrid00.nacs.uci.edu:8002:Gateway 7000" ];
list RegionNames;
 
default {
    state_entry() {
        // Derive region names from destinations
        integer i;
        for (i = 0; i < llGetListLength(Destinations); ++i) {
            string destination = llList2String(Destinations, i);
            list parts = llParseString2List(destination, [":"], []);
            integer numParts = llGetListLength(parts);
            if (numParts > 2)       // Hypergrid address with region name
                RegionNames += [ llList2String(parts, 2) ];
            else if (numParts == 2) // Hypergrid address without region
                RegionNames += [ llList2String(parts, 0) ];
            else                    // Destination in the local grid
                RegionNames += destination;
        }
    }
    touch_start(integer number) {
        llListen(-1234, "", llGetOwner(), "");
        llDialog(llDetectedKey(0), "Choose a destination:", RegionNames, -1234);
    }
    listen(integer channel, string name, key id, string message) {
        integer index = llListFindList(RegionNames, [ message ]);
        string destination = llList2String(Destinations, index);
        llOwnerSay("Teleporting to " + destination);
        osTeleportOwner(destination, <128, 128, 20>, ZERO_VECTOR);
    }
}