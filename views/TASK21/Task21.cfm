<cfoutput>
<cfif structKeyExists(form, "submit")>
    <cfset uploadDir=expandPath("./views/assets/uploads/")>
    <cfif NOT directoryExists(uploadDir)>
        <cfdirectory  action="create" directory="#uploadDir#">
    </cfif>
    <cffile  action="upload" filefield="GreetingImage" destination="#uploadDir#" nameConflict="MakeUnique">
    
    <cfset uploadedFile = cffile.serverFile>
    <cfmail  from="amrutha.s@techversantinfotech.com" 
            subject="Happy birthday #form.name#" 
            to="#form.email#"
            type="html">
            <p>Dear #form.name#,</p>
            <p>#form.greetings#</p>
            <p>Best Wishes,<br>Your Friend</p>
            <cfmailparam 
                file="#uploadDir##uploadedFile#"
                disposition="attachment">
    </cfmail>
    <p style="color:green;">Birthday greeting sent successfully to #form.email#!</p>
</cfif>
<!DOCTYPE html>
<html>
<head>
    <title>TASK21</title>
</head>
<body>
    <form id="greetingForm" action="" method="POST" enctype="multipart/form-data">
        <table border="1" cellspacing="1" cellpadding="1">
        <tr>
            <td><label for="name"> Birthday Baby Name</label></td>
            <td><input type="text" name="name" id="name">
            <div id="nameError" class="text-danger"></div>
            </td>
            
        </tr>
        <tr>
            <td><label for="email">Email ID</label></td>
            <td><input type="email" name="email" id="email">
            <div id="emailError" class="text-danger"></div></td>
        </tr>
        <tr>
            <td><label for="greetings">Wishes</label></td>
            <td> <textarea name="greetings"  id="greetings"rows="5" cols="20"></textarea>
            <div id="greetingsError" class="text-danger"></div></td>
        </tr>
        <tr>
            <td><label for="GreetingImage">Greetings Image</label></td>
            <td> <input type="file" name="GreetingImage" id="GreetingImage" accept="image/*"></td>
        </tr>
        <tr>
            <td><input type="submit" name="submit" value="submit"></td>
        </tr>
        </table>
        <div id="error-msg" class="text-danger"></div>
    </form>
    <script src="#application.appBasePath#assets/js/script.js"></script>
</body>
</html>
</cfoutput>
