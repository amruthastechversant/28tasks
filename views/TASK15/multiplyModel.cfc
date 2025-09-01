<cfcomponent>
<!--- <cffunction  name="addition" access="public"  returnType="numeric" output="false"> 
    <cfargument  name="a" type="numeric" required="true">
    <cfargument  name="b" type="numeric" required="true">
    <cfargument  name="c" type="numeric" required="false" default="1">
    <cfargument  name="d" type="numeric" required="false" default="1">
    <cfreturn arguments.a + arguments.b + arguments.c + arguments.d>
</cffunction>--->

<cffunction name="multiply" access="public" returnType="numeric" output="false">
    <cfargument  name="a" type="numeric" required="true">
    <cfargument  name="b" type="numeric" required="true">
    <cfargument  name="c" type="numeric" required="false" default="1">
    <cfargument  name="d" type="numeric" required="false" default="1">
    <cfreturn arguments.a * arguments.b * arguments.c * arguments.d>
</cffunction>

</cfcomponent>