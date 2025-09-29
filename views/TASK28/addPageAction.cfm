<cfscript>
if(structKeyExists(url, "pageid")){
        variables.pageid=url.pageid;

        variables.qrygetPages=queryExecute(
            "select pageid,pagename,pagedescs from pages where pageid=?",
            [
                {value=variables.pageid,cfsqltype="cf_sql_integer"}
            ],
            {datasource=application.datasource}
        )

        if(variables.qrygetPages.recordCount){
            variables.editPages=variables.qrygetPages;
        }

    
    }

</cfscript>
