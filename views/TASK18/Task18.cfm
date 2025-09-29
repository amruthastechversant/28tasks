

<cfoutput>
<cfset data=queryNew("ID ,NAME,EMAIL","integer,varchar,varchar")>
<cfset queryAddRow(data)>
<cfset querySetCell(data,"ID","1")>
<cfset querySetCell(data,"NAME","john")>
<cfset querySetCell(data,"EMAIL","john@gmail.com")>

<cfset queryAddRow(data)>
<cfset querySetCell(data,"ID","2")>
<cfset querySetCell(data,"NAME","ashik")>
<cfset querySetCell(data,"EMAIL","ashik@gmail.com")>

<cfset queryAddRow(data)>
<cfset querySetCell(data,"ID","3")>
<cfset querySetCell(data,"NAME","revathy")>
<cfset querySetCell(data,"EMAIL","revathy@gmail.com")>
<cfdump  var="#data#">
</cfoutput>
