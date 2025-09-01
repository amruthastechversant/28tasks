component{
    this.name="coldfusion_task";
    this.showDebugOutput = "yes";
    this.datasource = "Coldfusion_Task_dsn"; 
       this.mappings["/models"] = expandPath("./models");
    this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0, 0, 30, 0); 

    function onApplicationStart() {
        application.appBasePath = "/myprojects/28 CFTasks/"
        application.datasource = this.datasource;
        return true;
    }
}