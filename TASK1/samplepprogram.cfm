<!--- <cfscript> 
    function sumN(addent1,addent2){
        return(addent1+addent2);
    }
</cfscript>
<cfset x=10>
<cfset y=5>
<cfoutput>
#sumN(x,y)#
</cfoutput>
<cfset mystring = "   my name is">
<cfset a = "arjun">
<cfset b = mystring & " " &a>
<cfoutput>
[ #trim(mystring)# ] <!---trim removes whitespace--->
</cfoutput>--->
<cfset testvariables()><!---variables scope --->
<cfset testlocal()><!--- local scope --->
<cffunction  name="testvariables" access="public" returnType="void">
    <cfset variables.counter = 1>
    <cfloop index="i" from="1" to="5">
        <cfset variables.counter=variables.counter +1>
    </cfloop>
    <cfoutput>#variables.counter#</cfoutput>
</cffunction>
<cffunction  name="testlocal" access="public" returnType="void">
    <cfset local.counter = 1>
    <cfloop index="i" from="1" to="5">
        <cfset local.counter=local.counter +1>
    </cfloop>
    <cfoutput>#local.counter#</cfoutput>
</cffunction>

<!--- List operations --->
<cfset myList = "a,b,c,d">
<cfset newList=listAppend(myList, "e")>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,c,d">
<cfset newList=listprepend(myList, "e")>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,c,d">
<cfset newList=listInsertAt(myList, 2, "n")>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,c,d">
<cfset newList=listDeleteAt(myList, 2)>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,c,d">
<cfset newList=listFirst(myList)>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,c,d">
<cfset newList=listLast(myList)>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,c,d">
<cfset newList=listGetAt(myList, 2)>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,c,d">
<cfset newList=listContains(myList, "c")>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,c,d">
<cfset newList=listFind(myList, "c")>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,C,d">
<cfset newList=listContainsNoCase(myList, "c")>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,C,d">
<cfset newList=listFindNoCase(myList, "c")>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,C,d">
<cfset newList=listLen(myList)>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,C,d">
<cfset newList=listChangeDelims(myList,"/")>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,C,c,d,d">
<cfset newList=listRemoveDuplicates(myList)>
<cfoutput>
#newList#
</cfoutput><br>

<cfset myList = "a,b,C,d">
<cfset newList=listToArray(myList)>
<cfoutput>
#newList#
</cfoutput><br>

