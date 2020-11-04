/*
list osGetRegionStats()
Returns a list of float values representing a number of region statistics (many of the values shown in the "Stats Bar" of LL-based clients). Provides similar functionality to llGetRegionFPS() and llGetRegionTimeDilation(), but returns 21 statistics simultaneously.

The elements in the list may be referred to by the following new LSL constants:
Threat Level 	Moderate
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/


// llGetRegionStats() example script
//
// Displays certain region statistics in hovertext above the prim containing the script.
//
default
{
    state_entry()
    {
        llSetTimerEvent(5.0);
    }
 
    timer()
    {
        list Stats = osGetRegionStats();
        string s = "Sim FPS: " + (string)llList2Float( Stats, STATS_SIM_FPS) + "\n";
        s += "Physics FPS: " + (string)llList2Float( Stats, STATS_PHYSICS_FPS) + "\n";
        s += "Time Dilation: " + (string)llList2Float( Stats, STATS_TIME_DILATION) + "\n";
        s += "Root Agents: " + (string)llList2Integer( Stats, STATS_ROOT_AGENTS) + "\n";
        s += "Child Agents: " + (string)llList2Integer( Stats, STATS_CHILD_AGENTS) + "\n";
        s += "Total Prims: " + (string)llList2Integer( Stats, STATS_TOTAL_PRIMS) + "\n";
        s += "Active Scripts: " + (string)llList2Integer( Stats, STATS_ACTIVE_SCRIPTS) + "\n";
        s += "Script LPS: " + (string)llList2Float( Stats, STATS_SCRIPT_LPS);
        llSetText(s, <0.0, 1.0, 0.0>, 1.0);
    }
}