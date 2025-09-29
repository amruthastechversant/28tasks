
<cfparam name="form.keyword" default="">
<cfset variables.message="the quick brown fox jumps over the lazy dog"> 


<cfif structKeyExists(form, "submit")>
    <cfset variables.keyword = trim(form.keyword)>
    <cfif reFindNoCase("<[^>]*>", variables.keyword)>
        <cfset variables.message = "HTML/Script tags are not allowed.">  
    <cfelseif variables.keyword EQ "">
        <cfset variables.message="Enter any word">
    <cfelse>
        <cfset matches = REMatchNoCase("\b#variables.keyword#\b",variables.message)>
        <cfset count = arrayLen(matches)>
        <cfif count GT 0>
            <cfset variables.message="Found the key word in #count# times- #message#">
        <cfelse>
            <cfset variables.message="keyword #keyword# not found">
        </cfif>
    </cfif>
</cfif>

<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK13</title> 
</head>
<body>
        <form method="POST">
            <label for="number"></label>
            <input type="text" id="keyword" name="keyword" value="#form.keyword#">
             <button type="submit" name="submit">SUBMIT</button>
        </form>
        <cfif structKeyExists(form, "submit")>
        <cfoutput>
           <p class="text-danger">#variables.message#</p>
        </cfoutput>
        </cfif>
</body>
</html>
</cfoutput>
