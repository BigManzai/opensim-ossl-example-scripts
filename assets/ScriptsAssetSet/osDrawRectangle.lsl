/*
string osDrawRectangle(string drawList, integer width, integer height)
Appends a Rectangle drawing command to the string provided in drawList and returns the result.

The outline of a rectangle is drawn with the current pen size and color, at the specified width and height (in pixels), with the upper left corner of the rectangle placed at the pen's current position. After the rectangle is drawn, the width and height values are added to the pen's X and Y position, respectively (that is, the pen is positioned at the lower right corner of the rectangle.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osDrawRectangle
default
{
    state_entry()
    {
        string CommandList = ""; // Storage for our drawing commands
 
        CommandList = osSetPenSize( CommandList, 3 );           // Set the pen width to 3 pixels
        CommandList = osSetPenColor( CommandList, "Green" );   // Set the pen color to green
        CommandList = osMovePen( CommandList, 28, 78 );         // Upper left corner at <28,78>
        CommandList = osDrawRectangle( CommandList, 200, 100 ); // 200 pixels by 100 pixels
 
        // Now draw the rectangle
        osSetDynamicTextureData( "", "vector", CommandList, "width:256,height:256", 0 );
    }
}