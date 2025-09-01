$(document).ready(function(){
    var baseURL = document.getElementById("appConfig").getAttribute("data-baseurl");

    $("#loginForm").on("submit",function(e){
            e.preventDefault();

        let isValid=true;
        var username=$('#username').val();
        var password=$('#password').val();

        if(username==""){
            $('#usernameError').text("Enter username");
            isValid=false;
        }
        if(password==""){
            $('#passwordError').text("Enter Password");
            isValid=false;
        }

        if(!isValid){
            return;
        }

        $.ajax({
            url:baseURL+'Controllers/loginController.cfm?method=login',
            type:'POST',
            data:{username:username },
            success:function(response){
                var jsonResponse = JSON.parse(response);
                console.log(jsonResponse);
                if (jsonResponse.SUCCESS) {
                    showToast("Login", "Login successful!", "success");
                    setTimeout(function () {
                        window.location.href = baseURL + 'views/Task27/welcome.cfm';
                    }, 1000);
                } else {    
                    showToast("Login", jsonResponse.message, "danger");
                }
            },
            error: function(xhr, status, error) {
                alert('Error logging in: ' + error);
            }
        })
    })


    $("#userloginForm").on("submit",function(e){
        
        let isValid=true;

        var username=$('#username').val();
        var password=$('#password').val();

        if(username==""){
            $('#usernameError').text("Enter username");
            isValid=false;
        }
        if(password==""){
            $('#passwordError').text("Enter Password");
            isValid=false;
        }

        if(!isValid){
           e.preventDefault();

           
        }

    })
     function showToast(title, message, type) {
        document.getElementById('toastTitle').textContent = title;
        document.getElementById('toastBody').textContent = message;
        var liveToast = document.getElementById('liveToast');
        liveToast.classList.add('show');
        var toastBody = document.getElementById('toastBody');
        if (type === 'danger') {
            toastBody.style.color = '#dc3545';
        } else if (type === 'success') {
            toastBody.style.color = '#198754';
        }
    }
})