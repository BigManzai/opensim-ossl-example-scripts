/* Function
integer lsSetWindlightSceneTargeted(list rules,key who);
Set a list of Windlight settings in the scene to new values for a specific targeted user.

    list rules - a list containing pairs of LightShare Parameters and values to set
    key who - the UUID of the person to change Windlight settings for 

Caveats
The list used by this function cannot be passed directly from lsGetWindlightScene without triggering C# exceptions from the Simulator.
LightShare must be enabled in the Simulator.
This script function is restricted to the region owner only, who may use it to set Windlight settings for others in the region.
Examples
*/

//
// lsSetWindlightSceneTargeted Script Example
// Author: djphil
//
 
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see lsSetWindlightSceneTargeted usage.");
    }
 
    touch_start(integer number)
    {
        vector color = <4.0, 38.0, 64.0>;
 
        if (switch = !switch)
        {
            color = <llFrand(255.0), llFrand(255.0), llFrand(255.0)>;
        }
 
        list settings = [WL_WATER_COLOR, color];
        integer result = lsSetWindlightSceneTargeted(settings, llDetectedKey(0));
 
        if (result == TRUE)
        {
            llSay(PUBLIC_CHANNEL, "The Windlight Scene Targeted was changed with success.");
            llSay(PUBLIC_CHANNEL, "The current water color is: " + (string)color);
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "The Windlight Scene Targeted was changed without success.");
        }
    }
}