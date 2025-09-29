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
        <cfset local.sendID=local.obj.displaySecond()>
        <cfoutput>
            <table border="1" cellpadding="10" cellspacing="0">
                <tr>
                    <th class="p-2">Image Name</th>
                    <th class="p-2">Image Description</th>
                </tr>
            <cfloop query="local.sendID"> 
                <tr>
                    <td class="p-2"><a href="imageDetails.cfm?imgId=#imgId#">#imgName#</a></td>
                    <td class="p-2"><img src="http://127.0.0.1:8500/myprojects/28%20CFTasks/views/upload/thumb_#imgFile#" alt="thumbnail"></td>
                </tr>
            </cfloop>
            </table>
        </cfoutput>
        <div>
    </div>
    </div>
</body>
</html>



