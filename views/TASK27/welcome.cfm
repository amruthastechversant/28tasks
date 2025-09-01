<cfif NOT structKeyExists(session, "isLoggedIn") OR session.isLoggedIn EQ true>
    <cflocation  url="loginPage.cfm" addtoken="no">
</cfif>
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
    <header class="fixed-header header header-sticky p-0 mb-4 shadow-sm">
        fixed header
    </header>

    <div class="d-flex justify-content-center">
    <div>welcome #session.user.username#</div>
    <cfif structKeyExists(session, "isLoggedIn") and session.isLoggedIn EQ true>
    <button type="button" class="ms-auto mt-2 mr-3"> <a href="logout.cfm" class="text-decoration-none"onclick= "return confirm('are you sure to logout?')">Logout</a></button>
    </cfif>
    </div>

    <footer class="fixed-footer">
    fixed footer
    </footer>
</body>
</html>
</cfoutput>