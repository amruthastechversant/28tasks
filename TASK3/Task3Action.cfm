<cfoutput>
<cfif structKeyExists(form, "oddnumber")>
    <cfset result=listToArray(form.oddnumber)>
    <cfloop index="i" from="1" to="#arraylen(result)#"> 
        <cfset num=val(result[i])>
            <cfif num MOD 3 NEQ 0>
            <cfcontinue>
        </cfif>
        #num# 
    </cfloop>
</cfif>
</cfoutput>
