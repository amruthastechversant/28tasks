
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
<!DOCTYPE html> 
 <html>
 <head>
 <title>TASK3</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
 </head>
 <body>
    <header class="fixed-header">
        fixed header
    </header>
    <form method="POST">
            <label for="oddnumber">Enter number 3,8,9,11,12</label>
        <input type="text" id="oddnumber" name="oddnumber">
         <button type="submit">SUBMIT</button>
     </form>
     <footer class="fixed-footer">
        fixed footer
    </footer>
 </body>
 </html>
</cfoutput>


