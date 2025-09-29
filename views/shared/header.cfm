<cfoutput>
<div class="header">
    <cfif structKeyExists(session, "role") and session.role EQ "admin" OR session.role EQ "editor" >
        <h5>Admin Dashboard</h5>
    <cfelse>
    <h1>User Dashboard</h1>
    </cfif>
    <div class="header-menu">
        <span><a href="#application.appBasePath#logout.cfm" onclick="return(confirm('are you sure want to logout'))">LogOut</a></span>
    </div>
</div>
</cfoutput>