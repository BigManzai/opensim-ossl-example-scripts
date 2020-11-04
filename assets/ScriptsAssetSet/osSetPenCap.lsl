/*
string osSetPenCap(string drawList, string direction, string type)
This method works only on Windows for now. libgdi+ has a fake implementation and will not draw it.

Appends a PenCap drawing command to the string provided in drawList and returns the result. This sets the pen's start or/and end cap to either "diamond", "arrow", "round", or default "flat" shape. It can set them in the "end" or "start" of the line, or "both". Possible values are (case insensitive):

Type:
"arrow"
"diamond"
"round"
"flat" 

Direction:
"start"
"end"
"both" 

Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

// Example of osSetPenCap
 
default
{
    state_entry()
    {
        string CommandList = "";                              // Storage for our drawing commands
        integer i;
 
        CommandList = osSetPenSize( CommandList, 5 );         // Set the pen width to 5 pixels. With 1 pixel, arrow is very hard to see
        CommandList = osSetPenCap("start", "arrow");          // Sets the beggining of the line with an arrow
        CommandList = osMovePen(drawList,50,100);             // Moves pen to 50,100
        CommandList = osLineTo(drawList, 100,150);            // Draws line from 50,100 to 100,150
 
        osSetDynamicTextureData( "", "vector", CommandList, "", 0 );
    }
}