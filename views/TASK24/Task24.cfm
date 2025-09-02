<cfoutput>
 <div id="appConfig" data-baseurl="#application.appBasePath#"></div>
<!DOCTYPE html>
<html>
<head>
    <title>TASK24</title>
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
    <h6>TASK24:<br>
   Create a subscribe form with first name, Email id text boxes.Near email id text box, check button should be there.Below these text boxes submit button should be there. By default the submit button should be disabled. While clicking that, check mail id in Database using Ajax. If the user entered the mail id there, then it would give an error message like "Mail id is already there". If not, enable the submit button. While clicking on the submit button it will insert first name & email id into the database.


 <h6><br>
    <form id="subscribeForm" action="" method="POST">
        <table border="1" cellpadding="1"cellspacing="1">
            <tr>
                <td><label for="firstname">Firstname</label></td>
                <td><input type="text" name="firstname" id="firstname"></td>
            </tr>
            <tr>
                <td><label for="Email">Email</label></td>
                <td><input type="text" name="email" id="email" value="">
                <button type="button" id="checkBtn">Check</button></td>
                <div id="validationError" class="text-danger">
            </tr>        
        </table>
        <button type="submit" id="submitBtn" value="submit" name="submit"class="mt-2" disabled>Button</button>
    </form>
    <script src="#application.appBasePath#assets/js/script.js"></script>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>
