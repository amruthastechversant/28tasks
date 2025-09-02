
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK25</title>
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
    <h6>TASK25:<br>
   ColdFusion & DB
 <h6><br>
    <div>
        <table>
        <tr>
        <td><label for="text">click to proceed to Task</label>
        <button onclick="window.location.href='#application.appBasePath#views/TASK25/index.cfm'">Click to proceed to TASK1</button>
        <button onclick="window.location.href='#application.appBasePath#views/TASK25/Task25b.cfm'">Click to proceed to TASK2</button>
        <button onclick="window.location.href='#application.appBasePath#views/TASK25/Task25c.cfm'">Click to proceed to TASK3</button>
        </td>
        </table>
    </div>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>