/*
integer osConsoleCommand(string command)
This function allows an LSL script to directly execute a command to opensim's console. Even if the function is available, only administrators/gods can successfully execute it.

In addition, one can further restrict this function to only certain administrators/gods. See Threat level for more information on how to do this.

If the script owner does have the necessary permissions to call this function, then they can do anything someone with direct access to the command console could do, such as changing the avatar passwords, deleting sims, changing the terrain, etc.

This command represents the highest security threat of any OSSL function, giving it a threat level of Severe.

Do not use or allow this function unless you are absolutely sure of what you're doing!
Threat Level 	Severe
Permissions 	Use of this function is always disabled by default
Delay 	0 seconds
Example(s)
*/

//
// osConsoleCommand Script Example
//

default
{
  touch_start(integer num_detected)
  {
    osConsoleCommand("login disable");
    llSay(0, "Logins are disabled");
  }
}