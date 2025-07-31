<cfoutput>
<cfif structKeyExists(form, "rating")>
<cfset variables.result=val(form.rating)>
</cfif>


<!DOCTYPE html>
<html>
<head>
</head>
<body>
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
</body>
</html>
</cfoutput>