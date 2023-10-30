$(document).ready(function() {
	
    $("#btnReset").click(function () {
        
       window.location.reload();
			
    });	
    
    var counterDistrict = $('.inputDistrict').length + 1;
    
	$('#addDistrictBtn').click(function() {
	    
	    if(counterDistrict > 23){
	        
            alert("Only 23 input region allow");
            return false;
            
	    } 
	    
	    var newDistrict = $(document.createElement('div')).attr("id", 'InputDistrictDiv' + counterDistrict);
	    newDistrict.after().html('<input type="text" class="input inputDistrict"  name="districts[]" placeholder="Название района ' + counterDistrict + '" id="inputDistrict' + counterDistrict + '" value="" style="margin-bottom:5px;">');
	    newDistrict.appendTo("#InputDistrictGroup");
	
	    counterDistrict++;
	});
	
	var counterMetro = $('.inputMetro').length + 1;
	
	    
	$('#addMetroBtn').click(function() {
	    
	    if(counterMetro > 100){
	        
            alert("Only 100 input metro allow");
            return false;
            
	    } 
	    
	    var newMetro = $(document.createElement('div')).attr("id", 'InputMetroDiv' + counterMetro);
	    newMetro.after().html('<input type="text" class="input inputMetro"  name="metro[]" placeholder="Название метро ' + counterMetro + '" id="inputMetro' + counterMetro + '" value="" style="margin-bottom:5px;">');
	    newMetro.appendTo("#InputMetroGroup");
	
	    counterMetro++;
	});
	
	
    $("#deleteMetroBtn").click(function () {
        
	    if(counterMetro == 1) {
	        
          alert("No more input metro to remove");
          return false;
          
       }   
        
	   counterMetro--;
       $("#inputMetro" + counterMetro).remove();
			
    });	
    
    $("#deleteDistrictBtn").click(function () {
        
	    if(counterDistrict == 1) {
	        
          alert("No more input region to remove");
          return false;
          
       }   
        
	   counterDistrict--;
       $("#inputDistrict" + counterDistrict).remove();
			
    }); 
    
	var counterRoom = $('.inputRoom').length + 1;
    
	$('#addRoomBtn').click(function() {
	    
	    if(counterRoom > 25){
	        
            alert("Only 25 input room allow");
            return false;
            
	    } 
	    
	    var newRoom = $(document.createElement('div')).attr("id", 'InputRoomDiv' + counterRoom);
	    newRoom.after().html('<input type="text" class="input inputRoom"  name="room[]" placeholder="Название комнаты ' + counterRoom + '" id="inputRoom' + counterRoom + '" value="" style="margin-bottom:5px;">');
	    newRoom.appendTo("#InputRoomGroup");
	
	    counterRoom++;
	});   
	    
});


/*
$(document).ready(function() {

    $('#office-auth-login').keypress(function (e) {
        
        var keyCode = e.keyCode ? e.keyCode : e.which;       
        
        if (keyCode == 13)  {
            
          e.preventDefault();
          $('#office-auth-login').submit();
          
          return false; 
          
        } else {
            
            $('#office-auth-login-username').focus();
            
        }
        
    });
    
});

*/
$(document).ready(function() {
    
    $('[name=price_lesson]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });
    
    $('[name=price_course]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });    
    
    $('[name=course_duration]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });
    
    $('[name=lesson_duration]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });

    $('[name=num_people_in_group]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });

    $('[name=sale]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });
    
    $('[name=num_months_of_study]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });
    
    $('[name=price_course_month]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });
    
    if($('#form_of_study').val()=='online'){
        
            $('#course_address').val('').change(); 
            $("#course_address").prop("required", false);
            $('#address').hide();
        
    }
    
    $("#form_of_study").change(function () {
        
	    if($('#form_of_study').val()=='online'){
	        
            $('#course_address').val('').change(); 
            $("#course_address").prop("required", false);
            $('#address').hide();
            
          
       } else {
           
           $('#course_address').val('').change();
           $("#course_address").prop("required", true);
           $('#address').show();
           
       }
			
    });     
    
    if($('#format_of_study').val()=='individual'){
        
            $('#num_people_in_group').val(1); 
            $('#num_people_in_group').hide();
            
            $('#request_num_people_in_group').val(1); 
            $('#request_num_people_in_group').prop( "disabled", true);
            
            
        
    }
    
    $("#format_of_study").change(function () {
        
	    if($('#format_of_study').val()=='individual'){
	        
            $('#num_people_in_group').val(1); 
            $('#num_people_in_group').hide();
            
            $('#request_num_people_in_group').val(1); 
            $('#request_num_people_in_group').prop( "disabled", true);
            
          
       } else {
           
           $('#num_people_in_group').val('');
           $('#num_people_in_group').show();
           
            $('#request_num_people_in_group').val(''); 
            $('#request_num_people_in_group').prop( "disabled", false);
           
       }
			
    });
    
});


$(document).ready(function() {
	
    $("#organization-register").click(function () {
        
        
       if ($('#organization-polit-styler').attr('class') != "jq-checkbox styler checked") {
       //if (!$('#organization-polit').is(':checked')) {
           
            AjaxForm.Message.error('Необходимо указать, что Вы ознакомлены с пользовательским соглашением и политикой конфиденциальности');    
        
       }
			
    });	
    
    $("#user-register").click(function () {
       
       if ($('#user-polit-styler').attr('class') != "jq-checkbox styler checked") {
       //if (!$('#user-polit').is(':checked')){
           
            AjaxForm.Message.error('Необходимо указать, что Вы ознакомлены с пользовательским соглашением и политикой конфиденциальности');      
        
       }
			
    });
    
    $("#company-register").click(function () {
       
       if ($('#company-polit-styler').attr('class') != "jq-checkbox styler checked") {
       //if (!$('#company-polit').is(':checked')){
           
            AjaxForm.Message.error('Необходимо указать, что Вы ознакомлены с пользовательским соглашением и политикой конфиденциальности');        
            
       }
			
    });
    
});