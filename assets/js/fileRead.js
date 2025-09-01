$(document).ready(function(){

$("#fileInput").on("change",handleFileSelect);
        function handleFileSelect(event){
            const file=event.target.files[0];
        if(file){
            const reader=new FileReader();

            reader.onload=function(e){
                const content=e.target.result;
                $("#fileContent").text(content);
            };
            reader.readAsText(file);
        }
    }       
});