<cfset successMsg="">
<cfif structKeyExists(form, "submit")>
    <cfset app = createObject("component", application.appBasePath & "models.employmentService")>
    <cfset app.saveApplication(form)>
    <cfset successMsg="Application submitted successfully!">
</cfif>
<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>TASK23</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="#application.appBasePath#views/TASK6/css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="#application.appBasePath#assets/css/form.css">
</head>
<body>
    <div id="appConfig" data-baseurl="#application.appBasePath#"></div>
    <div class="row pt-5 pb-5 outerdiv">
        <div class="col-2"></div>
            <div class="col-8 checkout-col-12">
                <form id="empForm" method="POST" action="" enctype="multipart/form-data">
                    <div id="successMsg" class="text-success">#successMsg#</div>
                    <div class="container">
                        <header id="header" class="info">
                        <h2 class="">Employment Application</h2>
                        <div>Infinity Box Inc.</div>
                        </header><br>
                        <div class="checkout-item">
                            <label>which position are you applying for?<span class="text-danger required">*</span></label>
                            <select id="designation" name="designation">
                                    <option value=""></option>
                                    <option value="Interface Designer" >Interface Designer</option>
                                    <option value="Software Engineer">Software Engineer</option>
                                    <option value="System Administrator">System Administrator</option>
                                    <option value="Office Manager">Office Manager</option>
                            </select>
                            <div id="designationError" class="text-danger"></div>
                        </div>
                        <div class="checkout-item">
                            <label>Are you willing to relocate<span class="text-danger required">*</span></label>
                            <label for="yes"> <input type="radio" id="yes" name="agree" value="Yes">
                                YES
                            </label>
                            <label for="No"> <input type="radio" id="No" name="agree" value="No">
                                No
                            </label>
                            <div id="relocateError" class="text-danger"></div>
                        </div>

                        <div class="checkout-item"> 
                            <label>When can you start?<span class="text-danger required">*</span></label>
                            <input type="text" name="month" id="month" maxlength="2" size="2" pattern="\d{1,2}">MM
                            <input type="text" name="day" id="day" maxlength="3" size="3" pattern="\d{1,3}">DD
                            <input type="text" name="year" id="year" maxlength="4" size="4" pattern="\d{1,4}">YYYY
                            <span role="button"><i class="fa fa-calendar-alt calendar-icon"></i> </span>
                            <input type="date" id="hiddenDate" style="display:none;">
                            <div id="DateError" class="text-danger"></div>
                        </div>
                        <div class="checkout-item">
                            <label>Portfolio Website</label>
                            <input type="text" name="portfolio" id="portfolio" value="http://">
                        </div>
                        <div class="checkout-item">
                            <label>Attach a copy of Your Resume</label>
                            <input type="file" name="resumePath" id="resumePath"><br>
                            <p>Word or PDF Documents Only</p>
                        </div>
                        <div class="checkout-item">
                            <label>Salary Requirements</label>
                            <div class="dollar">
                            $ <input type="text" name="dollars" id="dollars" size="5"> <b>.</b>
                            <p style="margin: 0;">Dollars</p>
                            </div>
                            <div class="cent">
                            <input type="text" name="cents" id="cents" size="1">
                            <p style="margin: 0;">Cents</p>
                            </div>
                            
                        </div> 
                        <hr>
                        <h3>Your Contact Information</h3> 
                        <div class="checkout-item">
                            <label>Name<span class="text-danger required">*</span></label>
                            <div class="first">
                            <input type="text" name="first" id="first" size="6">
                            <p style="margin:0;">First</p>
                            
                            </div>
                            <div class="last">
                            <input type="text"  name="last" id="last" size="10">
                            <p style="margin:0;">Last</p>
                            </div>
                            <div id="NameError" class="text-danger"></div>   
                        </div>
                        <div class="checkout-item">
                            <label>Email Address<span class="text-danger required">*</span></label>
                            <input type="text" name="email" id="email">
                            <div id="EmailAddressError" class="text-danger"></div>
                        </div>
                        <div class="checkout-item">
                            <label>Phone<span class="text-danger required">*</span></label>
                            <div style="display: flex; gap: 5px; align-items: center;">
                                <input type="text" name="phone1" id="phone1" maxlength="3" size="2">-
                                <input type="text" name="phone2" id="phone2" maxlength="3" size="2">-
                                <input type="text" name="phone3" id="phone3" maxlength="4" size="2">
                            </div>
                            <div id="phonenoError" class="text-danger"></div>
                        </div>
                        <input type="submit" value="submit" name="submit"  class="btn-sm">
                    </div>
                </form>
        </div>
    </div>
    <script src="#application.appBasePath#assets/js/script.js"></script>
</body>
</html>
</cfoutput>
