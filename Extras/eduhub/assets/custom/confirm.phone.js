$(document).ready(function() {
    
if( ($("#mobilephone").val() == '')) {
    $("#mobilephone").removeClass().addClass("input phone-mask");
}    
    
$('#btnConfirmPhone').on('click', function() {
    var action = 'nuberConfirmCheck';
    var phone = $('input').is('#mobilephone') ? $('#mobilephone').val() : '';
    $.ajax({
		type: "POST",
		url: "assets/connectors/confirm-phone-process.php",
		data: {action:action,phone:phone},
		dataType: 'json',
		success : function(req){
		    console.log(req);
			if(req.answer == 1) {
			    openModal('confirm_phone_thank');
			} else {
			    checkPhone();
			}
		}
    });
    
});

$('#moreCode').on('click', function(event) {
    checkPhone();
});
$('#btnProfile').on('click', function() {
    nuberConfirmCheck();
})

$('#btnConfirmCode').on('click', function() {
    event.preventDefault();
    console.log('Код');
    var action = 'checkCode';
    var code = $('#confirmCode').val();
    $.ajax({
		type: "POST",
		url: "assets/connectors/confirm-phone-process.php",
		data: {action:action ,code:code},
		dataType: 'json',
		success : function(req){
		    console.log(req);
			if(req.answer) {
			    openModal('confirm_phone_thank');
			    nuberConfirmCheck();
			} else {
			    openModal('confirm_phone_error');
			}
		}
	});
});

function checkPhone() {
    console.log('Кнопка');
    openModal('confirm_phone');
    var action = 'checkPhone';
    var phone = $('#mobilephone').val();
    $.ajax({
		type: "POST",
		url: "assets/connectors/confirm-phone-process.php",
		data: {action:action ,phone:phone},
		dataType: 'json',
		success : function(req){
		    console.log(req);
			if(req.answer) {
			} else {
			    openModal('confirm_phone_error');
			}
		}
		
	});
}

function nuberConfirmCheck() {
    var action = 'nuberConfirmCheck';
    var phone = $('input').is('#mobilephone') ? $('#mobilephone').val() : '';
    $.ajax({
		type: "POST",
		url: "assets/connectors/confirm-phone-process.php",
		data: {action:action,phone:phone},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    if ($('button').is('#btnConfirmPhone') && $('input').is('#mobilephone') )
    			if(req.answer == 1) {
	    		    $('#btnConfirmPhone').hide();
		    	    $('#mobilephone').addClass('input--confirm');
    			} else {
	    		    $('#btnConfirmPhone').show();
		    	    $('#mobilephone').removeClass('input--confirm');
			    }
		}
    });
}
});