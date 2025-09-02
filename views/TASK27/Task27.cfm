<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK27</title>
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
    <h6>TASK27:<br>
   Login page with user name & password. Once a user enters the correct details, it should redirect to welcome.cfm, if not, it will show an error message in the login page. If any one of the users, directly access the welcome.cfm without login, Application should redirect the user in to log in page.In welcome page, there must be a logout link, which will log out the user from the application & redirect to log in page.

 <h6><br>
    <div>
        <table>
            <tr>
                <button onclick="window.location.href='#application.appBasePath#views/TASK27/loginPage.cfm'">Login Page</button>
            </tr>
        </table>
    </div>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>
