<cfif NOT structKeyExists(session, "isLoggedIn") OR session.isLoggedIn EQ false>
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
    <link href="#application.appBasePath#views/assets/css/common.css" rel="stylesheet"> 

</head>
<body>
        <div class="d-flex align-items-center w-100 header">
            <cfif structKeyExists(session, "isLoggedIn") and session.isLoggedIn EQ true>
            <form action="logout.cfm" method="post" class="ms-auto"
                onsubmit="return confirm('Are you sure you want to logout?');">
                <button type="submit" class="logout-btn"> <i class="fas fa-sign-out-alt"></i> Logout </button>
            </form>
            </cfif>
        </div>
        <span class="welcome-text text-primary mx-auto">
            Welcome, #session.user.username#
        </span>

    
        
    

</body>
</html>
</cfoutput>