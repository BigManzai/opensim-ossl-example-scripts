/*
integer osApproxEquals(float a, float b)

integer osApproxEquals(vector va, vector vb)
integer osApproxEquals(rotation ra, rotation rb)
integer osApproxEquals(float a, float b, float margin)
integer osApproxEquals(vector va, vector vb, float margin)
integer osApproxEquals(rotation ra, rotation rb, float margin)
Returns 1 (true) if the quantities or all their components do not differ by the margin value, or 1e-6 (0.000001), if margin is not provided. Returns 0 (false) otherwise.
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osApproxEquals Script Example
//

default
{

if(osApproxEquals(pos, otherpos, 0.2)) // on Xengine use if(osApproxEquals(pos, otherpos, 0.2) == 1)
    llOwnerSay("Positions are almost equal");
 
if(osApproxEquals(pos, otherpos)) // on Xengine use if(osApproxEquals(pos, otherpos) == 1)
    llOwnerSay("Positions are closer than 0.000001 on x y and z");
 
}