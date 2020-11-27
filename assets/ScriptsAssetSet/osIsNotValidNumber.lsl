/*
integer osIsNotValidNumber(float d)
Returns 0 (false) if d is a valid float, else returns:

1 - if it is a NaN
2 - if it is a Negative Infinity
3 - if it is a Positive Infinity
Threat Level 	This function does not do a threat level check
Permissions 	Use of this function is always allowed by default
Delay 	0 seconds
Example(s)
*/

//
// osIsNotValidNumber Script Example
// Author: djphil
//
 
string check_number(float value)
{
    integer isValid = osIsNotValidNumber(value);
 
    if (isValid == 1)
    {
        return (string)value + " is a NaN (" + (string)isValid + ")";
    }
 
    else if (isValid == 2)
    {
        return (string)value + " is a Negative Infinity (" + (string)isValid + ")";
    }
 
    else if (isValid == 3)
    {
        return (string)value + " is a Positive Infinity (" + (string)isValid + ")";
    }
 
    else
    {
        return (string)value + " is a valid float (" + (string)isValid + ")";
    }
}
 
default
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "Touch to see osIsNotValidNumber usage.");
    }
 
    touch_start(integer number)
    {
        llSay(PUBLIC_CHANNEL, "llSqrt(10.0) : " + check_number(llSqrt(10.0)));
        llSay(PUBLIC_CHANNEL, "llSqrt(-10.0) : " + check_number(llSqrt(-10.0)));
        llSay(PUBLIC_CHANNEL, "-llPow(10.0, 1000.0) : " + check_number(-llPow(10.0, 1000.0)));
        llSay(PUBLIC_CHANNEL, "llPow(10.0, 1000.0) " + check_number(llPow(10.0, 1000.0)));
    }
}