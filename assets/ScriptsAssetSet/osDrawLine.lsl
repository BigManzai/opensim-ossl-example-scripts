/*
string osDrawLine(string drawList, integer startX, integer startY, integer endX, integer endY)

string osDrawLine(string drawList, integer endX, integer endY)
Depending on the form, appends a LineTo drawing command, or MoveTo and LineTo commands, to the string provided in drawList and returns the result.

In the longer form, draws a line using the current pen size and color from to the coordinates indicated by startX and startY to the coordinates indicated by endX and endY.

In the shorter form, draws a line using the current pen size and color from the pen's current position to the coordinates indicated by endX and endY.

After the line is drawn, the pen's X and Y coordinates are set to endX and endY, respectively.
Threat Level 	None
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/

// Example of osDrawLine
default
{
    state_entry()
    {
        string CommandList = ""; // Storage for our drawing commands
 
        CommandList = osSetPenSize( CommandList, 3 );              // Set the pen width to 3 pixels
        CommandList = osSetPenColor( CommandList, "Red" );        // Set the pen color to red
        CommandList = osDrawLine( CommandList, 10, 10, 128, 246 ); // Draw the first line (long form)
        CommandList = osSetPenColor( CommandList, "Green" );      // Set the pen color to green
        CommandList = osDrawLine( CommandList, 246, 10);           // Draw the second line (short form)
 
        // Now draw the lines
        osSetDynamicTextureData( "", "vector", CommandList, "width:256,height:256", 0 );
    }
}