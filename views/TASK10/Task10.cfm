
<cfoutput>
<cfset variables.textboxError_msg="">
<cfset myData=structNew()>
<cfif structKeyExists(form, "storedData") AND len(form.storedData)>
        <cfset myData=deserializeJSON(storedData)>
</cfif>
    <cfif structKeyExists(form, "submit")>
        <cfif len(trim(form.key)) and len(trim(form.value))>
            <cfif structKeyExists(myData, form.key)>
                <cfset variables.textboxError_msg="#form.key# already present. Cannot add again">
            <cfelse>
                <cfset myData[form.key]=form.value>
            </cfif>
        </cfif>
    </cfif>
<!---  <cfset structClear(session.data)>  --->
<cfif structCount(myData) GT 0>
    <cfset keyArray = structKeyArray(myData)>
    <cfset arraySort(keyArray, "textnocase")>
    <ul>
        <cfloop array="#keyArray#" index="key">
            <li><strong>#key#</strong>: #myData[key]#</li>
        </cfloop>
    </ul>
</cfif>

<!DOCTYPE html>
<html>
<head>
    <title>TASK10</title>
</head>
<body>
    <form id="textboxForm" method="POST" action="">
        <table>
            <tr>
                <td><label for="key">Enter Key </label></td>
                <td><input type="text" name="key" id="key"value="#structkeyexists(form,"key") ? (form.key) : ''#"></td>
                <td><label for="value">Enter Value</label></td>
                <td><input type="text" name="value" id="value" value="#structkeyexists(form,"value") ? (form.value) : ''#"></td>
                <input type="hidden" name="storedData" value=#serializeJSON(myData)#>
                <td><input type="submit" name="submit" value="submit"></td>
            </tr>
        </table>
        <div id="textboxError" class="text-danger">#textboxError_msg#</div>
    </form>
    <script src="#application.appBasePath#assets/js/script.js"></script>
</body>
</html>
</cfoutput>
