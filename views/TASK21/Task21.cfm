<cfoutput>
<cfif structKeyExists(form, "submit")>
    <cfset uploadDir=expandPath("../../assets/uploads/")>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <h6>TASK21:<br>
    Create a birthday wishes page which contains the following fields.
        Birthday Baby Name: Text box
        His Email Id :	Text box
        Birthday Wishes: Text area
        Greeting image : File upload field
 <h6>
    <form action="" method="POST" enctype="multipart/form-data">
        <table border="1" cellspacing="1" cellpadding="1">
        <tr>
            <td><label for="name"> Birthday Baby Name</label></td>
            <td><input type="text" name="name" id="name"></td><br><br>
        </tr>
        <tr>
            <td><label for="email">Email ID</label></td>
            <td><input type="email" name="email" id="email"></td><br><br>
        </tr>
        <tr>
            <td><label for="greetings">Wishes</label></td>
            <td> <textarea name="greetings" rows="5" cols="20"></textarea></td><br></br>
        </tr>
        <tr>
            <td><label for="GreetingImage">Greetings Image</label></td>
            <td> <input type="file" name="GreetingImage" accept="image/*"></td><br>
        </tr>
        <tr>
            <td><input type="submit" name="submit" value="submit"></td>
        </tr>
        </table>
    </form>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>
