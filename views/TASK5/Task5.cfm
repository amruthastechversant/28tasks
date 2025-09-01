
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
        writeDump(age);abort;
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
        writeDump(motherAge);abort;

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
    <form method="POST">
        <label for="USER AGE">USER AGE:#userAge#</label>
        <label for="">AGE OF MOTHER:#motherAge#</label>
     </form>
 </body>
 </html>
</cfoutput>
