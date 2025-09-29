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
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
</head>
<body>
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
     <cfif arrayLen(errors)>
        <div class="error text-danger">
            <ul>
                <cfloop array="#errors#" index="i">
                    <li>#i#</li>
                </cfloop>
            </ul>
        </div>
    </cfif>

</body>
</html>
</cfoutput>