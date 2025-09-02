<cfinclude  template="addPageAction.cfm">
<cfoutput>
<!DOCTYPE html>
<html lang="en">
<cfinclude  template="#application.appBasePath#views/shared/head.cfm">
    <body>
<div id="appConfig" data-baseurl="#application.appBasePath#"></div>
        <div class="dashboard-container">
            <cfinclude template="#application.appBasePath#views/shared/sidebar.cfm">
            <div class="main-content">
                <!-- Header -->
                <cfinclude template="#application.appBasePath#views/shared/header.cfm">

                 <div class=" d-flex flex-column flex-grow-1 min-vh-100">
                <cfoutput>
                    <div class="body flex-grow-1">
                        <div class="container-lg px-4">
                            <form  id="pageForm">
                          <input type="hidden" name="pageid" id="pageid" value="#(structKeyExists(variables, 'editPages') ? variables.editPages.pageid : '')#">
                            <table  class="table table-dark table-striped" >
                                <tr>
                                    <td><label for="pageName" class="form-label">Page Name</label></td>
                                    <td><input class="form-control" type="text" name="pageName" id="pageName" value="#(structKeyExists(variables, 'editPages') ? variables.editPages.pagename : '')#">
                                    <div id="pageNameError" class="text text-danger"></div></td>
                                </tr>
                                <tr>
                                    <td><label for="pageDescription" class="form-label">Page Description</label></td>
                                    <td><textarea name="pageDescription" id="pageDescription" rows="5" cols="20" class="form-control">#(structKeyExists(variables, 'editPages') ? variables.editPages.pagedescs : '')#</textarea>
                                    <div id="pageDescriptionError" class="text text-danger"></div></td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="text-end">
                                    <button type="submit">Submit</button></td>
                                </tr>
                            </table>
                            </form>
                        </div>
                    </div>
                 </cfoutput>
                </div>
            </div>
        </div>
        <script src="#application.appBasePath#assets/js/Page.js"></script>
        <cfinclude  template="#application.appBasePath#toast.cfm">
    
    </body>
</html>
</cfoutput>

