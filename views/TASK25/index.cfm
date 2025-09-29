
<cfinclude  template="action.cfm"> 
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK25</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
</head>
<body>
    <form method="POST" name="inputForm">
        <table border="1">
            <tr>
                <td><label for="text">Enter Input</label><td>
                <td><textarea name="text" id="text" rows="5" cols="20"></textarea></td>
            </tr>
        </table>
        <input type="submit" name="submit" value="submit">
    </form>
    <script src="#application.appBasePath#assets/js/script.js"></script>
</body>
</html>
</cfoutput>