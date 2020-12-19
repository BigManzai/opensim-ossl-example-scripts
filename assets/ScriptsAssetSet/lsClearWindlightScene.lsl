/* lsClearWindlightScene
Function

void lsClearWindlightScene();

Remove Windlight settings from a region.
Caveats

LightShare must be enabled in the Simulator.

This script function is restricted to the region owner only.
Examples
*/

//
// lsClearWindlightScene Script Exemple
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see lsClearWindlightScene usage.");
    }
 
    touch_start(integer number)
    {
        lsClearWindlightScene();
        llSay(PUBLIC_CHANNEL, "The Windlight Scene is now cleared ...");
    }
}