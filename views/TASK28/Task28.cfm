<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK28</title>
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
    <h6>TASK28:<br>
   You need to create a very basic simple CMS. It will have 2 parts.  Admin part, login enabled. So users who have admin or editor roles can login into this area & can see list of pages, add/edit & delete pages. User side : Page list as menu, while clicking on it will show page name & description.
Table user
  userid, username, pwd, role (values will be admin, editor, user)
Table page
  pageid, pagename, pagedescs

 <h6><br>
    <div>
        <table>
            <tr>
                <button onclick="window.location.href='#application.appBasePath#views/TASK28/login.cfm'">Login Page</button>
            </tr>
        </table>
    </div>
</body>
</html>
</cfoutput>