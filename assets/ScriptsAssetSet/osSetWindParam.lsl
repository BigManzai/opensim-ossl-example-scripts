/*
osSetWindParam(string plugin, string param, float value)
Sets value of param property for plugin module.

Available parameters:
plugin 	param 	description 	default 	OpenSim.inisetting
SimpleRandomWind 	strength 	wind strength 	1.0f 	strength
ConfigurableWind 	avgStrength 	average wind strength 	5.0f 	avg_strength
avgDirection 	average wind direction in degrees 	0.0f 	avg_direction
varStrength 	allowable variance in wind strength 	5.0f 	var_strength
varDirection 	allowable variance in wind direction in +/- degrees 	30.0f 	var_direction
rateChange 	rate of change 	1.0f 	rate_change
Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
Sets all available parameters of current active wind plugin module:
*/

// osSetWindParam() sample
// Touch this object to change the current wind parameters
// Run osGetWindParam() sample to check if these values are applied
 
float newStrength = 30.0;
float newAvgStrength = 15.0;
float newAvgDirection = 10.0;
float newVarStrength = 7.0;
float newVarDirection = -30.0;
float newRateChange = 8.0;
 
default
{
    touch_start(integer number)
    {
        string activePluginName = osWindActiveModelPluginName();
        if(activePluginName == "SimpleRandomWind")
        {
            llSay(0, "[SimpleRandomWind]");
            osSetWindParam("SimpleRandomWind", "strength", newStrength);
            llSay(0, "wind strength(strength) is changed to " + (string)newStrength);
        }
        else if(activePluginName == "ConfigurableWind")
        {
            llSay(0, "[ConfigurableWind]");
            osSetWindParam("ConfigurableWind", "avgStrength", newAvgStrength);
            llSay(0, "average wind strength(avg_strength) is changed to " + (string)newAvgStrength);
            osSetWindParam("ConfigurableWind", "avgDirection", newAvgDirection);
            llSay(0, "average wind direction in degrees(avg_direction) is changed to " + (string)newAvgDirection);
            osSetWindParam("ConfigurableWind", "varStrength", newVarStrength);
            llSay(0, "allowable variance in wind strength(var_strength) is changed to " + (string)newVarStrength);
            osSetWindParam("ConfigurableWind", "varDirection", newVarDirection);
            llSay(0, "allowable variance in wind direction in +/- degrees(var_direction) is changed to " + (string)newVarDirection);
            osSetWindParam("ConfigurableWind", "rateChange", newRateChange);
            llSay(0, "rate of change(rate_change) is changed to " + (string)newRateChange);
        }            
    }
}