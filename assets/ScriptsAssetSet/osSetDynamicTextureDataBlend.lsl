/*
key osSetDynamicTextureDataBlend(string dynamicID, string contentType, string data, string extraParams, integer timer, integer alpha)
Renders a dynamically created texture on the faces of a prim containing the script, possibly blending it with the texture that is already set. Only use if all faces have same texture!

. Returns UUID of the generated texture.
Threat Level 	VeryLow
Permissions 	${OSSL|osslParcelOG}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Example(s)
*/

// Example of osSetDynamicTextureDataBlend

// ExtraParams Values:
//    width - width of the dynamic texture in pixels (example: width:256) 
//    height - height of the dynamic texture in pixels (example: height:256) 
//    alpha - alpha (transparency) component of the dynamic texture. Values are from 0-clear to 255-solid (example: alpha:255) 
//    bgcolour - specifies the background color of the texture (example: bgcolour:Red) 
//    setalpha 
//    integer value - any integer value is treated like specifing alpha component 
//
default
{
    state_entry()
    {
        llSay(0,"Touch to see osSetDynamicTextureDataBlend used to render custom drawings on a prim");
    }
 
    touch_start(integer total_num)
    {
        string sDynamicID = "";                          // not implemented yet
        string sContentType = "vector";                  // vector = text/lines,etc.  image = texture only
        string sData = "";                               // Storage for our drawing commands
        string sExtraParams = "width:256,height:256";    // optional parameters in the following format: [param]:[value],[param]:[value]
        integer iTimer = 0;                              // timer is not implemented yet, leave @ 0
        integer iAlpha = 100;                            // 0 = 100% Alpha, 255 = 100% Solid
        //
        // sData (drawing commands) used in the example.
        // draw a filled rectangle
        sData = osSetPenSize(sData, 3);                   // Set the pen width to 3 pixels
        sData = osSetPenColor(sData, "Red");             // Set the pen color to red
        sData = osMovePen(sData, 28, 78);                 // Upper left corner at <28,78>
        sData = osDrawFilledRectangle(sData, 200, 100);   // 200 pixels by 100 pixels
        // setup text to go in the drawn box
        sData = osMovePen(sData, 30, 80);                 // place pen @ X,Y coordinates 
        sData = osSetFontName(sData, "Arial");            // Set the Fontname to use
        sData = osSetFontSize(sData, 10);                 // Set the Font Size in pixels
        sData = osSetPenColor(sData, "Green");           // Set the pen color to Green
        sData = osDrawText(sData, "Your Name is: "+llDetectedName(0)); // The text to write
        // Now draw it out
        osSetDynamicTextureDataBlend( sDynamicID, sContentType, sData, sExtraParams, iTimer, iAlpha );
    }
}