/*
integer osReplaceParcelEnvironment(integer transition, string daycycle)
Replaces parcel daycycle.

    If parameter daycycle is NULL_KEY or "", parcel environment is removed,
    daycycle can be a name of a daycycle asset on prim contents. If it is a UUID it can also be grid asset.
    if return value is negative, it failed.
    transition should be the viewer transition time to the new one. May not work on most viewers. 

Threat Level 	This function does not do a threat level check
Permissions 	Prim owner must have rights to change parcel and parcel environment and region must allow parcel environments
Delay 	0 seconds
Example(s)

//

Notes
Added in 0.9.2 
*/

//
// osReplaceParcelEnvironment Script Example
//

/*
BSD 3-Clause License
Copyright (c) 2019, Sara Payne (Manwa Pastorelli in virtual worlds)
All rights reserved.
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.
3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/


//START USER EDITABLE VARIABLES
integer transition = 0; //time it takes for the viewer to transition between one enviroment and another
string daycycle = "Default"; //name or uuid of the day cycle you wish to apply
float dayLength = 0; //how many hours are in each day, using 0 means this value is not changed, otherwise 4-168
float dayOffset = -8; //offset from real time clock UTC//-8 is the viewer default. Range from -11.5 to 11.5
float altitude1 = 30; //height at which the first sky level starts
float altitude2 = 1000;//height at which the second sky level starts
float altitude3 = 4000;// height at which the third sky level starts.
//END USER EDITABLE VARIABLES


integer altitudesOk;
integer transitionOk;
integer dayLengthOk;
integer dayOffsetOk;
integer valuesOk;

default
{
    state_entry()
    {
        altitudesOk = ((altitude3 <= 4000) && (altitude2 < altitude3) && (altitude1 < altitude2) && (altitude1 > llWater( ZERO_VECTOR )) );
        dayLengthOk = (dayLength == 0) || ( dayLength >=4 && dayLength <= 168 );
        dayOffsetOk = (dayOffset >= -11.5 && dayOffset <= 11.5);
        transitionOk = transition >= 0;
        valuesOk = altitudesOk && dayLengthOk && dayOffsetOk && transitionOk;
    }


    touch_start(integer dont_care)
    {
        if (valuesOk)
        {   //come here if the altitude values are ok
            integer RegionEnviromentSet = osReplaceParcelEnvironment
            (
                transition,
                daycycle,
                dayLength,
                dayOffset,
                altitude1,
                altitude2,
                altitude3
            );

            if (RegionEnviromentSet) llOwnerSay("Regon Enviroment Set Successfully");
            else llOwnerSay("Region Enviroment Set failed, please check the values");
        }

        else if (!altitudesOk)
        {
            llOwnerSay("Error:\n 
                    Altitude1 must be higher than the water level\n
                    Altitude2 must be higher than Altitude1\n
                    Altitude3 must be higher than Altitude2\n
                    And Altitude 3 must be no higher than 4000");
        }

        else if (!transitionOk)
        {
            llOwnerSay("Error transition must be 0 or higher");
        }

        else if (!dayLengthOk)
        {
            llOwnerSay("Error the length of the day must be either 0 to keep the setting the same or between 4 and 168");
        }

        else if (!dayOffsetOk)
        {
            llOwnerSay(("Error the day offset value must be between -11.5 and 11.5"));
        }
    }
}