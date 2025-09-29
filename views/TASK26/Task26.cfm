<cfset fileContent="">
<cfif structKeyExists(form, "uploadedFile")>
    <cffile  action="upload" filefield="uploadedFile" destination="#expandPath('./views/upload/')#"
    nameconflict="makeUnique" Result="uploadResult">
     <cfset fileContent = fileRead(uploadResult.serverDirectory & "/" & uploadResult.serverFile)>
</cfif>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK26</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   <form action="" method="POST"  enctype="multipart/form-data">
        <table>
            <tr>
                <th><label>choose file to read from uploaded text file</label></th>
                <td><input type="file" id="fileInput" name="uploadedFile" accept=".txt"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="submit"></td>
            </tr>
        </table>
    </form>
    <cfoutput>
        #htmlEditFormat(fileContent)#
    </cfoutput>
</body>
</html>
</cfoutput>
