/*
string osDrawFilledPolygon(string drawList, list xpoints, list ypoints)
Appends a FillPolygon drawing command to the string provided in drawList and returns the result. This fills in the interior of the specified polygon.

The polygon is drawn with the current pen size and filled with the current color. So (x[0],y[0]),(x[1],y[1]),(x[2],y[2]) would be an example of a polygon. T
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osDrawFilledPolygon
default
{
    state_entry()
    {
     // Storage for our drawing commands
        string CommandList = ""; 
 
     // Set the pen width to 3 pixels
        CommandList = osSetPenSize( CommandList, 3 ); 
 
     // Set the pen color to blue
        CommandList = osSetPenColor( CommandList, "Blue" );  
 
    // You can use either integer, float or string 
        CommandList = osDrawFilledPolygon( CommandList, [50,100,50], ["50",100,150.0] ); 
 
    // Now draw the polygon
        osSetDynamicTextureData( "", "vector", CommandList, "", 0 );
    }
}