
<cfinclude  template="action.cfm">
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK25</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   
 <h6><br>
    <div>
        <cfif len(variables.message)>
            <p class="text-success">#variables.message#</p>
        </cfif>
        <table>
            <tr>
            <td><label for="text">click to proceed to Task</label>
                <button class="loadTask1" data-url="#application.appBasePath#views/TASK25/index.cfm">Click to proceed to TASK1</button>
                <button class="loadTask1" data-url="#application.appBasePath#views/TASK25/Task25b.cfm">Click to proceed to TASK2</button>
                <button class="loadTask1" data-url="#application.appBasePath#views/TASK25/Task25c.cfm">Click to proceed to TASK3</button>
            </td>
        </table>
    </div>
   <script src="#application.appBasePath#assets/js/script.js"></script> 
</body>
</html>
</cfoutput>