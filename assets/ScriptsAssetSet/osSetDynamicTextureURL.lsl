/*
string osSetDynamicTextureURL(string dynamicID, string contentType, string url, string extraParams, integer timer)

Renders a web texture on the prim containing the script and returns the UUID of the newly created texture.
If you use this feature, you have to turn on any cache. If not, you'll see complete white texture. Flotsam cache performs better than cenome cache(default). 

Threat Level 	VeryHigh
Permissions 	ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// Example of osSetDynamicTextureURL
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "osSetDynamicTextureURL Tester");
    }
 
    touch_start(integer number)
    {
        llSay(PUBLIC_CHANNEL, "Testing ...");
        string  dynamicID = "";
        integer refreshRate = 600;
        string  contentType = "image";
        string srcURL = "http://www.goes.noaa.gov/FULLDISK/GEVS.JPG"; // Earth
        string URLTexture = osSetDynamicTextureURL(dynamicID, contentType, srcURL, "", refreshRate);
 
        if (llStringLength(URLTexture) > 0) 
        {
            llSay(PUBLIC_CHANNEL, "URLTexture = " + URLTexture);
            llSetTexture(URLTexture, ALL_SIDES);
        }
    }
}