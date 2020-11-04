/*
string osDrawText(string drawList, string text)
Appends a Text drawing command to the string provided in drawList and returns the result.

The specified text will be drawn with the current pen color, using the currently defined font, size and properties (which default to regular 14-point Arial).

The text will be drawn with the upper left corner of the first glyph at the pen's current position (however, note that glyphs within the font may be defined to extend to the left of their origin point).

If you need to include a semicolon in the text to be displayed, you will need to directly manipulate the draw list string using the drawing commands rather than the dynamic texture convenience functions, then specify an alternate data delimiter in the extraParams parameter to the osSetDynamicTexture* functions. The convenience functions (including osDrawImage) are hardcoded to terminate each command with a semicolon.

The text may or may not be antialiased, depending on the system settings of the machine upon which the simulator is running. Furthermore, if the system is configured to use LCD subpixel antialiasing (e.g. ClearType), the text may have colored fringes on the smoothed pixels, which may result in a less than optimum image.

Please note that the pen position is not updated after this call.
Threat Level 	None
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/

// Example of osDrawText
default
{
    state_entry()
    {
        string CommandList = ""; // Storage for our drawing commands
 
        CommandList = osMovePen( CommandList, 10, 10 );           // Upper left corner at <10,10>
        CommandList = osDrawText( CommandList, "Hello, World!" ); // Place some text
 
        // Now draw the image
        osSetDynamicTextureData( "", "vector", CommandList, "width:256,height:256", 0 );
    }
}