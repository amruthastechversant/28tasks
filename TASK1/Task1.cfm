<cfoutput>
<cfif structKeyExists(form, "rating")>
    <cfset variables..result=val(form.rating)>
    <cfif result EQ 5>
        very good
    <cfelseif result EQ 4>
        good
    <cfelseif result EQ 3>
        fair
    <cfelseif result EQ 1 OR  result EQ 2>
        OK
    <cfelse>
        <p>invalid number</p>
    </cfif>
</cfif>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <h1>CF TASK 1</h1>
    <form method="POST">
        <label for="rating">Enter number between 1 and 5</label>
        <input type="text" name="rating" id="rating">
        <button type="submit">submit</button>
         <p>your rating:#variables.result#</p>

    </form>
</body>
</html>
</cfoutput>
