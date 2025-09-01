<cfscript>
if(structKeyExists(url, "pageid")){
        local.pageid=url.pageid;

        local.qrygetPages=queryExecute(
            "select pageid,pagename,pagedescs from pages where pageid=?",
            [
                {value=pageid,cfsqltype="cf_sql_integer"}
            ],
            {datasource=application.datasource}
        )

        if(local.qrygetPages.recordCount){
            variables.editPages=local.qrygetPages;
        }
    }

</cfscript>
