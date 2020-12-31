/* lsSetWindlightScene
Function

integer lsSetWindlightScene(list rules);

Set a list of Windlight settings in the scene to new values

    list rules - a list containing pairs of LightShare Parameters and values to set 

Caveats

The list used by this function cannot be passed directly from lsGetWindlightScene without triggering C# exceptions from the Simulator.

LightShare must be enabled in the Simulator.

This script function is restricted to the region owner only.
Examples
*/

//
// lsSetWindlightScene Script Example
// Author: djphil
//
 
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see lsSetWindlightScene usage.");
        llSetText("lsSetWindlightScene", <1.0, 1.0, 1.0>, 1.0);
    }
 
    touch_start(integer number)
    {
        vector color = <4.0, 38.0, 64.0>;
 
        if (switch = !switch)
        {
            color = <llFrand(255.0), llFrand(255.0), llFrand(255.0)>;
        }
 
        list settings = [WL_WATER_COLOR, color];
        integer result = lsSetWindlightScene(settings);
 
        if (result == TRUE)
        {
            llSay(PUBLIC_CHANNEL, "The Windlight Scene was changed with success.");
            llSay(PUBLIC_CHANNEL, "The current water color is: " + (string)color);
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "The Windlight Scene was changed without success.");
        }
    }
}