/*
string osDrawResetTransform(string drawList)
Reset all transforms.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osDrawResetTransform Script Exemple
// Author: djphil
//
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osDrawResetTransform usage.");
    }
 
    touch_start(integer number)
    {
        string CommandList = "";
        CommandList = osSetFontName(CommandList, "Courier New");
 
        CommandList = osMovePen(CommandList, 10, 10);
        CommandList = osDrawText(CommandList, "Hello World!");
 
        CommandList = osDrawRotationTransform(CommandList, -45.0);
        CommandList = osDrawTranslationTransform(CommandList, -80.0, 160.0);
        CommandList = osDrawText(CommandList, "Hello World!");
 
        CommandList = osDrawResetTransform(CommandList);
        CommandList = osDrawRotationTransform(CommandList, 45.0);
        CommandList = osDrawTranslationTransform(CommandList, 100.0, -20.0);
        CommandList = osDrawText(CommandList, "Hello World!");
 
        CommandList = osDrawResetTransform(CommandList);
        CommandList = osMovePen(CommandList, 100, 225);
        CommandList = osDrawText(CommandList, "Hello World!");
 
        osSetDynamicTextureData("", "vector", CommandList, "width:256,height:256", 0);
    }
}