/*
string osDrawPolygon(string drawList, list xpoints, list ypoints)

    Appends a Polygon drawing command to the string provided in drawList and returns the result.
    The polygon is drawn with the current pen size and color on the x,y point pairs that comes from LSL list.
    It will be converted into the drawing command "Polygon x[0],y[0],x[1],y[1],x[2],y[2],...". See Drawing commands#Polygon to know what the command will actually do. 

Threat Level 	None
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/

// Example of osDrawPolygon
default
{
    state_entry()
    {
        // Storage for our drawing commands
        string CommandList = ""; 
 
        // "PenSize 3;"
        CommandList = osSetPenSize( CommandList, 3 );
        // "PenColor Blue;"
        CommandList = osSetPenColor( CommandList, "Blue" ); 
        // "Polygon 128,20,20,186,236,186;"
        CommandList = osDrawPolygon( CommandList, [128,20,236], [20,186,186] );
 
        // "PenColor Green;"
        CommandList = osSetPenColor( CommandList, "Green" ); 
        // "Polygon 128,236,20,70,236,70;"
        CommandList = osDrawPolygon( CommandList, [128,20,236], [236,70,70] );
 
        // "PenSize 5;"
        CommandList = osSetPenSize( CommandList, 5 );
        // "PenColor Red;"
        CommandList = osSetPenColor( CommandList, "Red" ); 
        // "Polygon 20,20,236,20,236,236,20,236;"
        CommandList = osDrawPolygon( CommandList, [20,236,236,20], [20,20,236,236] );
 
        // Now draw the polygon
        osSetDynamicTextureData( "", "vector", CommandList, "", 0 );
    }
}