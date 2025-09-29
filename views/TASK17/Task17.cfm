<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK17</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="#application.appBasePath#assets/css/common.css" rel="stylesheet">
    
</head>
<body>
     <div id="appConfig" data-baseurl="#application.appBasePath#"></div>
    <form id="userForm" action="" method="POST">
        <table>
        <tr>
            <td><label for="text">Enter Numeric value</label></td>
            <td><input type="text" name="text" id="text"></td>
            <td><input type="submit" value="submit" name="submit"></td>
        </tr>
        </table>
        <div class="error_msg text-danger" id="numberError"></div>
    </form>
    <cfif structKeyExists(form,"submit")>
        <cfset num=form.text>
        <cfloop index="i" from="1" to="#num#">
                <cfif i mod 2 EQ 0>
                    <span style="color:green">#i#</span>
                <cfelse >
                    <span style="color:blue">#i#</span>
                </cfif>
        </cfloop>
    </cfif>
    <script src="#application.appBasePath#assets/js/script.js"></script>  
</body>
</html>
</cfoutput>
