<cfif structKeyExists(url, "method")>
    <cfsetting enablecfoutputonly="true" />
    <cfsetting showDebugOutput="false">
</cfif>
<cfscript>
    variables.pageModel=createObject("component",application.appBasePath & "models.pageModel");

    if(structKeyExists(url, "method")){
        switch(url.method){
            case "get-pages":
                getPages();
                break;
            case "delete-pages":
                DeletePages();
                break;
            case "save-pages":
                savePages();
                break;
            default:
                writeOutput(serializeJSON({ "success": false, "message": "Unknown method: " & url.method }));
                break;
        }
    }

    
    function getPages(){
        var draw = structKeyExists(url, "draw") ? url.draw : 0;
        var start= structKeyExists(url, "start") ? url.start : 0;
        var length=structKeyExists(url, "length") ? url.length : 8;
        var searchValue = structKeyExists(url, "search[value]") ? url["search[value]"] : "";
        var orderColumnIndex = structKeyExists(url, "order[0][column]") ? url["order[0][column]"] : "0";
        var orderDir = structKeyExists(url, "order[0][dir]") ? url["order[0][dir]"] : "asc";
        var columnMap = ["pageid", "pagename", "pagename"];
        var orderColumn = columnMap[orderColumnIndex +1];
        var totalRecords = variables.pageModel.getTotalPageCount();
        var pages = variables.pageModel.getPages(draw, start, length,searchValue, orderColumn, orderDir, columnMap,totalRecords);
        var data=[];
        for (var i=1; i <=pages.recordCount; i++) {
            var page = {
                "pageid": pages["pageid"][i],
                "pagename": pages["pagename"][i],
                "pagedescs": pages["pagedescs"][i]
            };
           /* // var editAction = "#application.baseURL#?page=edit-category&id=#category.category_id#";*/
           link= "window.location.href='#application.appBasePath#views/TASK28/addPage.cfm?pageid=#page.pageid#'";
            var actions = '<button class="edit-btn" title="Edit Page" onclick="#link#" data-id="#page.pageid#" data-pagename="#page.pagename#"
                        data-pagedescs="#page.pagedescs#">EDIT</button>
                        <button class="delete-btn" title="Delete Page" data-id="#page.pageid#"  data-coreui-toggle="modal" data-coreui-target="##pageDeleteModal">Delete
                </button>
                ';
        /*#application.appBasePath#TASK28/addPage.cfm?pageid=#page.pageid#*/
            arrayAppend(data, { 
                "pageid": page.pageid,
                "pagename": page.pagename,
                "pagedescs":page.pagedescs,
                "actions": actions
            });
        }
        writeOutput(serializeJSON({
            "draw": draw,
            "recordsTotal": totalRecords,
             "recordsFiltered": totalRecords,
            "data":data
        }));
    }

    function savePages(){
         var userData={
            pagename:structKeyExists(form, "pageName") ? trim(form.pageName):"",
            pagedescs:structKeyExists(form, "pageDescription") ? trim(form.pageDescription):""
        };
        if(structKeyExists(form, "pageid")and len(trim(form.pageid))){
            userData.pageid=trim(form.pageid);
        }
        var response=variables.pageModel.savePages(userData);
        writeOutput(serializeJSON(response));
    }

    function DeletePages(){
         if(!len(pageId)){
            writeOutput(serializeJSON({"success":false, "message":"pageID is required"}));
            return;
        }
        var pageQuery=variables.pageModel.getPageById(pageId);
        if(!isQuery(pageQuery)||pageQuery.recordCount EQ 0){
            writeOutput(serializeJSON({"success":false, "message":"page not found"}));
            return;
        }

        var deleteResult = variables.pageModel.DeletePages(pageId);
        if(deleteResult.success){
             writeOutput(serializeJSON({"success":true,"message":"page deleted successfully"}));
        }
        else{
             writeOutput(serializeJSON({"success":false,"message": result.message?: "failed to delete page"}));
        }
    }
</cfscript>