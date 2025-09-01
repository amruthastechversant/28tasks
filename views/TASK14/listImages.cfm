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
        <cfset local.sendID=local.obj.displaySecond(local.imgId)>
        <cfoutput>
            <cfloop query="local.sendID">
                <a href="imageDetails.cfm?imgId=#imgId#">#imgName#</a>
                <img src="http://127.0.0.1:8500/myprojects/28%20CFTasks/views/upload/thumb_#imgFile#" alt="thumbnail">
            </cfloop>
        </cfoutput>
        <div>
    </div>
    </div>
</body>
</html>



