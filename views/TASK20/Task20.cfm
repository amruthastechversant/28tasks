<cfset captchaText="Abfgn">
<cfset errors=[]>
<cfif structKeyExists(form, "submit")>
<cfif NOT structKeyExists(form,"captcha") OR trim(form.captcha) NEQ captchaText>
    <cfset arrayAppend(errors, "Captcha mismatch")>
</cfif>

<cfif not structKeyExists(form, "email") OR not isValid("email",form.email)>
    <cfset arrayAppend(errors, "enter valid email address")>
</cfif>
</cfif>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK20</title>
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
    <h6>TASK20:<br>
    Create a page with two textboxes (captcha and email). Create captcha using cfimage tag.To validate the fields captcha(text validation) and email(email validation)using server side validation.Once user entered the captcha  & clicked on submit,then check the entered text is equal to captcha text.If correct then Page should show the message(Email Address successfully subscribe our newsletter).

 <h6><br>
    <cfif arrayLen(errors)>
        <div class="error text-danger">
            <ul>
                <cfloop array="#errors#" index="i">
                    <li>#i#</li>
                </cfloop>
            </ul>
        </div>
    </cfif>

    <cfif structKeyExists(form, "submit") AND arrayLen(errors)EQ 0>
        <div class="alert alert-success">
            Email Address successfully subscribe our newsletter
        </div>
    </cfif>
    <form action="" method="POST">
        <label for="captcha">Captcha</label>
        <input type="text" name="captcha" id="captcha" value="#structkeyexists(form,'captcha') ? form.captcha:''#">
        <cfimage action="captcha" width="200" height="60" text="#captchaText#" difficulty="medium" fonts="Arial,Verdana" fontSize="24">
        <label for="email">Email</label>
        <input type="text" name="email" id="email" value="#structkeyexists(form,'email') ? form.email:''#">
        <input type="submit" name="submit" value="submit">
    </form>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>