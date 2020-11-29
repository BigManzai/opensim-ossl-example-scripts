/*
string osDrawTranslationTransform(string drawList, float x, float y)
...
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osDrawTranslationTransform Script Exemple
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osDrawTranslationTransform usage.");
    }
 
    touch_start(integer number)
    {
        string CommandList = "";
        CommandList = osSetFontName(CommandList, "Courier New");
        CommandList = osSetFontSize(CommandList, 10);
        CommandList = osSetPenSize( CommandList, 5);
 
        integer i;
 
        for(i = 0; i < 50; ++i)
        {
            CommandList = osDrawLine(CommandList, -300, 10, 0, 10);
            CommandList = osDrawLine(CommandList, 105, 10, 520, 10);
            CommandList = osMovePen(CommandList, 0, 0);
            CommandList = osDrawText(CommandList, "Hello World!");
            CommandList = osDrawTranslationTransform(CommandList, 0.25 * i, 10);
        }
 
        CommandList = osDrawResetTransform(CommandList);
        osSetDynamicTextureData("", "vector", CommandList, "width:512,height:512", 0);
    }
}