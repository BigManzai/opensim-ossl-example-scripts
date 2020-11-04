/*
string osDrawFilledEllipse(string drawList, integer width, integer height)
Appends an FillEllipse drawing command to the string provided in drawList and returns the result.

The filled ellipse is drawn with the current pen size and color, with the specified width and height (in pixels), centered on a point which is (width/2) pixels to the right of the pen's current X position, and (height/2) pixels below the pen's current Y position. After the filled ellipse is drawn, the width and height values are added to the pen's X and Y position, respectively.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osDrawFilledEllipse
 
default
{
    state_entry()
    {
        string CommandList = "";                                    // Storage for our drawing commands
        CommandList = osSetPenSize( CommandList, 3 );               // Set the pen width to 3 pixels
        CommandList = osSetPenColor( CommandList, "Blue" );         // Set the pen color to blue
        CommandList = osMovePen( CommandList, 28, 78 );             // Upper left corner at <28,78>
        CommandList = osDrawFilledEllipse( CommandList, 200, 100 ); // 200 pixels by 100 pixels
        // Now draw the filled ellipse
        osSetDynamicTextureData( "", "vector", CommandList, "width:256,height:256", 0 );
    }
}