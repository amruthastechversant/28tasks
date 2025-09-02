<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK26</title>
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
    <h6>TASK26:<br>
    In CF_DB_WordCount_1 task, rather than using a text area, you should read from a uploaded txt file

 <h6><br>
    <div>
        <label>choose file to read from uploaded text file</label>
        <input type="file" id="fileInput" accept=".txt"> 
    </div>
    <div id="fileContent" class="text-primary"></div>
    <script src="#application.appBasePath#assets/js/fileRead.js"></script>
    <footer class="fixed-footer">
        fixed footer
    </footer>
</body>
</html>
</cfoutput>
