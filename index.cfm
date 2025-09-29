
<cfset questions = {
    1 = ["Create a page with text box & submit button. Input for the text box is any number    between 1 to 5.
        Based upon the user input, you should show the corresponding string. 5 is Very good. 4 is good. 3 is fair.
        1 & 2 is Ok. Use cfif, cfelseif,cfelse to do this functionality."],
    2 = ["Create a page with text box & submit button. Input for the text box is any number between 1 to 5. 
        Based upon the user input, you should show the corresponding string. 5 is Very good. 4 is good. 3 is fair. 
        1 & 2 is Ok. Use cfcase to do this functionality"],
    3 = ["Create a page with text box & submit button. Input for the text box is 3 8 9 11 12.
         While clicking submit, the result page should show numbers divided by 3. So the result must be 3, 9, 12. 
         Use cfcontinue in the appropriate place."],
    4 = [
        "Show below details in a page
        Today's date, current Month in numeric, current month in word, Last friday date, Last day of month. Show Last 5 days date & day like below. 
        Sunday should be red, 
        Monday - green, 
        Tuesday - orange, 
        Wednesday - yellow, 
        Thursday - bold black, 
        Friday - blue, 
        Saturday - bold red

        02-Dec-2010 - Thursday
        01-Dec-2010 - Wednesday
        30-Nov-2010 - Tuesday
        29-Dec-2010 - Monday
        28-Dec-2010 - Sunday"],
    5 = ["Get user & his mother date of birth. show users age & At what age his mother delivered him. Tell him how many days are remaining for his & his mother’s birthday."],
    6 = ["Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self
        Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. CFDUMP the structure.
    "],
    7 = ["Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
        Create a structure in ColdFusion with the values from the text box. The text entered in textbox one is the key, and the text entered in textbox 2 is the value. Each time you submit the form, the values entered previously should also be shown. 
        It means, if I submit a form with 'ColdFusion', 'super', then I should see a dump with the key as 'ColdFusion' & value as 'Super'.
        Now, If I enter 'php', 'good', then I should see both ColdFusion, php on the screen along with their values.
        CFDUMP the structure.	
    "],
    8 = ["Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
        Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. Each time you submit the form, the values entered previously should also maintained in the structure.
        It means, if I submit a form with 'ColdFusion', 'super', then structure should have key as 'ColdFusion' & value as 'Super'.
        Now, If I enter 'php', 'good', then structure should have both ColdFusion, php along with their values.
        If I enter ColdFusion again, with different value, then the new value should replace the old value.
        CFDUMP the structure.
    "],
    9 = ["Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
        Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. Each time you submit the form, the values entered previously should also maintained in the structure.
        It means, if I submit a form with 'ColdFusion', 'super', then structure should have key as 'ColdFusion' & value as 'Super'.
        Now, If I enter 'php', 'good', then structure should have both ColdFusion, php along with their values.
        CFDUMP the structure. 
        This is different from CF_Struct_3 task. If I enter ColdFusion and ColdFusion is already present, then the system should say, 'ColdFusion already present. Cannot add again'
    "],
    10 = ["Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self
        Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. Each time you submit the form, the values entered previously should also be shown. 
        It means, if I submit a form with 'ColdFusion', 'super', then structure should have key as 'ColdFusion' & value as 'Super'.
        Now, If I enter 'php', 'good', then structure should have both ColdFusion, php along with their values
        In this task, you should show the keys in alphabetical order.
    "],
    11 = ["<p>Create a cfm page with a function named ‘multiply’. It should give results for the following function calls.</p>
            <img src='assets/img/question11.png' style='max-width:100%;height:auto'>"
    ],
    12 = ["In SQL create a table with firstname & last name columns. insert 10 records into that table. 
        There is no primary key & numberic column in this table. Create a page with text box & submit button.  
        User can enter numeric value less than 10. While click on submit, you should show all data from table 
        as well as show Query’s nth row first name column without looping. Here n is value of the user input.
    "],
    13 = ["Highlight search keyword:
        You have variable with content “the quick brown fox jumps over the lazy dog”
        Create a page with text box & submit submit button. If you user gave “the” as input, then you need to show the result as,Found the key word in 2 times - the quick brown fox jumps over the lazy dog. if input is dog then result should be,Found the key word in 1 time - the quick brown fox jumps over the lazy dog
    "],
    14 = ["Create a form with Image name text box , description text area & Image upload field. User can upload only small size jpg,png and gif files. Add validation to check uploaded file type & file size. User should not upload a image which is greater than 1 MB. Once user uploaded a image,create a thumbnail image (20*20 size) from uploaded images. In list page, show thumbnail image & image name. While clicking on the image name, it should redirect the user to details page which will show image name, description & original uploaded image.
    "],
    15 = ["Create a component with function multiply. Create a cfm page which need to call that function with different arguments (mentioned below) using cfinvoke tag, cfobject tag and createobject function. It should give results for the following function calls with different number of arguments
        mulitiply(1,2)
        mulitiply(1,2,3)
        mulitiply(1,2,3,4)
    "],
    16 = ["<p>Write a CF program to print data by 3 rows and 3 columns like the example below.</p>
           <img src='assets/img/question16.png' style='max-width:100%;height:auto'>
    "],
    17 = ["Create a page with text box & submit button. User can enter numeric value in the text box & click the submit button. If user entered non numeric character, page should validate user input using JS.
        While clicking on submit button, page should show up 1 to given input number, odd numbers should be in blue, even numbers should be in green.
    "],
    18 = ["Need to create a query data type variable manually with out using cfquery tag. Need to use neccesary query functions.
        Query will have 3 columns
        ID - Number 
        Name - String
        email	- String
        This Query variable should have 3 rows of data.
    "],
    19 = ["ColdFusion Cookies
--------------------
        Create a web page that will have one submit button. When submitted, the page will post to self. 
        Create a cookie named 'VisitsCounter' and every time the submit button is clicked and the page is posted, the 'VisitsCounter' should be increased by 1 and the increased value is shown on the page.
    "],
    20 = ["Create a page with two textboxes (captcha and email). Create captcha using cfimage tag.To validate the fields captcha(text validation) and email(email validation)using server side validation.Once user entered the captcha  & clicked on submit,then check the entered text is equal to captcha text.If correct then Page should show the message(Email Address successfully subscribe our newsletter).
    "],
    21 = ["Create a birthday wishes page which contains the following fields.
        Birthday Baby Name: Text box
        His Email Id :	Text box
        Birthday Wishes: Text area
        Greeting image : File upload field
        While clicking on the submit, it should send greeting mail to the birthday guy’s mail id. 
        Greeting images should be in attachment along with mail.
    "],
    22 =
     [  
        "Show the below JSON info in table format. 
        Json:
        [
          {""Name"": ""Saravanan"", ""Age"": 27, ""LOCATION"": ""Dubai""},
          {""Name"": ""Ram"", ""Age"": 26, ""LOCATION"": ""Kovilpatti""}
        ]"
    ],
    23 = ["Design the form as like
            https://examples.wufoo.com/forms/employment-application/
            Add javascript validation for all required fields (which will have red * in the label).
            While clicking on the Submit button, data needs to be saved into Database. Database code should be in CFC
    "],

    24 = ["Create a subscribe form with first name, Email id text boxes.Near email id text box, check button should be there.Below these text boxes submit button should be there. By default the submit button should be disabled. While clicking that, check mail id in Database using Ajax. If the user entered the mail id there, then it would give an error message like ""Mail id is already there"". If not, enable the submit button. While clicking on the submit button it will insert first name & email id into the database.
    "],

    25 = ["ColdFusion & DB", 
            "<table  class='sub-table'>
        <tr><th>Task1</th></tr>
        <tr>
            <td>
                 Write in <b>Index.cfm</b>, that will save the words in a given paragraph of text into the database as individual records.<br>
                Ex: <i>India is huge country.</i><br>
                This will create 4 rows in the table.
            </td>
        </tr>
    </table>",
            "
            <table class='sub-table'>
            <tr><th>Task2</th></tr>
            <tr>
            <td>
                     Write another cfm page, that retrieves the records from database and tells the total number of times a word is present,<br>
            * Words with length less than 3 are not counted.<br>
            * Numbers are not counted and saved into the database.<br>
            * Result should be in decreasing order of the count of words<br>
            * Result should be in decreasing order of length of the text<br>
            * Result should be in alphabetical order<br>
            Ex: India is huge country. India has 29 states. Indians are nice. It has a nice climate.
            Should return <br>
            
                - India (2)<br>
                - nice (2)<br>
                - has (2)<br>
                - country (1)<br>
                - Indians (1)<br>
                - huge (1)<br> 
                - are (1)<br>
                - climate(1)<br>
                - states (1)<br>
            </td>
            </tr>
            </table>",
            "<table class='sub-table'>
            <tr>
            <th>
                Task 3<br>
                 Tag cloud: Write another cfm page, this is enhancement of Task 2
            </th>
            </tr>
            <tr>
            <td>
                 Depending on the number of times a word is present in the given text, the size of the word should be increased. 
            Hint: Use relative font sizes from CSS properties.
            Bonus Point: Use different colors.

            </td>
            </table>"
             
    ],
    26 = ["In CF_DB_WordCount_1 task, rather than using a text area, you should read from a uploaded txt file
    "],
    27 = ["Login page with user name & password. Once a user enters the correct details, it should redirect to welcome.cfm, if not, it will show an error message in the login page. If any one of the users, directly access the welcome.cfm without login, Application should redirect the user in to log in page.In welcome page, there must be a logout link, which will log out the user from the application & redirect to log in page.
    "],
    28 = ["You need to create a very basic simple CMS. It will have 2 parts.  Admin part, login enabled. So users who have admin or editor roles can login into this area & can see list of pages, add/edit & delete pages. User side : Page list as menu, while clicking on it will show page name & description.
        Table user
        userid, username, pwd, role (values will be admin, editor, user)
        Table page
        pageid, pagename, pagedescs
    "]
}>

<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div id="appConfig" data-baseurl="#application.appBasePath#"></div>
    <div class="container-fluid g-0">
        <div class="row g-0">
        <div class="col-3 sidebar">
            <h1>28 TASKS</h1>
            <ul>
                <cfloop index="i" from="1" to="28">
                    <li>  
                        <a class="task-link" href="?id=#i#">Task #i#</a>
                    </li>
                </cfloop>
            </ul>
        </div>
            <div class="col-9">
                <div class=" header">
                    <h2>Coldfusion Tutorial</h2>
                </div>
                <div class="main-content p-0">
                    <div id ="task-content">
                        <cfif structKeyExists(url,"id")>
                            <cfset taskId=val(url.id)>
                            <!-- Show questions for selected task -->
                            <h3>Questions for Task #taskId#</h3>
                                <div class="d-flex justify-content-end"><button id="myBtn" class="d-none">Back</button></div>
                                <div id="sub-content">
                                    <div class="success-msg"></div>
                                <cfif structKeyExists(questions, taskId)>
                                    
                                        <cfloop array="#questions[taskId]#" index="q">
                                            <p>#q#</p>
                                        </cfloop>
                                    
                                <cfelse>
                                    <p>No questions available for task</p>
                                </cfif>
                                </div>
                            <!-- Include the actual Task page -->
                            <cfinclude template="views/TASK#taskId#/Task#taskId#.cfm">
                            <cfelse>
                                <p>Click on Taskbar to view questions</p>
                        </cfif>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <script src="#application.appBasePath#assets/js/script.js"></script>
</body>
</html>
</cfoutput>
