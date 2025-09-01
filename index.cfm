
<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Task Viewer</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="container">
        <div class="sidebar">
    <h1>28 TASKS</h1>
    <ul>
        <cfloop index="i" from="1" to="28">
            <li>  
                <ul>
                    <li>
                        <a target="_blank" href="#application.appBasePath#views/TASK#i#/Task#i#.cfm">
                           Task #i# 
                        </a>
                    </li>
                   
                </ul>
            </li>
        </cfloop>
    </ul>
</div>
</div>
</body>
</html>
</cfoutput>
