<cfset data=["1","2","3","4","5","6","7","8","9"]>
<cfset rows=3>
<cfset cols=3>
<cfset counter=1>

<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK16</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <h6>TASK16:<br>
    Write a CF program to print data by 3 rows and 3 columns like the example below.

    1    4    7
    2    5    8
    3    6    9
    </h6>
    <table>
        <cfloop index="i" from="0" to="2">
        <tr>
            <cfloop index="j" from="0" to="2">
            <td>
                <cfif counter LTE arrayLen(data)>
                    <cfoutput>
                        #data[counter]#&nbsp;
                    </cfoutput>
                <cfelse>
                    &nbsp;
                </cfif>
                <cfset counter=counter+1>
            </td>
            </cfloop>
        </tr>
        </cfloop>
    </table>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>
