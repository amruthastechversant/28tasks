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
<!---<cfset testvariables()>variables scope
<cfset testlocal()> local scope --->
<!--- <cffunction  name="testvariables" access="public" returnType="void"> 
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
<cfloop array="#newList#" item="item">
    #item#
</cfloop>
<!--- array operations--->
<cfset array = arrayNew(1)>
<cfset array[1]="apple">
<cfset array[2]="orange">
<cfdump  var="#array#">


<cfset array =["a","b","c"]>
<cfset arrayAppend(array, "d")>
<cfdump  var="#array#">

<cfset array=["a","b","c","d"]>
<cfset arrayInsertAt(array, 2, "n")>
<cfdump  var="#array#">
</cfoutput>

<cfset array = ["a","b","c","d","e"]>
<cfset arrayDeleteAt(array, 3)>
<cfdump  var="#array#">


<cfset array = ["a","b","c","d","e"]>
<cfset newarray =  arrayContains(array, "d")>
<cfdump  var="#newarray#">

<cfset array = ["a","b","c","d","e"]>
<cfset newarray =  arrayFind(array, "d")>
<cfdump  var="#newarray#">

<cfset array = ["a","b","c","d","e"]>
<cfset arrayClear(array)>
<cfdump  var="#array#">

<cfset array = ["a","b","c","d","e"]>
<cfloop  index="i" from="1" to="#arraylen(array)#">
<cfoutput>
#array[i]#
</cfoutput>
</cfloop>--->

<!--- <cfset myStruct=structNew()> 
<cfset structInsert(mystruct, "Firstname", "jane")>
<cfset structInsert(mystruct, "lastname", "amru")>
<cfset copy= duplicate(myStruct)>
    <cfdump  var="#copy#">--->

<cfdocument  format="PDF" filename="ShopEazy.pdf" overwrite="yes">
    <h1>this is test pdf</h1>
</cfdocument>

<cfset data=queryNew("firstname ,age","varchar ,integer")>
<cfset queryAddRow(data)>
<cfset querySetCell(data,"firstname","john",1)>
<cfset querySetCell(data,"firstname", 30, 1)>
<cfspreadsheet  action="write" filename="student.xlsx" query="data" overwrite="true">

