
<cfset jsonData='[{"Name":"saravanan","Age":"27","LOCATION":"dubai"},{"Name":"Ram","Age":"26","LOCATION":"Kovilpatti"}]'>
<cfset persons=deserializeJSON(jsonData)>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK22</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <h6>TASK22:<br>
    Show the below json info in table format.
    Json:
    [{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}] 
    Table format:
    Name 		Age 		Location
    Saravanan	27		Dubai
    Ram		26		Kovilpatti
 <h6><br>
    <table border='1'>
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Location</th>
        </tr>
        <cfloop array="#persons#" index="person">
            <tr>
                <td>#person.Name#</td>
                <td>#person.Age#</td>
                <td>#person.LOCATION#</td>
            </tr>
        </cfloop>
    </table>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>
