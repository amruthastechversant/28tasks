
<cfscript>
    if(structKeyExists(form, "submit")){
        variables.result=form.text;
        variables.cleanText = rereplace(result, "[^\w\s]", "", "all");
       
        variables.words=listToArray(trim(variables.cleanText)," ");
        for(word in words){
            if(len(trim(word))){
            queryExecute(
                "insert into tags(word) values(?)",
                [
                    {value=trim(word),cfsqltype="cf_sql_varchar"}
                ],
                {datasource=application.datasource}
            );
            }
        }
        writeOutput("added" & arrayLen(words) & "successfully");
    }

</cfscript>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK25</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <h6>TASK25:<br>
   ColdFusion & DB
 <h6><br>
    <form method="POST">
        <table border="1">
            <tr>
                <td><label for="text">Enter Input</label><td>
                <td><textarea name="text" id="text" rows="5" cols="20"></textarea></td>
            </tr>
        </table>
        <input type="submit" name="submit" value="submit">
    </form>
    
</body>
</html>
</cfoutput>