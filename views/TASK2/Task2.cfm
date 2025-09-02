<cfoutput>
<cfif structKeyExists(form, "rating")>
<cfset variables.result=val(form.rating)>
</cfif>


<!DOCTYPE html>
<html>
<head>
<title>TASK2</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <form method="POST">
        <label for="rating">Enter value between 1 and 5</label>
        <input type="number" name="rating" id="rating">
        <button type="submit">SUBMIT</button>
    </form>
    <cfif structKeyExists(form, "rating")>
        <p>rating is :#variables.result#</p>
    <cfswitch expression="#variables.result#">
    <cfcase value="5">
        <cfoutput>very good</cfoutput>
    </cfcase>
    <cfcase value="4">
        <cfoutput>good
        </cfoutput>
    </cfcase>
    <cfcase value="3">
        <cfoutput>fair
        </cfoutput>
    </cfcase>
    <cfcase value="2">
        <cfoutput>ok
        </cfoutput>
    </cfcase>
    <cfdefaultcase>
        <cfoutput>invalid number</cfoutput>
    </cfdefaultcase>
    </cfswitch>
    </cfif>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>