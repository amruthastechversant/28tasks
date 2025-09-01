<cfcomponent name="thumbnail">
    <cffunction name="insertImage" access="public">
        <cfargument name="image"  required="true">
        <cfargument name="description" required="true">
        <cfargument name="imageFile" required="true">

        <cfset local.path = ExpandPath("../../views/upload/")>
       
        <cffile action="upload" destination="#local.path#" nameConflict="MakeUnique">
        <cfset local.image = cffile.serverFile><!---camera38.jpg--->
        <cfset local.imagefullPath = local.path & local.image><!---D:\INSTALLED\cfusion\wwwroot\myprojects\28 CFTasks\assets\uploads\camera35.jpg--->

        <!--- Thumbnail file path --->
        <cfset local.thumbName = "thumb_" & local.image><!---thumb_camera36.jpg--->


        <cfset local.thumbPath = local.path & local.thumbName>

        <!---D:\INSTALLED\cfusion\wwwroot\myprojects\28 CFTasks\assets\uploads\thumb_camera37.jpg--->



    <!--- Create thumbnail (20x20) --->
        <cfimage 
            action="resize" 
            source="#local.imagefullPath#" 
            destination="#local.thumbPath#"
            width="20" 
            height="20" 
            overwrite="yes">

        <cfquery name="imgData" result="imageResult" datasource="#application.datasource#">
            insert into imgData(imgName,imgDesc,imgFile)
            values(
                <cfqueryparam value="#arguments.image#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#local.image#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>

        <cfset local.id = imageResult.generatedKey>
    
        <cflocation url="#application.appBasePath#views/TASK14/listImages.cfm?imgId=#local.id#">
    </cffunction>

    <cffunction name="displaySecond" access="remote" >
        <cfargument name="imgId" required="true">
        <cfquery name="display">
            select * from imgData
            where imgId=<cfqueryparam value='#arguments.imgId#' cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn display>
    </cffunction>

    <cffunction name="displayImage" access="remote">
        <cfargument name="imgId" required="true">
        <cfquery name="display">
            select * from imgData
            where imgId=<cfqueryparam value='#arguments.imgId#' cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn display>
    </cffunction>
</cfcomponent>