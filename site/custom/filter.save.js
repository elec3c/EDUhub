$(document).ready(function() {


    $("#btnSaveFilter").click(function() {
       
		//if (event.isDefaultPrevented()) {
		//	formError();
		//	submitMSG(false, "Please Follow Error Messages and Complete as Required");
		//} else {
			event.preventDefault();
            submitForm();
        
            return;
		//}
	});

	function submitForm() {
        
        $("#msgSubmit").empty();
		
		var userid = $("#btnSaveFilter").attr("data-userid");
		var email = $("#queueEmail").val();
		var temp = $("#queueStepByStepForm").serialize();
        var formdata = btoa(temp);
        
        var days = $('input[name="days"]:checked').map(function(_, el) {
            return $(el).val();
        }).get();
    
        var time_from = $('select[name="time_from"]').val();
        var time_to = $('select[name="time_to"]').val();
        
        
		$.ajax({
			type: "POST",
			url: "assets/connectors/filter-save-process.php",
			data: {user_id:userid,form_data:formdata,email:email,days:days,time_from:time_from,time_to:time_to},
			success : function(text){
			    
				if (text == "success"){
				    
					formSuccess();
					
				} else {
				    
					formError();
					submitMSG(false, text);
					
				}
				
			}
			
		});
	}

	function formSuccess(){

		//submitMSG(true, "Все хорошо! Выбранные параметры поиска сохранены. :)")
		openModal("queue_thank");
		
        setTimeout(function(){
		    window.location.reload();
		},3000);            
                
	}

	function formError(){
		

		$("#mse2_filters").removeClass().addClass('shake animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
			$(this).removeClass();
		});
	}

	function submitMSG(valid, msg){

		if(valid){
		    
			var msgClasses = "success form-message";
			AjaxForm.Message.success(msg);
			
		} else {
		    
			var msgClasses = "error form-message";
			AjaxForm.Message.error(msg);
		}
		
		//$("#msgSubmit").removeClass().addClass(msgClasses).text(msg);
		
	}

});