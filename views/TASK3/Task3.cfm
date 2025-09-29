
<cfoutput>
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
     <cfif structKeyExists(form, "oddnumber")>
        <cfset userInput=len(form.oddnumber)>
        <cfif NOT isNumeric(userInput)>
            <p class="text-danger error-msg" style="margin-left:180px;">Please Enter a number</p>
        <cfelseif userInput LTE 0>
             <p class="text-danger error-msg" style="margin-left:180px;">Please Enter Input</p>
        <cfelse>
        <cfset result=listToArray(form.oddnumber)>
        <cfloop index="i" from="1" to="#arraylen(result)#"> 
            <cfset num=val(result[i])>
                <cfif num MOD 3 NEQ 0>
                <cfcontinue>
            </cfif>
            #num# 
        </cfloop>
      </cfif> 
    </cfif>
 </body>    
 </html>
</cfoutput>


