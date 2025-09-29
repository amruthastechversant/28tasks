<cfscript>
    rows=3;
    cols=3;

</cfscript>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK16</title>  
</head>
<body>
    <table border="1" class="tablearray">
        <cfloop  from="1" to="#rows#" index="r">
            <tr>
                 <cfloop  from="1" to="#cols#" index="c"> 
                    <td>#r+(c-1)* rows#</td>
                </cfloop>
            </tr>
        </cfloop>
    </table>
    
</body>
</html>
</cfoutput>
