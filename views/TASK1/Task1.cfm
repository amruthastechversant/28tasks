<cfoutput>
<cfset variables.result="">
<!DOCTYPE html>
<html>
<head>
<title>TASK1</title>
</head>
<body>

    <form method="POST">
        <table border="1">
            <tr>
                <th>Enter number between 1 and 5</th>
                <td>
                    <input type="text" name="rating" id="rating" required>
                    <button type="submit">submit</button>
                </td>
            </tr>
        </table>  
            <cfif structKeyExists(form, "rating")>
                <cfset variables.result=val(form.rating)>
                <p>your rating:#variables.result#</p> 
                <cfif variables.result EQ 5>
                    very good
                <cfelseif variables.result EQ 4>
                    good
                <cfelseif variables.result EQ 3>
                    fair
                <cfelseif variables.result EQ 1 OR  variables.result EQ 2>
                    OK
                <cfelse>
                    <p>invalid number</p>
                </cfif>
            </cfif>
    </form>
</cfoutput>

