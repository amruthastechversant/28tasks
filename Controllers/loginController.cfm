<cfif structKeyExists(url, "method")>
    <cfsetting enablecfoutputonly="true" />
    <cfsetting showDebugOutput="false">
</cfif>
<cfscript>
variables.userModel=createObject("component",application.appBasePath & "models.userModel")
    if(structKeyExists(url, "method")){
        switch(url.method){
            case "login":
                login();
                break;
        }
    }

    
    function login(){
        var loginData = {
                username: structKeyExists(form, "username") ? form.username : "",
                password: structKeyExists(form, "password") ? form.password : ""
        };

        var userData = variables.userModel.authenticate(loginData.username, loginData.password);

        if(userData.recordCount > 0){
            session.user={
                username=userData.username,
                password=userData.password
            }
            session.isLoggedIn=true;
            writeOutput(serializeJSON({ "SUCCESS": true, "message": "Login successful" }));
        }
        else{
             writeOutput(serializeJSON({ "SUCCESS": false, "message": "Invalid username and password" }))
        }
    }
</cfscript>