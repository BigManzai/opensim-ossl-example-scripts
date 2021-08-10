/*
osTeleportAgent(key agent, integer regionX, integer regionY, vector position, vector lookat)

osTeleportAgent(key agent, string regionName, vector position, vector lookat)
osTeleportAgent(key agent, vector position, vector lookat)
Teleports an agent to the specified location.

The first variant is able to teleport to any addressable region, including hypergrid destinations.

The second variant teleports to a region in the local grid; the region coordinates are specified as region cells (not as global coordinates based on meters).

The third variant teleports within the current region.

For osTeleportAgent() to work, the owner of the prim containing the script must be the same as the parcel that the avatar is currently on.

If this isn't the case then the function fails silently.

See also osTeleportOwner, and if you receive an error see how to enable OS functions.
Threat Level 	Severe
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Extra Delay 	0.5 seconds
Example(s)
*/

// Example osTeleportAgent Script
//
// Set Destination as described below, There are a Few Options depending on Application:
// IN GRID Teleport 
// Destination = "1000,1000"; = Using In-Grid Map XXXX,YYYY coordinates
// Destination = "RegionName"; = Using RegionName
// HyperGrid Teleport (region must be HG Enabled)
// Destination = "TcpIpAddr:Port:RegionName"; = Using the Target/Destination IP Address
// Destination = "DNSname:Port:RegionName"; = Using the Target/Detination DNSname
// Note: RegionName is Optionally Specified to deliver Avatar to specific region in an instance.
// 
// ========================================================================================
// === SET DESTINATION INFO HERE ===
//
string Destination = "LBSA Plaza"; // your target destination here (SEE NEXT LINES) Can Be
vector LandingPoint = <128.0, 128.0, 50.0>; // X,Y,Z landing point for avatar to arrive at
vector LookAt = <0.0, 1.0, 0.0>; // which way they look at when arriving
//
default
{
  on_rez(integer start_param)
  {
    llResetScript();
  }
  changed(integer change) // something changed, take action
  {
    if(change & CHANGED_OWNER)
      llResetScript();
    else if (change & 256) // that bit is set during a region restart
      llResetScript();
  }
  state_entry()
  {
    llWhisper(0, "OS Teleportal Active");
  }
  touch_start(integer num_detected) 
  {
    key avatar = llDetectedKey(0);
    llInstantMessage(avatar, "Teleporting you to : "+Destination);
    osTeleportAgent(avatar, Destination, LandingPoint, LookAt); 
  }
}