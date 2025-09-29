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
<!DOCTYPE html>
<html>
<head>
    <title>TASK19</title>
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
</head>
<body>
   
    <form action="" method="POST">
        <button type="submit" name="submitbtn">BUTTON</button>
    </form>
    <cfoutput>
        <p class="text-success">current cookie value:you have visited #currentCount# times</p>
    </cfoutput>
</body>
</html>
</cfoutput>
