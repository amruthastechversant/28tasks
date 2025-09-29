<cfinclude  template="headerAction.cfm">
<cfoutput>
<div id="appConfig" data-baseurl="#application.appBasePath#"></div>
    <div class="header">
        <cfif structKeyExists(session, "role") and session.role EQ "admin" OR session.role EQ "editor" >
            <h5>Admin Dashboard</h5>
        <cfelse>
        <h1>User Dashboard</h1>
        </cfif>
        <div class="header-menu">
            <cfloop query="variables.getPages"> 
                <a href="#application.appBasePath#views/Task28/userDashboard.cfm?id=#pageid#" 
                    class="<cfif structkeyexists(url,"id") AND url.id EQ pageid>active</cfif>"
                    style="margin-right:15px; cursor:pointer; color:black; text-decoration:none;">
                    #pagename#
                </a>
            </cfloop>
            <span><a href="#application.appBasePath#logout.cfm" onclick="return(confirm('are you sure want to logout'))">LogOut</a></span>
        </div>
    </div>
    <cfif structKeyExists(url, "id") AND len(variables.pagedescs)>
        <div id="pageDescContainer" class="mt-5">
            #variables.pagedescs#
        </div>
    </cfif>
<script src="#application.appBasePath#assets/js/Page.js"></script>
</cfoutput>