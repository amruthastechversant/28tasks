<cfoutput>

<cfset result1 = 0>
<cfinvoke component="multiplyModel" method="multiply" returnvariable="result4">
    <cfinvokeargument name="a" value="1">
    <cfinvokeargument name="b" value="2">
</cfinvoke>
Result of (1&2): #result4# <br>

<cfinvoke component="multiplyModel" method="multiply" returnvariable="result5">
    <cfinvokeargument name="a" value="1">
    <cfinvokeargument name="b" value="2">
    <cfinvokeargument name="c" value="3">
</cfinvoke>
Result of (1&2&3): #result5# <br>

<cfinvoke component="multiplyModel" method="multiply" returnvariable="result6">
    <cfinvokeargument name="a" value="1">
    <cfinvokeargument name="b" value="2">
    <cfinvokeargument name="c" value="3">
    <cfinvokeargument name="d" value="4">
</cfinvoke>
Result of (1&2&3&4): #result6# <br>

<hr>
<cfobject component="multiplyModel" name="myObject">
    <cfset res1=myObject.multiply(1,2)>
    Result of (1& 2):<cfoutput>#res1#</cfoutput><br>


    <cfset res2=myObject.multiply(1,2,3)>
    Result of (1& 2 & 3):<cfoutput>#res2#</cfoutput><br>


    <cfset res3=myObject.multiply(1,2,3,4)>
    Result of (1& 2 & 3 & 4):<cfoutput>#res3#</cfoutput><br>

<hr>

<cfset obj=createObject("component","multiplyModel")>
    <cfset res1=obj.multiply(1,2)>
    Result of (1&2):<cfoutput>#res1#</cfoutput><br>


    <cfset res2=obj.multiply(1,2,3)>
    Result of (1& 2 & 3):<cfoutput>#res2#</cfoutput><br>


    <cfset res3=obj.multiply(1,2,3,4)>
    Result of (1& 2 & 3 & 4):<cfoutput>#res3#</cfoutput>

</cfoutput>

