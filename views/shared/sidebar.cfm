<!--- <!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Task Viewer</title>
    <link rel="stylesheet" href="#application.appBasePath#assets/css/style.css">
</head>
<body>
    <div class="container">
        <div class="sidebar" style="width:250px;">
            <ul>
                
                <li class="nav-item"><a class="nav-link"  href="addPage.cfm">
                <svg class="nav-icon">
                    <use xlink:href="assets/coreui/node_modules/@coreui/icons/sprites/free.svg##cil-layers"></use>
                </svg> Add New Page </a>
                </li>

                <cfif structKeyExists(url, "pageid")>
                    <li class="nav-item">
                        <a class="nav-link" href="editPage.cfm?pageid=#url.pageid#">
                            <svg class="nav-icon">
                                <use xlink:href="assets/coreui/node_modules/@coreui/icons/sprites/free.svg##cil-layers"></use>
                            </svg>
                            Edit Page
                        </a>
                    </li>
                </cfif>

            </ul>
        </div>
    </div>
</body>
</html>--->
<cfoutput>
<div class="sidebar">
    <div class="sidebar-header">
        <a href="#application.appBasePath#index.cfm">
        </a>
    </div>
    <ul class="sidebar-nav">
        <cfif structKeyExists(session, "role") and session.role EQ "admin" OR session.role EQ "editor">
            <li><a href="#application.appBasePath#views/TASK28/adminDashboard.cfm">Dashboard</a></li>
        </cfif>

        <cfif structKeyExists(session, "role") and session.role EQ "admin" OR session.role EQ "editor">
            <li><a href="#application.appBasePath#views/TASK28/viewPage.cfm">Pages</a></li>
        </cfif>
    </ul>
</div>
</cfoutput>

