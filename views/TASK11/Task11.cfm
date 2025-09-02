<cffunction  name="multiply" access="public" returnType="numeric">
    <cfargument  name="a" type="numeric" required="true">
    <cfargument  name="b" type="numeric" required="true">
    
    <cfset result=arguments.a * arguments.b>
    <cfloop index="i" from="3" to="#arraylen(arguments)#">
        <cfset result=result*arguments[i]>
    </cfloop>
    <cfreturn result>

</cffunction>
<cfset result=multiply(1,2)>
<cfdump  var="#result#"><br>

<cfset result=multiply(1,2,3)>
<cfdump  var="#result#"><br>

<cfset result=multiply(1,2,3,4)>
<cfdump  var="#result#">
<cfoutput>
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
<h4>TASK11:
Create a cfm page with a function named multiply. It should give results for the following function calls.
</h4>
<footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>

