$(document).ready(function() {


    function toggleTransferBlock() {
        if ($("input[name='camp_format']:checked").val() === "urban") {
            $("#transfer").hide();
            $("#afterLunch").show();
            $("#beforeLunch").show();
            $("#fullday").show();
            $("#oneDay").show();
            $("#city").show();
            $("#district").show();
            $("#metro").show();
            $("#oblast").hide();
            $("#rasstoyanie").hide();
            
            

        } else if ($("input[name='camp_format']:checked").val() === "outcall") {
            $("#transfer").show();
            $("#afterLunch").hide();
            $("#beforeLunch").hide();
            $("#fullday").hide();
            $("#oneDay").hide();
            $("#city").hide();
            $("#district").hide();
            $("#metro").hide();
            $("#oblast").show();
            $("#rasstoyanie").show();
        }
    }

    // Initial check on page load
    toggleTransferBlock();

    // Set up event listener for changes in camp_format radio buttons
    $("input[name='camp_format']").change(function() {
        toggleTransferBlock();
    });

    $("#btnSaveCampFilter").click(function(event) {
    event.preventDefault();

    // Check if all fields with 'data-required' attribute are filled
    var allRequiredFilled = true;
    $('[data-required]').each(function() {
        if ($(this).val() === '') {
            allRequiredFilled = false;
            return false; // Break the loop
        }
    });

    if (allRequiredFilled) {
        submitCampForm();
    } else {
        // Optional: Add a message or error handling for unfilled required fields
        // formError();
        // submitMSG(false, "Please follow error messages and complete as required");
    }

    return;
});

	function submitCampForm() {
        
        $("#msgSubmit").empty();
		
		
		var userid = $("#btnSaveCampFilter").attr("data-userid");
		//var email = $("#queueEmail").val();
		var temp = $("#queueCampStepByStepForm").serialize();
        var formdata = btoa(temp);
        
        var format = $('input[name="camp_format"]:checked').val();
        
        var subjects = $('input[name="camp_subjects"]:checked').map(function(_, el) {
            return $(el).val();
        }).get();
        
        var class_time = $('input[name="camp_class_time"]:checked').map(function(_, el) {
            return $(el).val();
        }).get();
        
        

        var ages  = $('select[name="camp_ages"]').val();
        var city  = $('select[name="camp_city"]').val();
        var email = $('#camp_email').val();
        
        var date_from = $('select[name="camp_date_from"]').val();
        var date_to = $('select[name="camp_date_to"]').val();
        
        
        var transfer_region = $('select[name="camp_transfer_region"]').val();
        var transfer_city = $('select[name="camp_transfer_city"]').val();
        
        
        
        
        
		$.ajax({
			type: "POST",
			url: "assets/connectors/filter-camp-save-process.php",
			data: {
			        user_id:userid,
			        form_data:formdata,
			        email:email,
			        camp_transfer_region:transfer_region,
			        camp_transfer_city:transfer_city,
			        camp_format:format,
			        camp_subjects:subjects,
			        camp_class_time:class_time,
			        camp_city:city,
			        camp_ages:ages,
			        camp_date_from:date_from,
			        camp_date_to:date_to,
			    
			},
			success : function(text){
			    
			    closeModal("queue_camp_add");
			    
				if (text == "success"){
				    
					formSuccess();
					
				} else {
				    
					formError();
					submitMSG(false, text);
				}
				
				setTimeout(function(){
            	   window.location.reload();
            	}, 3000);            					
				
			}
			
		});
	}

	function formSuccess(){

		//submitMSG(true, "Все хорошо! Выбранные параметры поиска сохранены. :)")
		openModal("queue_camp_thank");
	
                
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