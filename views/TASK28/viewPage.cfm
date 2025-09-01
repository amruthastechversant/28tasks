
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
                <div class="body flex-grow-1">
                  <div class="container-lg px-4">
                    <div class="">
                      <div class="tab-content rounded-bottom">
                        <div class="tab-pane active preview" role="tabpanel" id="preview-1007">
                          <div class="mb-3 d-flex justify-content-end align-items-center gap-3">
                              <button type="button" class="btn btn-primary add-btn" onclick="window.location.href='addPage.cfm'">
                                  <i class="icon cil-plus"></i> Add Page
                              </button>
                          </div>
                          <table id="pageTable" class="display table table-striped table-hover">
                            <thead>
                              <tr>
                                <th scope="col">##</th>
                                <th scope="col">Page Name</th>
                                <th scope="col">Page Description</th>
                                <th scope="col">Actions</th>
                              </tr>
                            </thead>
                            <tbody>
                            </tbody>
                          </table>
                        </div>
                      </div>
                  </div>
              </div>
            </div>
        </div>
    </div>
    <cfinclude  template="#application.appBasePath#views/shared/modal.cfm">
     <cfinclude  template="#application.appBasePath#toast.cfm">
    <script src="#application.appBasePath#assets/js/Page.js"></script>
</body>
</html>
</cfoutput>

