/*
string osSetPenSize(string drawList, integer penSize)
Appends a PenSize drawing command to the string provided in drawList and returns the result.

This sets the pen size to a square of penSize pixels by penSize pixels. If penSize is an odd number, the pen will be exactly centered on the coordinates provided in the various drawing commands; if it is an even number, it will be centered slightly higher and to the left of the actual coordinates.
Threat Level 	None
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/

// Example of osSetPenSize
default
{
    state_entry()
    {
        string CommandList = ""; // Storage for our drawing commands
        integer i;
 
        CommandList = osSetPenColor( CommandList, "Red" );        // Set the pen color to red
 
        for (i = 1; i < 13; ++i)
        {
            CommandList = osSetPenSize( CommandList, i );                 // Set the pen size
            CommandList = osDrawLine( CommandList, 15, i*20, 241, i*20 ); // Draw a horizontal line
        }
 
        // Now draw the lines
        osSetDynamicTextureData( "", "vector", CommandList, "width:256,height:256", 0 );
    }
}