<cfcomponent displayname="userModel">
    <cffunction  name="authenticate" access="public" returnType="query">
        <cfargument  name="username" type="string" required="true">
        <cfargument  name="password" type="string" required="true">
        <cfquery name="qryUser"  datasource="#application.datasource#">
            select username,password from users
        </cfquery>
        <cfreturn qryUser>
    </cffunction>
</cfcomponent>