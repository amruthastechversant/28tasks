<cfcomponent>
    <cffunction  name="init" access="public" returnType="any">
        <cfreturn this>
    </cffunction>
    <cffunction  name="singleText" access="public" returnType="struct">
        <cfset var result={}>
        <cfset result.text=inputText>
        <cfset result.length=len(inputText)>
        <cfset result.upper=uCase(inputText)>
        <cfreturn result>
    </cffunction>
</cfcomponent>