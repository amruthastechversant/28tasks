<cfoutput>

<cfif structKeyExists(form,"submit")>
    <cfif not structKeyExists(session, "data")>
        <cfset session.data=structNew()>
    </cfif>
    <cfif structKeyExists(session, "data")>
        <cfset session.data=listToArray(form.text)>
    </cfif>
<!---     <cfif session.data MOD 3 EQ 0> --->
    <cfloop index="i" from="1" to="#arraylen(session.data)#">
        <cfset num=val(session.data[i])>
            <cfif num mod 2 EQ 0>
                <span style="color:green">#num#</span>
            <cfelse>
                <span style="color:blue">#num#</span>
            </cfif>
    </cfloop>
</cfif>
<!DOCTYPE html>
<html>
<head>
    <title>TASK17</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <h6>TASK17:<br>
    Create a page with text box & submit button. User can enter numeric value in the text box & click the submit button. If user entered non numeric character, page should validate user input using JS.
While clicking on submit button, page should show up 1 to given input number, odd numbers should be in blue, even numbers should be in green. <h6><br>
    <form id="userForm" action="" method="POST">
        <label for="text">Enter Numeric value</label>
        <input type="text" name="text" id="text">
        <div class="error_msg text-danger" id="numberError"></div>
        <input type="submit" value="submit" name="submit">
    </form>
    <script src="#application.appBasePath#assets/js/script.js"></script>
</body>
</html>
</cfoutput>
