
<cfif structKeyExists(form, "submit")>
    <cfset struct=structNew()>
    <cfset struct[form.textbox1]=form.textbox2>
    <cfdump  var="#struct#">
</cfif>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK6</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
      <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <h6>TASK6:<br>
    Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self
    Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. CFDUMP the structure.
    </h6>
    <form method="POST" action="">
    <label for="textbox1">Enter Key </label>
    <input type="text" name="textbox1" placeholder="enter key">
    <label for="textbox2">Enter Value</label>
    <input type="text" name="textbox2" placeholder="enter value">
    <input type="submit" name="submit" value="submit">
    </form>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>
