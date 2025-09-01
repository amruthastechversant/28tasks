<cfif structKeyExists(form, "submit")>
    <cfset variables.result=val(form.number)>
    <cfquery name="getName" datasource="#application.datasource#">
        SELECT firstname,lastname from task12
    </cfquery>
</cfif>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK12</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <h6>TASK12:<br>
    In SQL create a table with firstname & last name columns. insert 10 records into that table. 
    There is no primary key & numberic column in this table. Create a page with text box & submit button.  
    User can enter numeric value less than 10. While click on submit, you should show all data from table 
    as well as show Querys nth row first name column without looping. Here n is value of the user input.

    </h6>
        <form method="POST">
            <label for="number">Enter value between 1 and 10</label>
            <input type="text" id="number" name="number">
             <button type="submit" name="submit">SUBMIT</button>
        </form>

</cfoutput>
    <cfif structKeyExists(form, "submit") and getName.recordCount GT 0>
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
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>


