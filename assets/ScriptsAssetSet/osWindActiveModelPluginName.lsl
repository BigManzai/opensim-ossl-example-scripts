/*
string osWindActiveModelPluginName()
Gets active wind plugin name, specified by "wind_plugin" in OpenSim.ini ("SimpleRandomWind" or "ConfigurableWind").
Threat Level 	None
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osWindActiveModelPluginName Script Example
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osWindActiveModelPluginName usage.");
    }
 
    touch_start(integer number)
    {
        llSay(PUBLIC_CHANNEL, "The wind active model plugin name is \"" + osWindActiveModelPluginName() + "\".");         
    }
}