<cfsetting showdebugoutput="false">
<cfoutput>
 <div id="appConfig" data-baseurl="#application.appBasePath#"></div>
<!DOCTYPE html>
<html>
<head>
    <title>TASK24</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
</head>
<body>
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
                <div id="validationMsg"></div> 
            </tr>        
        </table>
        <button type="submit" id="submitBtn" value="submit" name="submit"class="mt-2" disabled>SUBMIT</button>
    </form>
    <script src="#application.appBasePath#assets/js/script.js"></script> 
</body>
</html>
</cfoutput>
