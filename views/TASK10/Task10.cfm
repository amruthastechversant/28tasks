
<cfoutput>
<cfif structKeyExists(form, "submit")>
    <cfif NOT structKeyExists(session, "data") OR NOT isStruct(session.data)>
        <cfset session.data={}>
    </cfif>
    <cfif structKeyExists(session, "data")>
        <cfif structKeyExists(session.data, form.textbox1)>
            <div style="color:red">duplicate entry not allowed</div>
        <cfelse>
            <cfset session.data[form.textbox1]=form.textbox2>
        </cfif>
        
    </cfif>
</cfif>
<!---  <cfset structClear(session.data)>  --->
<cfif structKeyExists(session, "data") AND structCount(session.data) GT 0>
    <cfset keyArray = structKeyArray(session.data)>
    <cfset arraySort(keyArray, "textnocase")>
    
    <ul>
        <cfloop array="#keyArray#" index="key">
            <li><strong>#key#</strong>: #session.data[key]#</li>
        </cfloop>
    </ul>
</cfif>

<!DOCTYPE html>
<html>
<head>
    <title>TASK10</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
<header class="fixed-header">
        fixed header
    </header>
    <h6>TASK10:<br>
     show the keys in alphabetical order.
    CFDUMP the structure.
    </h6>
    <form method="POST" action="">
    <label for="textbox1">Enter Key </label>
    <input type="text" name="textbox1" value="#structkeyexists(form,"textbox1") ? (form.textbox1) : ''#" required>
    <label for="textbox2">Enter Value</label>
    <input type="text" name="textbox2" value="#structkeyexists(form,"textbox2") ? (form.textbox2) : ''#" required>
    <input type="submit" name="submit" value="submit">
    </form>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>
