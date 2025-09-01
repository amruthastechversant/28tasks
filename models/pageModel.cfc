<cfcomponent name="pageModel">

     <cffunction name="getTotalPageCount" access="public" returntype="numeric">
        <cfquery name="qryPages" datasource="#application.datasource#">
            SELECT COUNT(*) as total FROM pages
        </cfquery>
        <cfreturn qryPages.total>
    </cffunction>

    <cffunction  name="getPages" access="public" returnType="query">
        <cfargument  name="draw" type="numeric" required="true">
        <cfargument  name="start" type="numeric" required="true">
        <cfargument  name="length" type="numeric" required="true">
        <cfargument  name="searchValue" type="string" required="true">
        <cfargument  name="orderColumn" type="string" required="true">
        <cfargument  name="orderDir" type="any" required="true">
        <cfargument  name="totalRecords" type="any" required="true">
        <cfargument  name="pageId" type="numeric" required="true">
        <cfquery name="qryPages" datasource="#application.datasource#">
            select pages.pageid,pages.pagename,pages.pagedescs from pages
        <cfif searchValue neq "">
                where 
                pages.pageid LIKE <cfqueryparam value = '%#searchValue#%' cfsqltype="cf_sql_varchar"/>
                OR pages.pagename LIKE <cfqueryparam value = '%#searchValue#%' cfsqltype="cf_sql_varchar"/>
                OR pages.pagedescs LIKE <cfqueryparam value = '%#searchValue#% 'cfsqltype="cf_sql_varchar"/>
        </cfif>
            ORDER BY #orderColumn# #orderDir#
            LIMIT <cfqueryparam value ='#start#' cfsqltype="cf_sql_integer"/>,
             <cfqueryparam value = '#length#' cfsqltype="cf_sql_integer"/>
        </cfquery>
        <cfreturn qryPages>
    </cffunction>

    <cffunction  name="savePages" access="public" returnType="struct">
        <cfargument  name="userData" type="struct" required="true">
        <cfset var result={success=false,message =""}>

        <cfif structKeyExists(userData, "pageid") AND len(trim(userData.pageid))>
            <cfquery name="updatePage" datasource=#application.datasource#>
                UPDATE pages SET
                pagename=<cfqueryparam value="#userData.pagename#" cfsqltype="cf_sql_varchar">,
                pagedescs=<cfqueryparam value="#userData.pagedescs#" cfsqltype="cf_sql_varchar" >
                where pageid=<cfqueryparam value="#userData.pageid#" cfsqltype="cf_sql_integer" >
            </cfquery>
            <cfset result.message="Pages updated successfully">
            <cfset result.success=true>
        <cfelse>
            <cfif structKeyExists(userData, "pagename") AND structKeyExists(userData, "pagedescs") AND trim(userData.pagename) NEQ "" AND trim(userData.pagedescs)NEQ "">
                <cfquery name="qryPages" datasource="#application.datasource#">
                    insert into pages(pagename,pagedescs)
                    values(
                        <cfqueryparam value="#userData.pagename#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#userData.pagedescs#" cfsqltype="cf_sql_varchar">
                    )
                </cfquery>
                <cfset result.message="Page added successfully">
                <cfset result.success=true>
            <cfelse>
                <cfset result.message="">
            </cfif>
        </cfif>
        <cfreturn result>
    </cffunction>

    <cffunction  name="getPageById" access="public" returnType="query">
        <cfargument  name="id" type="numeric" required="true">
        <cfquery name="qryPage" datasource="#application.datasource#">
            select * from pages 
            where pageid=<cfqueryparam value="#id#" cfsqltype="cf_sql_integer">
        </cfquery>
        <cfreturn qryPage>
    </cffunction>

    <cffunction  name="DeletePages" >
        <cfargument  name="pageId" type="numeric" required="true">
        <cfset var result={"success"= false, "message"=""}>
        <cftry>
            <cfquery name="deletePageQry" datasource="#application.datasource#">
                delete from pages where
                pageid=<cfqueryparam value="#arguments.pageId#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cfset result.success=true>
            <cfset result.message="Page Deleted Sucessfully">
        <cfcatch>
            <cfset result.message="Error Deleting Page #cfcatch.message#">
        </cfcatch>
        </cftry>
        <cfreturn result>
    </cffunction>
</cfcomponent>