
<cfif structKeyExists(form, "submit")>
    <cfif NOT structKeyExists(session, "data")>
        <cfset session.data=structNew()>
    </cfif>

    <cfif structKeyExists(session, "data")>
        <cfset session.data[form.textbox1]=form.textbox2>
    </cfif>
    <cfdump  var="#session.data#">
</cfif>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK7</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="#application.appBasePath#TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <h6>TASK7:<br>
    Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
    Create a structure in ColdFusion with the values from the text box. The text entered in textbox one is the key, and the text entered in textbox 2 is the value. Each time you submit the form, the values entered previously should also be shown. 
    It means, if I submit a form with 'ColdFusion', 'super', then I should see a dump with the key as 'ColdFusion' & value as 'Super'.
    Now, If I enter 'php', 'good', then I should see both ColdFusion, php on the screen along with their values.
    CFDUMP the structure.	
    </h6>
    <form method="POST" action="">
    <label for="textbox1">Enter Key </label>
    <input type="text" name="textbox1" value="#structkeyexists(form,"textbox1") ? (form.textbox1) : ''#" required>
    <label for="textbox2">Enter Value</label>
    <input type="text" name="textbox2" value="#structkeyexists(form,"textbox2") ? (form.textbox2) : ''#" required>
    <input type="submit" name="submit" value="submit">
    </form>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>
