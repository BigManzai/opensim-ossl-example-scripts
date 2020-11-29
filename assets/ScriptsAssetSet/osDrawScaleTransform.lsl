/*
string osDrawScaleTransform(string drawList, float x, float y)
...
Threat Level 	None
Permissions 	No permissions specified
Delay 	No function delay specified
Example(s)
*/

//
// osDrawScaleTransform Script Exemple
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osDrawScaleTransform usage.");
    }
 
    touch_start(integer number)
    {
        string CommandList = "";
        CommandList = osSetFontName(CommandList, "Courier New");
        CommandList = osSetFontSize(CommandList, 15);
        CommandList = osMovePen(CommandList, 10, 20);
 
        integer i;
 
        for(i = 0; i < 12; ++i)
        {
            CommandList = osDrawScaleTransform(CommandList, 1.25, 1.25);
            CommandList = osDrawText(CommandList, "☺☻");
        }
 
        CommandList = osDrawResetTransform(CommandList);
        CommandList = osMovePen(CommandList, 10, 10);
        CommandList = osDrawText(CommandList, "Hello World!");
        osSetDynamicTextureData("", "vector", CommandList, "width:512,height:512", 0);
    }
}