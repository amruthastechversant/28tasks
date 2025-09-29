<cfscript>
variables.pagename="";
variables.pagedescs="";
variables.getPages=getPages();
function getPages(){
        getPageqry=queryExecute(
            "select pageid,pagename,pagedescs from pages",
            [],
             {datasource = application.datasource}
        );

        return getPageqry;
    }

    if(structKeyExists(url, "id")){
        variables.pageid=url.id;
        variables.getPageqry=queryExecute(
        "select pageid,pagename,pagedescs from pages where pageid=?",
        [
            {value=variables.pageid,cfsqltype="cf_sql_integer"}
        ],
            {datasource = application.datasource}
       );
    //    return getPageqry;
        
        if(getpageqry.recordCount){
            variables.pagename=getPageqry.pagename;
            variables.pagedescs=getPageqry.pagedescs;
        }
    
    }
    


</cfscript>
