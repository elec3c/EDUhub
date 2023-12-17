$(document).ready(function() {
    
    var btnSubscribeService0 = "#btnSubscribeService0";
    var btnSubscribeService1 = "#btnSubscribeService1";
    var btnSubscribeService2 = "#btnSubscribeService2";
    var btnSubscribeService3 = "#btnSubscribeService3";
    var btnSubscribeService4 = "#btnSubscribeService4";
    var btnSubscribeService5 = "#btnSubscribeService5";
    var btnSubscribeService6 = "#btnSubscribeService6";
    var btnSubscribeService7 = "#btnSubscribeService7";
    var btnSubscribeService8 = "#btnSubscribeService8";
    
    var selectSubscribeService0 = "#selectSubscribeService0";
    var selectSubscribeService1 = "#selectSubscribeService1";
    var selectSubscribeService2 = "#selectSubscribeService2";
    var selectSubscribeService3 = "#selectSubscribeService3";
    var selectSubscribeService4 = "#selectSubscribeService4";
    var selectSubscribeService5 = "#selectSubscribeService5";
    var selectSubscribeService6 = "#selectSubscribeService6";
    var selectSubscribeService7 = "#selectSubscribeService7";
    var selectSubscribeService8 = "#selectSubscribeService8";
    
    $(selectSubscribeService0).trigger("change");
    $(selectSubscribeService1).trigger("change");
    $(selectSubscribeService2).trigger("change");
    $(selectSubscribeService3).trigger("change");
    $(selectSubscribeService4).trigger("change");
    $(selectSubscribeService5).trigger("change");
    $(selectSubscribeService6).trigger("change");
    $(selectSubscribeService7).trigger("change");
    $(selectSubscribeService8).trigger("change");
    
    $(selectSubscribeService0).on('change', function() {
        
        var days = $("#selectSubscribeService0 option:selected").attr('data-days');
        var price = $("#selectSubscribeService0 option:selected").attr('data-price');
        
        $('#tool-tip0').text('Стоимость подписки ' + price + ' рублей на ' + days + ' дней');
        $(btnSubscribeService0).attr('data-payment', price);
        $(btnSubscribeService0).attr('data-periodid', days);
        
    });
    
    $(selectSubscribeService1).on('change', function() {
        
        var days = $("#selectSubscribeService1 option:selected").attr('data-days');
        var price = $("#selectSubscribeService1 option:selected").attr('data-price');
        
        $('#tool-tip1').text('Стоимость подписки ' + price + ' рублей на ' + days + ' дней');
        $(btnSubscribeService1).attr('data-payment', price);
        $(btnSubscribeService1).attr('data-periodid', days);
        
    });
    
    $(selectSubscribeService2).on('change', function() {
        
        var days = $("#selectSubscribeService2 option:selected").attr('data-days');
        var price = $("#selectSubscribeService2 option:selected").attr('data-price');
        
        $('#tool-tip2').text('Стоимость подписки ' + price + ' рублей на ' + days + ' дней');
        $(btnSubscribeService2).attr('data-payment', price);
        $(btnSubscribeService2).attr('data-periodid', days);
        
    });

    $(selectSubscribeService3).on('change', function() {
        
        var days = $("#selectSubscribeService3 option:selected").attr('data-days');
        var price = $("#selectSubscribeService3 option:selected").attr('data-price');        
        
        $('#tool-tip3').text('Стоимость подписки ' + price + ' рублей на ' + days + ' дней');
        $(btnSubscribeService3).attr('data-payment', price);
        $(btnSubscribeService3).attr('data-periodid', days);
        
    });
    
    $(selectSubscribeService4).on('change', function() {
        
        var days = $("#selectSubscribeService4 option:selected").attr('data-days');
        var price = $("#selectSubscribeService4 option:selected").attr('data-price');
        
        $('#tool-tip4').text('Стоимость подписки ' + price + ' рублей на ' + days + ' дней');
        $(btnSubscribeService4).attr('data-payment', price);
        $(btnSubscribeService4).attr('data-periodid', days);
        
    });
    
    $(selectSubscribeService5).on('change', function() {
        
        var days = $("#selectSubscribeService5 option:selected").attr('data-days');
        var price = $("#selectSubscribeService5 option:selected").attr('data-price');
        
        $('#tool-tip5').text('Стоимость подписки ' + price + ' рублей на ' + days + ' дней');
        $(btnSubscribeService5).attr('data-payment', price);
        $(btnSubscribeService5).attr('data-periodid', days);
        
    });
    
    $(selectSubscribeService6).on('change', function() {
        
        var days = $("#selectSubscribeService6 option:selected").attr('data-days');
        var price = $("#selectSubscribeService6 option:selected").attr('data-price');
        
        $('#tool-tip6').text('Стоимость подписки ' + price + ' рублей на ' + days + ' дней');
        $(btnSubscribeService6).attr('data-payment', price);
        $(btnSubscribeService6).attr('data-periodid', days);
        
    });
    
    $(selectSubscribeService7).on('change', function() {
        
        var days = $("#selectSubscribeService7 option:selected").attr('data-days');
        var price = $("#selectSubscribeService7 option:selected").attr('data-price');
        
        $('#tool-tip7').text('Стоимость подписки ' + price + ' рублей на ' + days + ' дней');
        $(btnSubscribeService7).attr('data-payment', price);
        $(btnSubscribeService7).attr('data-periodid', days);
        
    });
    
    $(selectSubscribeService8).on('change', function() {
        
        var days = $("#selectSubscribeService8 option:selected").attr('data-days');
        var price = $("#selectSubscribeService8 option:selected").attr('data-price');
        
        $('#tool-tip8').text('Стоимость подписки ' + price + ' рублей на ' + days + ' дней');
        $(btnSubscribeService8).attr('data-payment', price);
        $(btnSubscribeService8).attr('data-periodid', days);
        
    });    
    

    $(btnSubscribeService0).click(function() {
       
		event.preventDefault();
        submitForm(btnSubscribeService0);

	});


    $(btnSubscribeService1).click(function() {
       
		event.preventDefault();
        submitForm(btnSubscribeService1);

	});
	
    $(btnSubscribeService2).click(function() {
       
		event.preventDefault();
        submitForm(btnSubscribeService2);

	});
	
    $(btnSubscribeService3).click(function() {
       
		event.preventDefault();
        submitForm(btnSubscribeService3);

	});
	
    $(btnSubscribeService4).click(function() {
       
		event.preventDefault();
        submitForm(btnSubscribeService4);

	});
	
    $(btnSubscribeService5).click(function() {
       
		event.preventDefault();
        submitForm(btnSubscribeService5);

	});
	
    $(btnSubscribeService6).click(function() {
       
		event.preventDefault();
        submitForm(btnSubscribeService6);

	});
	
    $(btnSubscribeService7).click(function() {
       
		event.preventDefault();
        submitForm(btnSubscribeService7);

	});
	
    $(btnSubscribeService8).click(function() {
       
		event.preventDefault();
        submitForm(btnSubscribeService8);

	});	



	function submitForm(btn) {
        
		
		if(btn == '#btnSubscribeService0'){
		    
		    auto = "#auto0";
		    
		}
		
		if(btn == '#btnSubscribeService1'){
		    
		    auto = "#auto1";
		    
		}		
		if(btn == '#btnSubscribeService2'){
		    
		    auto = "#auto2";
		    
		}
		if(btn == '#btnSubscribeService3'){
		    
		    auto = "#auto3";
		    
		}
		if(btn == '#btnSubscribeService4'){
		    
		    auto = "#auto4";
		    
		}
		if(btn == '#btnSubscribeService5'){
		    
		    auto = "#auto5";
		    
		}
		if(btn == '#btnSubscribeService6'){
		    
		    auto = "#auto6";
		    
		}
		if(btn == '#btnSubscribeService7'){
		    
		    auto = "#auto7";
		    
		}
		if(btn == '#btnSubscribeService8'){
		    
		    auto = "#auto8";
		    
		}		
		var userid = $(btn).attr("data-userid");
		var serviceid = $(btn).attr("data-serviceid");
		var courseid = $(btn).attr("data-courseid");
		var periodid = $(btn).attr("data-periodid");
		var payment_value = $(btn).attr("data-payment");
		var action_value = $(btn).attr("data-action");
		var auto_checkbox = 0;
		
		if($(auto).is(':checked')){
		    
		    auto_checkbox = 1;
		    
		} else {
		    
		    auto_checkbox = 0;
		    
		}

		$.ajax({
			type: "POST",
			url: "assets/connectors/subscribe-buy.php",
			data: {user_id:userid, service_id:serviceid, course_id:courseid, period_id:periodid, auto:auto_checkbox, payment: payment_value, action: action_value},
			
			success : function(text){
			    
				if (text == "success"){
				    
					formSuccess();
					window.setTimeout( window.location.reload(), 5000);
					
					
				} else {
				    
					formError();
					submitMSG(false, text);
					
				}
				
			}
			
		});
	}

	function formSuccess(){

		submitMSG(true, "Все хорошо! Подписка выполнена успешно!")
	}

	function formError(){
		
		$("#subscribeBuyForm").removeClass().addClass('shake animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
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