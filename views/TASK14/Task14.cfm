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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <cfinclude  template="#application.appBasePath#views/shared/head.cfm">
</head>
<body>
    <div id="appConfig" data-baseurl="#application.appBasePath#"></div>
    <header class="fixed-header">
        fixed header
    </header>
    <div class="p-5 mt-3">
        <h6>TASK14:
    Create a form with Image name text box , description text area & Image upload field. User can upload only small size jpg,png and gif files. Add validation to check uploaded file type & file size. User should not upload a image which is greater than 1 MB. Once user uploaded a image,create a thumbnail image (20*20 size) from uploaded images. In list page, show thumbnail image & image name. While clicking on the image name, it should redirect the user to details page which will show image name, description & original uploaded image.
    </h6>
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
    <footer class="fixed-footer">
        fixed footer
    </footer>
    <script src="#application.appBasePath#assets/js/script.js"></script>
</body>
</html>
</cfoutput>