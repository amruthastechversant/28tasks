$(document).ready(function(){
    var baseURL = document.getElementById("appConfig").getAttribute("data-baseurl");
    $("#pageTable").DataTable({
        serverSide: true, 
        processing:true, 
        scrollY: "480px", // Set fixed table height
        order: [[0, 'desc']], //sort by first column in desc order
         ajax: {
            url: baseURL + "Controllers/pageController.cfm?method=get-pages",
            dataSrc: "data",
            error: function(xhr, error, thrown) {
            console.error("DataTables AJAX error:", error, thrown);
            console.log(xhr.responseText);
            }
        },
        columns: [
            { data: "pageid" },
            { data: "pagename" },
            { data: "pagedescs" },
            { data: "actions", orderable: false}
        ],
        language: {
            emptyTable: "<div style='height:200px;display:flex;align-items:center;justify-content:center;'>No data available in table</div>"
        }
    });

    $("#pageForm").on("submit",function(e){
         e.preventDefault();
        let isValid=true;
        var formData={
            pageName:$('#pageName').val(),
            pageDescription:$('#pageDescription').val(),
            pageId:$('#pageid').val()
        }
      
        $("#pageNameError").text("");
        $("#pageDescriptionError").text("");
         
        if(!formData.pageName.trim()){
            $("#pageNameError").text("Enter page Name");
            isValid=false;
        }
        if(!formData.pageDescription.trim()){
            $("#pageDescriptionError").text("Enter page Description");
            isValid=false;
        }

       

        if(isValid){
            $.ajax({
                url:baseURL +"Controllers/pageController.cfm?method=save-pages",
                type:'POST',
                data:formData,
                success:function(response){
                    var jsonResponse=JSON.parse(response);
                    const isEdit=formData.pageId && formData.pageId.trim().length > 0;
                    const message= isEdit ? "Page Updated successfully" : "page added successfully";
                    if(jsonResponse.SUCCESS){
                        showToast("page", message, "success");
                        setTimeout(function () {
                            window.location.href = baseURL + 'views/TASK28/viewPage.cfm';
                        }, 1000);
                    } else {
                        ("page", jsonResponse.message, "danger");
                    }
                    
                },
                error: function(xhr, status, error) {
                    alert('Error saving page: ' + error);
                }

            })
        }
    })

    $(document).on('click', '.delete-btn', function () {
        var pageId = $(this).data('id');
        $('#pageid').val(pageId);
        $('#pagemodalConfirm').off('click').on('click', function() {
            let pageId=$("#pageid").val();
                DeletePages(pageId);
        });
    })
    

    function DeletePages(pageId){
        $.ajax({
            url:baseURL + "Controllers/pageController.cfm?method=delete-pages",
            type:'POST',
            dataType:'JSON',
            data:{pageId:pageId},
            success:function(response){console.log(response);
                if(response.success){
                        $("#pageDeleteModal").hide();
                        showToast("page", "page deleted successfully", "success");
                        setTimeout(function () {
                            window.location.href = baseURL + 'views/TASK28/viewPage.cfm';
                        }, 1000);
                    } else {
                        ("page", jsonResponse.message, "danger");
                    }
                    
                },
                error: function(xhr, status, error) {
                    alert('Error saving page: ' + error);
                }
        });
    }

    
});
