

<cfoutput>
<cfset data=queryNew("ID ,NAME,EMAIL","integer,varchar,varchar")>
<cfset queryAddRow(data)>
<cfset querySetCell(data,"ID","1")>
<cfset querySetCell(data,"NAME","john")>
<cfset querySetCell(data,"EMAIL","john@gmail.com")>

<cfset queryAddRow(data)>
<cfset querySetCell(data,"ID","2")>
<cfset querySetCell(data,"NAME","ashik")>
<cfset querySetCell(data,"EMAIL","ashik@gmail.com")>

<cfset queryAddRow(data)>
<cfset querySetCell(data,"ID","3")>
<cfset querySetCell(data,"NAME","revathy")>
<cfset querySetCell(data,"EMAIL","revathy@gmail.com")>
<cfdump  var="#data#">

<!DOCTYPE html>
<html>
<head>
    <title>TASK18</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
</head>
<body>
    <header class="fixed-header">
        fixed header
    </header>
    <h6>TASK18:<br>
    Need to create a query data type variable manually with out using cfquery tag. Need to use neccesary query functions.
    Query will have 3 columns
    ID - Number 
    Name - String
    email	- String
This Query variable should have 3 rows of data.
 <h6><br>
</body>
<footer class="fixed-footer">
        fixed footer
    </footer>
</html>
</cfoutput>
