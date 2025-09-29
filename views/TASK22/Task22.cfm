
<cfset jsonData='[{"Name":"saravanan","Age":"27","LOCATION":"dubai"},{"Name":"Ram","Age":"26","LOCATION":"Kovilpatti"}]'>
<cfset persons=deserializeJSON(jsonData)>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK22</title>
</head>
<body>
    <table border='1'>
        <tr>
            <th>NAME</th>
            <th>AGE</th>
            <th>LOCATION</th>
        </tr>
        <cfloop array="#persons#" index="person">
            <tr>
                <td>#person.Name#</td>
                <td>#person.Age#</td>
                <td>#person.LOCATION#</td>
            </tr>
        </cfloop>
    </table>
</body>
</html>
</cfoutput>
