/*
string osSetFontSize(string drawList, integer fontSize)
Appends a FontSize drawing command to the string provided in drawList and returns the result.

Sets the size of the font used by subsequent osDrawTextText() calls. The fontSize parameter represents the font height in points.

Please note that the font height is given in points, not in pixels. The resulting size of the font in pixels may vary depending on the system settings, specifically the display system's "dots per inch" metric. A system set to 96dpi will produce differently sized text than a system set to 120dpi. If precise text size is required, consider using the osGetDrawStringSize() function to help calculate the proper fontSize value to use.

If a negative fontSize parameter is specified, any text subsequently added will be displayed upside down and to the right of the point of origin.

Please note that the pen position is not updated after this call.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osDrawText
default
{
    state_entry()
    {
        string CommandList = ""; // Storage for our drawing commands
 
        CommandList = osMovePen( CommandList, 10, 10 );             // Upper left corner at <10,10>
        CommandList = osSetFontSize( CommandList, 10 );             // Use 10-point text
        CommandList = osDrawText( CommandList, "Ten points!" );     // Place some text
        CommandList = osMovePen( CommandList, 10, 27 );             // New text placement
        CommandList = osSetFontSize( CommandList, 15 );             // Use 10-point text
        CommandList = osDrawText( CommandList, "Fifteen points!" ); // Place some text
        CommandList = osMovePen( CommandList, 10, 50 );             // New text placement
        CommandList = osSetFontSize( CommandList, 20 );             // Use 10-point text
        CommandList = osDrawText( CommandList, "Twenty points!" );  // Place some text
 
        // Now draw the image
        osSetDynamicTextureData( "", "vector", CommandList, "width:256,height:256", 0 );
    }
}