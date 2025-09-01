<cfset message="the quick brown fox jumps over the lazy dog">
<cfparam name="form.keyword" default="">

<cfif structKeyExists(form, "submit")>
    <cfset keyword = trim(form.keyword)>
    <cfif keyword EQ "the">
        <cfset message="Found the key word in 2 times - the quick brown fox jumps over the lazy dog.">
    <cfelseif keyword EQ "dog">
        <cfset message="Found the key word in 1 time - the quick brown fox jumps over the lazy dog">
    </cfif>
</cfif>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK13</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <h6>TASK13:<br>
    Highlight search keyword:
   Create a page with text box & submit submit button. If you user gave the as input, then you need to show the result as,Found the key word in 2 times - the quick brown fox jumps over the lazy dog. if input is dog then result should be,Found the key word in 1 time - the quick brown fox jumps over the lazy dog

    </h6>
        <form method="POST">
            <label for="number"></label>
            <input type="text" id="keyword" name="keyword" value="#form.keyword#">
             <button type="submit" name="submit">SUBMIT</button>
        </form>
        <cfif structKeyExists(form, "submit")>
        <cfoutput>
            #message#
        </cfoutput>
        </cfif>
</body>
</html>
</cfoutput>
