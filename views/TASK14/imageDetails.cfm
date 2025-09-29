<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <cfinclude  template="#application.appBasePath#views/shared/head.cfm">
</head>
<body>
    <div class="p-5">
        <div class="container">
        <cfset local.imgId=URL.imgId>
        <cfset local.obj = createObject("component","models.thumbnail")>
        <cfset local.imgDisplay=local.obj.displayImage(local.imgId)>
    
        <cfoutput>
            <cfloop query="local.imgDisplay">
                <table>
                <tr>
                    <th>Image Name</th>
                    <td>#local.imgDisplay.imgName#</td>
                </tr>
                <tr>
                    <th>Image Description </th>
                    <td>#local.imgDisplay.imgDesc#</td>
                </tr>
                <tr>
                    <th>Image</th>
                <td><img src="http://127.0.0.1:8500/myprojects/28%20CFTasks/views/upload/#imgFile#"></td>
            </cfloop>
        </cfoutput>
        </div>
    </div>
</body>
</html>