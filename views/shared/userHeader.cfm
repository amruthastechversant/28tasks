<cfinclude  template="headerAction.cfm">
<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<cfinclude  template="#application.appBasePath#views/shared/head.cfm">
</head>
<body>
<div id="appConfig" data-baseurl="#application.appBasePath#"></div>
<div class="header">
    <cfif structKeyExists(session, "role") and session.role EQ "admin" OR session.role EQ "editor" >
        <h5>Admin Dashboard</h5>
    <cfelse>
    <h1>User Dashboard</h1>
    </cfif>
    <div class="header-menu">
        <cfloop query="variables.getPages"> 
            <span class="page-link" 
              data-desc="#HTMLEditFormat(pagedescs)#" 
              style="margin-right:15px; cursor:pointer; color:blue; text-decoration:none;">
            #pagename#
            </span>
        </cfloop>
        <span><a href="#application.appBasePath#logout.cfm" onclick="return(confirm('are you sure want to logout'))">LogOut</a></span>
    </div>
</div>
<div id="pageDescContainer" class="mt-5"></div>
<script src="#application.appBasePath#assets/js/Page.js"></script>
</body>
</html>
</cfoutput>