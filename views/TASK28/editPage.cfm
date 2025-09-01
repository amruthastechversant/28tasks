<cfif structKeyExists(url, "pageid") AND isNumeric(url.pageid)>
    <cfquery name="qPage" datasource="#application.datasource#">
        SELECT * 
        FROM pages 
        WHERE pageid = <cfqueryparam value="#url.pageid#" cfsqltype="cf_sql_integer">
    </cfquery>
<cfelse>
    <cfoutput>
        Invalid or missing page ID.
    </cfoutput>
    <cfabort>
</cfif>

<cfif structKeyExists(form, "pageName")>
    <cfquery datasource="#application.datasource#">
        UPDATE pages
        SET pagename = <cfqueryparam value="#form.pageName#" cfsqltype="cf_sql_varchar">,
            pagedescs = <cfqueryparam value="#form.pageDescription#" cfsqltype="cf_sql_longvarchar">
        WHERE pageid = <cfqueryparam value="#url.pageid#" cfsqltype="cf_sql_integer">
    </cfquery>
    <cflocation url="adminDashboard.cfm">
</cfif>

<cfinclude template="../shared/head.cfm">

<body>
    <div class="d-flex">
        <cfinclude template="#application.appBasePath#views/shared/sidebar.cfm">
        <div class="d-flex flex-column flex-grow-1 min-vh-100">
            <cfoutput>
                <div class="body flex-grow-1">
                    <div class="container-lg px-4">
                        <form method="POST">
                            <table>
                                <tr>
                                    <td><label for="pageName">Page Name</label></td>
                                    <td><input type="text" name="pageName" id="pageName" value="#qPage.pagename#"></td>
                                </tr>
                                <tr>
                                    <td><label for="pageDescription">Page Description</label></td>
                                    <td><textarea name="pageDescription" rows="5" cols="20">#qPage.pagedescs#</textarea></td>
                                </tr> 
                            </table>
                            <input type="submit" value="Update Page">
                        </form>
                    </div>
                </div>
            </cfoutput>
        </div>
    </div>
</body>
