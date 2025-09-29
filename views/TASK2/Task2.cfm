<cfoutput>
<!DOCTYPE html>
<html>
<head>
<title>TASK2</title>
</head>
<body>
    <form method="POST">
        <table  border="1">
        <tr>
            <th>Enter value between 1 and 5</th>
        <td>
        <input type="number" name="rating" id="rating" required>
        <button type="submit">SUBMIT</button>
        </td>
        </tr>
        </table>
    </form>
    <cfif structKeyExists(form, "rating")>
        <cfset variables.result=val(form.rating)>
        <p>rating is :#variables.result#</p>
    <cfswitch expression="#variables.result#">
        <cfcase value="5">
            <cfoutput>5 is very good</cfoutput>
        </cfcase>
        <cfcase value="4">
            <cfoutput> 4 is good
            </cfoutput>
        </cfcase>
        <cfcase value="3">
            <cfoutput>3 is fair
            </cfoutput>
        </cfcase>
        <cfcase value="2">
            <cfoutput>2 is ok
            </cfoutput>
        </cfcase>
        <cfcase value="1">
            <cfoutput>1 is ok
            </cfoutput>
        </cfcase>
        <cfdefaultcase>
            <cfoutput>
                invalid number
            </cfoutput>
        </cfdefaultcase>
    </cfswitch>
    </cfif>
</body>
</html>
</cfoutput>