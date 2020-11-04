/*
vector osGetDrawStringSize(string contentType, string text, string fontName, integer fontSize)
Returns a vector containing the horizontal and vertical dimensions in pixels of the specified text, if drawn in the specified font and at the specified point size. The horizontal extent is returned in the .x component of the vector, and the vertical extent is returned in .y. The .z component is not used.

The contentType parameter should be "vector".

If the osSetFontSize() function has not been used, and neither the FontName nor FontProp commands have been added to the draw list, specify "Arial" as the font name, and 14 as the font size.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osGetDrawStringSize
default
{
    state_entry()
    {
        string CommandList = ""; // Storage for our drawing commands
        string TextToDraw = "Hello, World!"; // text to draw
 
        vector Extents = osGetDrawStringSize( "vector", TextToDraw, "Arial", 14 );
 
        integer xpos = 128 - ((integer) Extents.x >> 1);            // Center the text horizontally
        integer ypos = 127 - ((integer) Extents.y >> 1);            //   and vertically
        CommandList = osMovePen( CommandList, xpos, ypos );         // Position the text
        CommandList = osDrawText( CommandList, TextToDraw );        // Place the text
 
        // Now draw the text
        osSetDynamicTextureData( "", "vector", CommandList, "width:256,height:256", 0 );
    }
}