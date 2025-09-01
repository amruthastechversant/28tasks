
$(document).ready(function(){
    var baseURL = document.getElementById("appConfig").getAttribute("data-baseurl");
    $("#userForm").on("submit",function(e){
        let isValid=true;
        var number=$('#text').val();

        if(number==""){
            $('#numberError').text("Enter numeric number");
            isValid=false;
        }

        if(isNaN(number)){
            $('#numberError').text("only number is allowed");
            isValid=false;

        }
        if(!isValid){
            e.preventDefault();
        }
    })

    $("#empForm").on("submit",function(e){
        // Stop form until we validate
        let errors = [];
        let isValid=true;
        // 1. Designation
        if ($("#designation").val().trim() === "") {
            errors.push("Please select a designation.");
            isValid=false;
        }

        // 2. Relocate (radio)
        if ($("input[name='agree']:checked").length === 0) {
            errors.push("Please select if you are willing to relocate.");
            isValid=false;
        }

        // 3. Start date fields (month/day/year)
        let month = $("#month").val().trim();
        let day = $("#day").val().trim();
        let year = $("#year").val().trim();
        if (month === "" || day === "" || year === "" || 
            isNaN(month) || isNaN(day) || isNaN(year)) {
            errors.push("Please enter a valid start date (MM/DD/YYYY).");
            isValid=false;
        }

        // 4. Portfolio
        let portfolio = $("#portfolio").val().trim();
        if (portfolio === "" || !/^https?:\/\//i.test(portfolio)) {
            errors.push("Please enter a valid portfolio URL (starting with http:// or https://).");
            isValid=false;
        }

        // 5. Resume file
        let resume = $("input[type='file']").val();
        if (resume === "") {
            errors.push("Please upload your resume.");
            isValid=false;
        } else {
            let allowedExt = /\.(pdf|doc|docx)$/i;
            if (!allowedExt.test(resume)) {
                errors.push("Resume must be a PDF, DOC, or DOCX file.");
            }
            isValid=false;
        }

        // 6. Salary
        if ($("#dollars").val().trim() === "" || isNaN($("#dollars").val()) ||
            $("#cents").val().trim() === "" || isNaN($("#cents").val())) {
            errors.push("Please enter valid salary in dollars and cents.");
            isValid=false;
        }

        // 7. Name
        if ($("#first").first().val().trim() === "" || $("#first").last().val().trim() === "") {
            errors.push("Please enter your first and last name.");
            isValid=false;
        }

        // 8. Phone
        if ($("#phone1").val().trim().length !== 3 ||
            $("#phone2").val().trim().length !== 3 ||
            $("#phone3").val().trim().length !== 4 ||
            isNaN($("#phone1").val()) ||
            isNaN($("#phone2").val()) ||
            isNaN($("#phone3").val())) {
            errors.push("Please enter a valid phone number.");
            isValid=false;
        }

        // Show errors or submit
        if (errors.length > 0) {
            $("#errorMsg").html(errors.join("<br>"));
            isValid=false;
            e.preventDefault();
            
        } else {
            $("#errorMsg").html("");
             // Allow normal form submission
        }
   

    $(".calendar-icon").on("click", function() {
    $("#hiddenDate")[0].showPicker(); // Native date picker
    });

    $("#hiddenDate").on("change", function() {
        let date = new Date($(this).val());
        $("#month").val(String(date.getMonth() + 1).padStart(2, '0'));
        $("#day").val(String(date.getDate()).padStart(2, '0'));
        $("#year").val(date.getFullYear());
    });
 
 });

    $("#checkBtn").click(function(){
        var email=$("#email").val().trim();
        if(email===""){
            $("#validationError").html("<span class='error'>Enter Mail id</span>");
            return;
        }

        $.ajax({
            url:baseURL + "Controllers/checkMail.cfm?method=emailexists",
            type:'POST',
            data:{email:email},
            success:function(response){
                if(response.trim()==="Exists"){
                    $("#validationError").html("<span class='error'>Mail id already there</span>");
                    $("#submitBtn").prop("disabled",true);
                }
               else{
                    $("#submitBtn").prop("disabled", false);
               }
            }
        })
    })
    $("#subscribeForm").on("submit",function(e){
        e.preventDefault();

        $.ajax({
            url:baseURL + "Controllers/checkMail.cfm?method=saveform",
            type:'POST',
            data:$("#subscribeForm").serialize(),
            success:function(response){
                    $("#validationError").html("<span class='success'>"+response+"</span>");
                    $("#submitBtn").prop("disabled", true);
            }
        })
    })

   $("#imageFile").on('change',function(e){
       
        var file=e.target.files[0];
        var  MAX_SIZE_BYTES = 1 * 1024 * 1024;
        const allowedTypes = ['image/jpeg','image/png','image/gif'];
        var message="";

        if(file.size > MAX_SIZE_BYTES){
            message="Image size is greater than 1MB ";
            $(this).val("");
        }
        if(file && !allowedTypes.includes(file.type)){
            message="only jpg,png,gif files are allowed";
           $(this).val("");
          
        }
        $("#validationMessage").text(message);
   })
   

});
