/*
string osSetDynamicTextureURLBlendFace(string dynamicID, string contentType, string url, string extraParams, integer blend, integer disp, integer timer, integer alpha, integer face)
No descriptions provided
Threat Level 	VeryHigh
Permissions 	ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// Example of osSetDynamicTextureURLBlendFace

// ExtraParams Values:
//    width - width of the dynamic texture in pixels (example: width:256) 
//    height - height of the dynamic texture in pixels (example: height:256) 
//    alpha - alpha (transparency) component of the dynamic texture. Values are from 0- full to 255 - solid
//    bgcolour - specifies the background color of the texture (example: bgcolour:Red) 
//    setalpha 
//    integer value - any integer value is treated like specifing alpha component 
 
default
{
    state_entry()
    {
        llSay(0,"Touch to see osSetDynamicTextureURLBlendFace used to render Web Based Image/Texture on a prim");
    }
 
    touch_start(integer total_num)
    {
        string sDynamicID = "";                          // not implemented yet
        string sContentType = "image";                   // vector = text/lines,etc.  image = texture only
        string sURL = "http://www.goes.noaa.gov/FULLDISK/GMVS.JPG"; // URL for WebImage (Earth Shown)
        string sExtraParams = "width:512,height:512";    // optional parameters in the following format: [param]:[value],[param]:[value]
        integer iBlend = TRUE;                           // TRUE = the newly generated texture is iBlended with the appropriate existing ones on the prim
        integer iDisp = 2;                               // 1 = expire deletes the old texture.  2 = temp means that it is not saved to the Database. 
        integer iTimer = 0;                              // timer is not implemented yet, leave @ 0
        integer iAlpha = 255;                            // 0 = 100% Transparent 255 = 100% Solid
        integer iFace = 0;                       // Faces of the prim, Select the Face you want
        // Set the prepared texture to the Prim
        osSetDynamicTextureURLBlendFace( sDynamicID, sContentType, sURL, sExtraParams, iBlend, iDisp, iTimer, iAlpha, iFace );
    }
}