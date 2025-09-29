<cffunction  name="multiply" access="public" returnType="numeric">
    <cfargument  name="a" type="numeric" required="true">
    <cfargument  name="b" type="numeric" required="true">
    
    <cfset result=arguments.a * arguments.b>
    <cfloop index="i" from="3" to="#arraylen(arguments)#">
        <cfset result=result*arguments[i]>
    </cfloop>
    <cfreturn result>
</cffunction>
<cfset result=multiply(1,2)>
<cfdump  var="#result#"><br>

<cfset result=multiply(1,2,3)>
<cfdump  var="#result#"><br>

<cfset result=multiply(1,2,3,4)>
<cfdump  var="#result#">


