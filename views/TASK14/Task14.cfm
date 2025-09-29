<cfif StructKeyExists(form, "imageFile")>
    <cfinvoke component="models.thumbnail" method="insertImage">
        <cfinvokeargument name="image" value="#form.image#" />
        <cfinvokeargument name="description" value="#form.description#" />
        <cfinvokeargument name="imageFile" value="#form.imageFile#" />                
    </cfinvoke>
</cfif>
<cfoutput>

<!DOCTYPE html>
<html>
<head>
    <title>TASK14</title>
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div id="appConfig" data-baseurl="#application.appBasePath#"></div>
   
    <div class="p-5 mt-3">
       
        <div class="container">
            <form id="imageForm" method="POST" action="" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td><label for="image">Image Name</label></td>
                        <td><input type="text" name="image" id="image"></td>
                    </tr>
                    <tr>
                        <td><label for="description">Image Description</label></td>
                        <td><textarea name="description"></textarea></td>
                    </tr>
                    <tr>
                        <td><label for="imageFile">Upload File</label></td>
                        <td><input type="file" name="imageFile" id="imageFile" accept=".jpg, .jpeg, .png, .gif" required></td>
                        <span id="validationMessage" class="text-danger"></span>
                    </tr>
                </table>
                <div class="d-flex mt-3">
                <button type="submit" name="submit">SUBMIT</button>
                </div>
            </form> 
        </div>
    </div>
    
    <script src="#application.appBasePath#assets/js/script.js"></script>
</body>
</html>
</cfoutput>