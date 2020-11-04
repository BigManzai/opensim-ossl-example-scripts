/*
string osMovePen(string drawList, integer x, integer y)
Appends a MoveTo drawing command to the string provided in drawList and returns the result.

This moves the pen's location to the coordinates specified by the x and y parameters, without drawing anything.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osMovePen
default
{
    state_entry()
    {
        string CommandList = ""; // Storage for our drawing commands
        integer i;
 
        CommandList = osSetPenSize( CommandList, 3 );              // Set the pen width to 3 pixels
        CommandList = osSetPenColor( CommandList, "Blue" );       // Set the pen color to blue
 
        for (i = 0; i < 256; i += 20)
        {
          CommandList = osMovePen( CommandList, 255, i );          // Move to the right side
          CommandList = osDrawLine( CommandList, 0, i+20 );        // Draw left and slightly down
        }
 
        // Now draw the lines
        osSetDynamicTextureData( "", "vector", CommandList, "width:256,height:256", 0 );
    }
}