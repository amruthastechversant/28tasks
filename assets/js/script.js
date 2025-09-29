
$(document).ready(function(){
    var baseURL = $("#appConfig").data("baseurl");


    $("#inputForm").on("submit",function(e){
        var success=$(".text-success");
        var targetdiv=$(".success-msg");

        if(success.length && targetdiv.length){
            targetdiv.append(
                $("<p>").addClass("text-success").text(success.text())
            )
        }
    
    
    
    })
    $("#ageForm").on("submit",function(e){
        let isValid=true;
        var userAge=$("#usersAge").val();
        var motherAge=$("#mothersAge").val();
        if(userAge ==""){
            $("#userAgeError").text("Enter user's Age");
            isValid=false;
        }

        if(motherAge ==""){
            $("#MotherAgeError").text("Enter mother's Age");
             isValid=false;
        }

        if(!isValid){
            e.preventDefault();
        }

    })

    $("#textboxForm").on("submit",function(e){
        let isValid=true;
        var key=$("#key").val();
        var value=$("#value").val();
        if(key =="" || value == ""){
            $("#textboxError").text("Enter key and value");
             isValid=false;
        }

        if(!isValid){
            e.preventDefault();
        }
        
    })

    $("#text").on("input",function(){
        let numberField=$("#text").val();
        message="";
        if(isNaN(numberField)){
            message="only number is allowed";
        }
        $("#numberError").text(message);
    })

    
    $("#userForm").on("submit",function(e){
       
        let isValid=true;
        var number=$('#text').val();

        if(number==""){
            $("#numberError").text("Enter numeric number");
            isValid=false;
        }

        if(!isValid){
            e.preventDefault();
        }
    })

    $("#greetingForm").on("submit",function(e){
       
        let isValid=true;

        var name=$("#name").val();
        var email=$("#email").val();
        var greetings=$("#greetings").val();
        if(name==""){
            $("#nameError").text("Enter name");
            isValid=false;
        }
        
        if(email==""){
            $("#emailError").text("Enter email");
            isValid=false;
        }

         if(greetings==""){
            $("#greetingsError").text("Enter email");
            isValid=false;
        }
        
        if(!isValid){
            e.preventDefault();
        }
    })
    
     $("#GreetingImage").on('change',function(e){
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
        $("#error-msg").text(message);
   })
    $("#empForm").on("submit",function(e){
         
        // Stop form until we validate
        let errors = [];
        let email = $("#email").val().trim();
        let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        let isValid=true;
        // 1. Designation
        if ($("#designation").val().trim() === "") {
            $("#designationError").text("Please select a designation.");
            isValid=false;
        } else{
            $("#designationError").text("");
        }

        // 2. Relocate (radio)
        if ($("input[name='agree']:checked").length === 0) {
            $("#relocateError").text("Please select if you are willing to relocate.");
            isValid=false;
        }else{
            $("#relocateError").text("");
        }

        // 3. Start date fields (month/day/year)
        let month = $("#month").val().trim();
        let day = $("#day").val().trim();
        let year = $("#year").val().trim();
        if (month === "" || day === "" || year === "" || 
            isNaN(month) || isNaN(day) || isNaN(year)) {
                $("#DateError").text("Please enter a valid start date (MM/DD/YYYY).");
                isValid=false;        
        }else{
            $("#DateError").text("");
        }

        // 7. Name
        if ($("#first").first().val().trim() === "" || $("#first").last().val().trim() === "") {
            $("#NameError").text("Please enter your first and last name.");
            isValid=false;
        }else{
            $("#NameError").text("");
        }

        if(email ===""){
            $("#EmailAddressError").text("Please Enter an Email Address");
        }else if(!emailPattern.test(email)){
            $("#EmailAddressError").text("Please Enter valid Email address");
        }else{
            $("#EmailAddressError").text("");
        }
        // 8. Phone
        if ($("#phone1").val().trim().length !== 3 ||
            $("#phone2").val().trim().length !== 3 ||
            $("#phone3").val().trim().length !== 4 ||
            isNaN($("#phone1").val()) ||
            isNaN($("#phone2").val()) ||
            isNaN($("#phone3").val())) {
            $("#phonenoError").text("Please enter a valid phone number.");
            isValid=false;
        }else{
            $("#phonenoError").text("");
        }

        // Show errors or submit
        if (!isValid) {
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
        if(email==""){
            $("#validationError").html("<span class='error'>Enter Mail id</span>");
            return;
        }

        $.ajax({
            url:baseURL + "Controllers/checkMail.cfm?method=emailexists",
            type:'POST',
            data:{email:email},
            success:function(response){
                if(response.trim()==="Exists"){
                    $("#validationMsg").html("<span class='text-danger'>Mail id already there</span>");

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
                    $("#validationMsg").html("<div class='text-success'>"+response+"</div>");
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


 $(".loadTask1").click(function(){
    $("#myBtn").removeClass("d-none");
        var url = $(this).data("url"); 
        console.log("loading url",url);
        $("#sub-content").load(url, function (response, status, xhr) {
            if (status === "error") {
                $("#sub-content").html("<p>Error loading task.</p>");
                console.error("Error:", xhr.status, xhr.statusText);
            }
        });
})

$("#myBtn").click(function(){
    $("#sub-content").show();

})
