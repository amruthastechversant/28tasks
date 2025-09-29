

<cfscript>
    variables.message="";
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
        variables.message="Added successfully";
    }

</cfscript>