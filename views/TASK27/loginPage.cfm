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
    <cfoutput>
    <div id="appConfig" data-baseurl="#application.appBasePath#"></div>
    <div class="bg-body-tertiary min-vh-100 d-flex flex-row align-items-center">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8">
            <div class="card bg-secondary card-group d-block d-md-flex row">
              <div class="card col-md-7 bg-secondary p-4 mb-0">
                <div class="card-body">
                  <h1>Login</h1>
                  <p class="text-body-secondary">Sign In to your account</p>
                  <cfform action="" method="post" id="loginForm">
                    <div class="input-group mb-3">
                      <cfinput class="form-control" type="text" name="username" id="username" placeholder="Username" >
                    </div>
                    <div id="usernameError" class="text-danger small mb-2" ></div>
                    <div class="input-group mb-4">
                      
                      <cfinput class="form-control" type="password" name="password" id="password" placeholder="Password">
                    </div>
                    <div id="passwordError" class="text-danger small mb-2"></div>
                    <div class="row">
                      <div class="col-6">
                        <button class="btn btn-primary px-4" type="submit">Login</button>
                      </div>
                    </div>
                  </cfform>
                </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>
    </cfoutput>
    <footer class="fixed-footer">
    fixed footer
    </footer>
    <script src="#application.appBasePath#assets/js/login.js"></script>
    <cfinclude  template="#application.appBasePath#toast.cfm">
</body>
</html>
</cfoutput>