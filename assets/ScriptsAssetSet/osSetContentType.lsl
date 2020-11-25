/*
osSetContentType(key id, string type)
Sets an arbitrary content return type for an llRequestUrl().
Threat Level 	Severe
Permissions 	${OSSL|osslParcelO}ESTATE_MANAGER,ESTATE_OWNER
Delay 	0 seconds
Notes
This function was added in 0.7.5-post-fixes

The threat level was upgraded to Severe as of commit #2c2b887c8a on December 11, 2018. 
*/

//
// osSetContentType Script Example
//

key url_request;
 
string HTML_BODY =
"<!DOCTYPE html>
<html>
<body>
 
<h1>My First Heading</h1>
 
<p>My first paragraph.</p>
 
</body>
</html>";
 
default
{
    state_entry()
    {
        url_request = llRequestURL();
    }
 
    http_request(key id, string method, string body)
    {
        key owner = llGetOwner();
        vector ownerSize = llGetAgentSize(owner);
 
        if (url_request == id)
        {
        //  if you're usually not resetting the query ID
        //  now is a good time to start!
            url_request = "";
 
            if (method == URL_REQUEST_GRANTED)
            {
                llOwnerSay("URL: " + body);
 
            //  if owner in sim
                if (ownerSize)//  != ZERO_VECTOR
                    llLoadURL(owner, "I got a new URL!", body);
            }
 
            else if (method == URL_REQUEST_DENIED)
                llOwnerSay("Something went wrong, no url:\n" + body);
        }
 
        else
        {
            llOwnerSay("request body:\n" + body);
 
        //  if owner in sim
            if (ownerSize)//  != ZERO_VECTOR
            {
                osSetContentType(id, CONTENT_TYPE_HTML);
                llHTTPResponse(id, 200, HTML_BODY);
            }
            else
            {
                osSetContentType(id, CONTENT_TYPE_TEXT);
                llHTTPResponse(id, 200, "OK");
            }
        }
    }
}