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
// osApproxEquals Script Exemple
// Author: djphil
//
 
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osApproxEquals usage.");
        llSay(PUBLIC_CHANNEL, "This exemple compare two floats.");
    }
 
    touch_start(integer number)
    {
        float fa = 1.000000;
        float fb = 1.000001;
 
        if (switch =! switch)
        {
            fb = 1.000002;
        }
 
        llSay(PUBLIC_CHANNEL, "The float \"fa\" value is " + (string)fa);
        llSay(PUBLIC_CHANNEL, "The float \"fb\" value is " + (string)fb);
 
        // On Xengine use if (osApproxEquals(fa, fb) == TRUE)
        if (osApproxEquals(fa, fb))
        {
            llSay(PUBLIC_CHANNEL, "The values fa and fb are closer than 0.000001 on x, y and z ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "The values fa and fb are not closer than 0.000001 on x, y and z ...");
        }
    }
}

/* Compare two vectors:

//
// osApproxEquals Script Exemple
// Author: djphil
//
 
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osApproxEquals usage.");
        llSay(PUBLIC_CHANNEL, "This exemple compare two vectors.");
    }
 
    touch_start(integer number)
    {
        vector va = <1.000000, 1.000000, 1.000000>;
        vector vb = <1.000001, 1.000001, 1.000001>;
 
        if (switch =! switch)
        {
            vb = <1.000002, 1.000002, 1.000002>;
        }
 
        llSay(PUBLIC_CHANNEL, "The vector \"va\" value is " + (string)va);
        llSay(PUBLIC_CHANNEL, "The vector \"vb\" value is " + (string)vb);
 
        // On Xengine use if (osApproxEquals(va, vb) == TRUE)
        if (osApproxEquals(va, vb))
        {
            llSay(PUBLIC_CHANNEL, "The values va and vb are closer than 0.000001 on x, y and z ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "The values va and vb are not closer than 0.000001 on x, y and z ...");
        }
    }
}

Compare two rotations:

//
// osApproxEquals Script Exemple
// Author: djphil
//
 
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osApproxEquals usage.");
        llSay(PUBLIC_CHANNEL, "This exemple compare two rotations.");
    }
 
    touch_start(integer number)
    {
        rotation ra = <1.000000, 1.000000, 1.000000, 1.000000>;
        rotation rb = <1.000001, 1.000001, 1.000001, 1.000001>;
 
        if (switch =! switch)
        {
            rb = <1.000002, 1.000002, 1.000002, 1.000002>;
        }
 
        llSay(PUBLIC_CHANNEL, "The rotation \"ra\" value is " + (string)ra);
        llSay(PUBLIC_CHANNEL, "The rotation \"rb\" value is " + (string)rb);
 
        // On Xengine use if (osApproxEquals(ra, rb) == TRUE)
        if (osApproxEquals(ra, rb))
        {
            llSay(PUBLIC_CHANNEL, "The values ra and rb are closer than 0.000001 on x, y and z ...");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "The values ra and rb are not closer than 0.000001 on x, y and z ...");
        }
    }
}

Compare two floats with margin:

//
// osApproxEquals Script Exemple
// Author: djphil
//
 
float margin = 0.2;
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osApproxEquals usage.");
        llSay(PUBLIC_CHANNEL, "This exemple compare two floats with a margin of " + (string)margin);
    }
 
    touch_start(integer number)
    {
        float fa = 1.000000;
        float fb = 1.000001;
 
 
        if (switch =! switch)
        {
            fb = 1.000001 + margin;
        }
 
        llSay(PUBLIC_CHANNEL, "The float \"fa\" value is " + (string)fa);
        llSay(PUBLIC_CHANNEL, "The float \"fb\" value is " + (string)fb);
        llSay(PUBLIC_CHANNEL, "The margin value is " + (string)margin);
 
        // On Xengine use if (osApproxEquals(fa, fb) == TRUE)
        if (osApproxEquals(fa, fb, margin))
        {
            llSay(PUBLIC_CHANNEL, "The values fa and fb are almost equal.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "The values fa and fb are not almost equal.");
        }
    }
}

Compare two vectors with margin:

//
// osApproxEquals Script Exemple
// Author: djphil
//
 
float margin = 0.2;
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osApproxEquals usage.");
        llSay(PUBLIC_CHANNEL, "This exemple compare two vectors with a margin of " + (string)margin);
    }
 
    touch_start(integer number)
    {
        vector va = <1.000000, 1.000000, 1.000000>;
        vector vb = <1.000001, 1.000001, 1.000001>;
 
        if (switch =! switch)
        {
            vb = <1.000001 + margin, 1.000001 + margin, 1.000001 + margin>;
        }
 
        llSay(PUBLIC_CHANNEL, "The vector \"va\" value is " + (string)va);
        llSay(PUBLIC_CHANNEL, "The vector \"vb\" value is " + (string)vb);
        llSay(PUBLIC_CHANNEL, "The margin value is " + (string)margin);
 
        // On Xengine use if (osApproxEquals(va, vb) == TRUE)
        if (osApproxEquals(va, vb, margin))
        {
            llSay(PUBLIC_CHANNEL, "The values va and vb are almost equal.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "The values va and vb are not equal.");
        }
    }
}

Compare two rotations with margin:

//
// osApproxEquals Script Exemple
// Author: djphil
//
 
float margin = 0.2;
integer switch;
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osApproxEquals usage.");
        llSay(PUBLIC_CHANNEL, "This exemple compare two rotations with a margin of " + (string)margin);
    }
 
    touch_start(integer number)
    {
        rotation ra = <1.000000, 1.000000, 1.000000, 1.000000>;
        rotation rb = <1.000001, 1.000001, 1.000001, 1.000001>;
 
        if (switch =! switch)
        {
            rb = <1.000001 + margin, 1.000001 + margin, 1.000001 + margin, 1.000001 + margin>;
        }
 
        llSay(PUBLIC_CHANNEL, "The rotation \"ra\" value is " + (string)ra);
        llSay(PUBLIC_CHANNEL, "The rotation \"rb\" value is " + (string)rb);
        llSay(PUBLIC_CHANNEL, "The margin value is " + (string)margin);
 
        // On Xengine use if (osApproxEquals(ra, rb) == TRUE)
        if (osApproxEquals(ra, rb, margin))
        {
            llSay(PUBLIC_CHANNEL, "The values ra and rb are almost equal.");
        }
 
        else
        {
            llSay(PUBLIC_CHANNEL, "The values ra and rb are not almost equal.");
        }
    }
}
*/