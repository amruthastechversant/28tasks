<cfif structKeyExists(form, "submitbtn")>
    <cfif structKeyExists(cookie, "VisitsCounter")>
    <cfset currentCount=val(cookie.VisitsCounter)+1>
    <cfelse>
        <cfset currentCount=1>
    </cfif>
<cfcookie  name="VisitsCounter" value="#currentCount#">
<cfelse>
    <cfif structKeyExists(cookie, "VisitsCounter")>
    <cfset currentCount=val(cookie.VisitsCounter)>
    <cfelse>
        <cfset currentCount=0>
    </cfif>
</cfif>
<cfoutput>
current cookie value:you have visited #currentCount# times
</cfoutput>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK19</title>
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
    <h6>TASK19:<br>
    Create a birthday wishes page which contains the following fields.
    Birthday Baby Name: Text box
    His Email Id :	Text box
    Birthday Wishes: Text area
    Greeting image : File upload field

 <h6><br>
    <form action="" method="POST">
        <button type="submit" name="submitbtn">BUTTON</button>
    </form>
    <footer class="fixed-footer">
    fixed footer
    </footer>
</body>
</html>
</cfoutput>
