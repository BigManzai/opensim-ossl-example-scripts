/*
float osGetWindParam(string plugin, string param)

Gets the value of param property for plugin module. 

Threat Level 	VeryLow
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
Gets all available properties of current active wind plugin module: 
*/

// osGetWindParam() sample
// Touch this object to see the current wind parameters
 
default
{
    touch_start(integer number)
    {
        string activePluginName = osWindActiveModelPluginName();
 
        if(activePluginName == "SimpleRandomWind")
        {
            llSay(0, "[SimpleRandomWind]");
            float strength = osGetWindParam("SimpleRandomWind", "strength");
            llSay(0, "wind strength(strength) = " + (string)strength);
        }
        else if(activePluginName == "ConfigurableWind")
        {
            llSay(0, "[ConfigurableWind]");
            float avgStrength = osGetWindParam("ConfigurableWind", "avgStrength");
            llSay(0, "average wind strength(avg_strength) = " + (string)avgStrength);
            float avgDirection = osGetWindParam("ConfigurableWind", "avgDirection");
            llSay(0, "average wind direction in degrees(avg_direction) = " + (string)avgDirection);
            float varStrength = osGetWindParam("ConfigurableWind", "varStrength");
            llSay(0, "allowable variance in wind strength(var_strength) = " + (string)varStrength);
            float varDirection = osGetWindParam("ConfigurableWind", "varDirection");
            llSay(0, "allowable variance in wind direction in +/- degrees(var_direction) = " + (string)varDirection);
            float rateChange = osGetWindParam("ConfigurableWind", "rateChange");
            llSay(0, "rate of change(rate_change) = " + (string)rateChange);
        }            
    }
}