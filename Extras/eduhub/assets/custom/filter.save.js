$(document).ready(function() {


    $("#btnSaveFilter").click(function() {
       
		//if (event.isDefaultPrevented()) {
		//	formError();
		//	submitMSG(false, "Please Follow Error Messages and Complete as Required");
		//} else {
		//	event.preventDefault();
            submitForm();
		//}
	});

	function submitForm() {
        
        $("#msgSubmit").empty();
		
		var userid = $("#btnSaveFilter").attr("data-userid");
		var temp = $("#mse2_filters").serialize();
        var formdata = btoa(temp);
		
		$.ajax({
			type: "POST",
			url: "assets/connectors/filter-save-process.php",
			data: {user_id:userid, form_data:formdata},
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

		submitMSG(true, "Все хорошо! Выбранные параметры поиска сохранены. :)")
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