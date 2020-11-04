/*
osRequestURL(list options)
Requests one HTTP:// url (opensim version 0.9 or over)

Option supported : "allowXss" - Add 'Access-Control-Allow-Origin: *' to response header
Threat Level 	Moderate
Permissions 	No permissions specified
Delay 	0 seconds
Example(s)
*/

//
//osRequestURL example
//
 
RequestReceived (key id, string query) {
    llHTTPResponse (id,200,query+" OK");
    query = llUnescapeURL(query);
    llSay (0, query);
}
 
default {
 
    state_entry() {
        osRequestURL ([ "allowXss" ]);
    }
 
    http_request(key id, string method, string body) {
 
        if (method == URL_REQUEST_GRANTED)
           llOwnerSay ("URL_REQUEST_GRANTED" +"\n" +body);
 
        if (method == URL_REQUEST_DENIED)
            llOwnerSay ("URL_REQUEST_DENIED");
 
        if (method == "GET")
            RequestReceived (id, llGetHTTPHeader(id,"x-query-string"));
 
        if (method == "POST")
            RequestReceived (id, body);
    }
 
}