<cfset variables.error_Msg="">
<cfif structKeyExists(form, "submit")>
    <cfset variables.result=val(form.number)>   
        <cfif variables.result EQ "" OR variables.result LTE 0 OR  variables.result GT 10>
            <cfset variables.error_Msg="Please enter number between 1 and 10">
        <cfelse>
        <cfquery name="getName" datasource="#application.datasource#">
            SELECT firstname,lastname from task12
        </cfquery>
        </cfif>
</cfif>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK12</title>
</head>
<body>
        <form method="POST">
            <label for="number">Enter value between 1 and 10</label>
            <input type="text" id="number" name="number">
             <button type="submit" name="submit">SUBMIT</button>
        </form>
        <cfif len(variables.error_Msg)>
            <p class="text-danger">#variables.error_Msg#</p>
        </cfif>
</cfoutput>
    <cfif structKeyExists(variables, "getName") and getName.recordCount GT 0>
        <table border="1" class="table table-bordered mt-3">
            <thead>
                <tr>
                    <th>Firstname</th>
                    <th>Lastname</th>
                </tr>
            </thead>
            <tbody>
                <cfoutput query="getName">
                    <tr>
                        <td>#firstname#</td>
                        <td>#lastname#</td>
                    </tr>
                </cfoutput>
            </tbody>
        </table>
        <cfoutput>
        <!--- Show nth row firstname without loop --->
        <cfif variables.result GTE 1 AND variables.result LTE getName.recordCount>
            <p><strong>First name at row #variables.result#:</strong> #getName["firstname"][variables.result]#</p>
        <cfelse>
            <p><strong>Invalid row number. Please enter a value between 1 and #getName.recordCount#.</strong></p>
        </cfif>
        </cfoutput>

    </cfif>
    
</body>
</html>


