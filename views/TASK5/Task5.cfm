
<cfscript>

    variables.getAge=getAge();
    function getAge(){
        var ageqry=queryExecute(
            "select user_dob,mother_dob from dob",
            {},
            {datasource=application.datasource}
        );
        return ageqry;
    }

    function calculateAge(dob){
        var today=now();
        var age=dateDiff("yyyy",dob,today);
       
        if(dateCompare(dob, createDate(year(today),month(dob),day(dob)))>0){
            age=-1;
        }
        return age;
    }
    if((getAge.recordCount)>0){
        userDob=getAge.user_dob;
        motherDob=getAge.mother_dob;

        userAge=calculateAge(userDob);
        motherAge=dateDiff("yyyy", motherDob,userDob );
      

    }

</cfscript>
<cfoutput>
<!DOCTYPE html> 
 <html>
 <head>
 <title>TASK5</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
 <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
 </head>
 <body>
    <header class="fixed-header">
        fixed header
    </header>
    <form method="POST">
        <table>
        <tr>
        <th><label for="USER AGE">USER AGE:</label></th>
        <td>#userAge#</td>
        </tr>
        <tr>
         <th><label for="">AGE OF MOTHER:</label></th>
         <td>#motherAge#</td>
         </tr>
        </table>
     </form>
     <footer class="fixed-footer">
        fixed footer
    </footer>
 </body>
 </html>
</cfoutput>
