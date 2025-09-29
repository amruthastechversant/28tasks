

<cfinclude  template="Task5Action.cfm">
<cfoutput>
<!DOCTYPE html> 
<html>
<head>
<title>TASK5</title>
</head>
<body>
    <form method="POST" id="ageForm">
        <table>
            <tr>
                <td><label for="usersAge">AGE OF USER :</label></td>
                <td><input type="text" name="usersAge" id="usersAge">
                <div id="userAgeError" class="text-danger"></div>
                </td>
                <td><label for="mothersAge">AGE OF MOTHER:</label></td>
                <td><input type="text" name="mothersAge" id="mothersAge">
                <div id="MotherAgeError" class="text-danger"></div>
                </td>
                <td><button type="submit" name="submit">SUBMIT</button></td>
            </tr>
        </table>
        <div id="AgeError" class="text text-danger">#ageErrorMessage#</div>  
    </form>
    <script src="#application.appBasePath#assets/js/script.js"></script>
 </body>
 </html>
</cfoutput>

