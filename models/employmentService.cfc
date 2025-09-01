<cfcomponent>
    <cffunction name="saveApplication" access="public" returntype="any">
        <cfargument name="formData" type="struct" required="true">
        <cfset successmsg="">
        <cfset startDate=createDate(
            val(arguments.formData.year),
            val(arguments.formData.month),
            val(arguments.formData.day)
        )>

        <cfset Phonenumber=arguments.formData.phone1 & arguments.formData.phone2 & arguments.formData.phone3>
        <cfquery name="empData" datasource="#application.datasource#">
            INSERT INTO employmentapplications 
                (Designation,
            Relocate, 
            StartDate,
            Portfolio,
            ResumePath,
            SalaryDollars, SalaryCents,
            FirstName, LastName,
            PhoneNumber)
            VALUES (
                <cfqueryparam value="#arguments.formData.designation#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.formData.agree#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#startDate#" cfsqltype="cf_sql_date" >,
                <cfqueryparam value="#arguments.formData.portfolio#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.formData.resumePath#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.formData.dollars#" cfsqltype="cf_sql_integer">,
                <cfqueryparam value="#arguments.formData.cents#" cfsqltype="cf_sql_integer">,
                <cfqueryparam value="#arguments.formData.first#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.formData.last#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#Phonenumber#" cfsqltype="cf_sql_varchar">    
            )
        </cfquery>
            <cfset successmsg="application submitted">
    </cffunction>
</cfcomponent>