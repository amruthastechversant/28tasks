
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
<!DOCTYPE html> 
 <html>
 <head>
 <title>TASK3</title>
 </head>
 <body>
    <form method="POST">
            <label for="oddnumber">Enter number 3,8,9,11,12</label>
        <input type="text" id="oddnumber" name="oddnumber">
         <button type="submit">SUBMIT</button>
     </form>
 </body>
 </html>

