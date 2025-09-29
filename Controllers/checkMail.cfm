<cfscript>
param name="email" default="1";
param name="form.firstname" default="";
param name="form.email" default="";

if (structKeyExists(url, "method")) {
    switch (lcase(url.method)) {
        case "emailexists":
            EmailExists();
            break;
        case "saveform":
            saveForm();
            break;
    }
}
public any function EmailExists(){
    emailCheck = queryExecute(
        "SELECT COUNT(*) AS total 
         FROM tbl_subscribe_form 
         WHERE email = ?", 
        [ {value=form.email, cfsqltype="cf_sql_varchar"} ],
        {datasource=application.datasource}
    );

    if (emailCheck.total > 0) {
        writeOutput("Exists");
    } else {
        writeOutput("Not Exists");
    }
}

public any function saveForm(){
    saveForm=queryExecute(
        "insert into tbl_subscribe_form(firstname,email)
        values(?,?)", 
        [
            {value=form.firstname,cfsqltype="cf_sql_varchar"},
            {value=form.email,cfsqltype="cf_sql_varchar"}
        ], 
       {datasource=application.datasource}
    )
    writeOutput("saved successfully")
}

</cfscript>


