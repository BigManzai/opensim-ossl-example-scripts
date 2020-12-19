/* lsGetWindlightScene
Function

list lsGetWindlightScene(list rules);

Get a list of the current Windlight settings in the scene

    list rules - a list of the LightShare Parameters to retrieve 

An empty rules list will return an empty result list.
Caveats

The list returned by this function cannot be passed directly to lsSetWindlightScene without triggering C# exceptions from the Simulator.
Examples
*/

//
// lsGetWindlightScene Script Exemple
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see lsGetWindlightScene usage.");
    }
 
    touch_start(integer number)
    {
	//The current water color is: <4.000000, 38.000000, 64.000000>
        list rules = [WL_WATER_COLOR];
        list settings = lsGetWindlightScene(rules);
        llSay(PUBLIC_CHANNEL, "The current water color is: " + llList2String(settings, 1));
    }
}