/*
string osDrawRotationTransform(string drawList, float x)
...
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osDrawRotationTransform Script Exemple
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osDrawRotationTransform usage.");
    }
 
    touch_start(integer number)
    {
        string CommandList = "";
        CommandList = osSetFontName(CommandList, "Courier New");
        CommandList = osSetFontSize(CommandList, 20);
        CommandList = osSetPenSize( CommandList, 10);
 
        integer i;
 
        for(i = 0; i < 25; ++i)
        {
            CommandList = osDrawLine(CommandList, 20, 10, 250, 10);
            CommandList = osDrawLine(CommandList, 455, 10, 725, 10);
            CommandList = osMovePen(CommandList, 250, 0);
            CommandList = osDrawText(CommandList, "Hello World!");
            CommandList = osDrawRotationTransform(CommandList, 4.0);
        }
 
        CommandList = osDrawResetTransform(CommandList);
        osSetDynamicTextureData("", "vector", CommandList, "width:512,height:512", 0);
    }
}