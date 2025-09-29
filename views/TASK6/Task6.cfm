
<cfset variables.error_msg="">
<cfif structKeyExists(form, "submit")>
    <cfif form.key EQ "" OR form.value EQ "">
        <cfset variables.error_msg="Enter key and value">
    <cfelse>
    <cfset struct=structNew()>
    <cfset struct[form.key]=form.value>
    <cfdump  var="#struct#">
    </cfif>
</cfif>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK6</title>
</head>
<body>
    <form id="textboxForm" method="POST" action="">
    <table>
        <tr>
            <td><label for="key">Enter Key </label></td>
            <td><input type="text" name="key" id="key"placeholder="enter key" maxlength="20"></td>
            <td><label for="value">Enter Value</label></td>
            <td><input type="text" name="value"  id="value" placeholder="enter value" maxlength="20"></td>
            <td><input type="submit" name="submit" value="submit"></td>
        </tr>   
    </table>
        <div id="textboxError" class="text-danger">#error_msg#</div>
    </form>
    <script src="#application.appBasePath#assets/js/script.js"></script>
</body>
</html>
</cfoutput>
