<cfscript>
variables.getPages=getPages();
function getPages(){
        getPageqry=queryExecute(
            "select pagename,pagedescs from pages",
            [],
             {datasource = application.datasource}
        );

        return getPageqry;
    }


</cfscript>
