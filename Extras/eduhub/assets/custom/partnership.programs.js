function reload_interval(time) {
	setTimeout(function(){
		location.reload();
	}, time);
}

$(document).ready(function() {

$('#file_block').hide();

if(!localStorage.getItem('setting_save')) {
    localStorage.setItem('setting_save', "0");
}

if(!localStorage.getItem('agreement_save')) {
    localStorage.setItem('agreement_save', "0");
}

var btnPartnershipJoin  = $('#btnPartnershipJoin');

if(localStorage.getItem('setting_save')=="1"){
    
    $("#btnProfileSettingSave").trigger("click");
    localStorage.setItem('setting_save', "0");
}

if(localStorage.getItem('agreement_save')=="1"){
    
    $("#btnProfileConclusionAgreementSave").trigger("click");
    localStorage.setItem('agreement_save', "0");
}




function partnership_join_change(){
    
    var  value = $("input[name='partnership_join']:checked").val();
    if (value == 'paper') {
        $('input[name="partnership_join"][value="offer"]').prop('checked', false);
        btnPartnershipJoin.addClass('btn btn--purple w-all');
        //btnPartnershipJoin.attr('value', 'Присоединиться к бумажному договору');                
        $('#policy_block').hide();
        $('#file_block').show();
    } else if (value == 'offer') {
        $('input[name="partnership_join"][value="paper"]').prop('checked', false);
        btnPartnershipJoin.addClass('btn btn--purple w-all');
        //btnPartnershipJoin.attr('value', 'Присоединиться к оферте');        
        $('#policy_block').show();
        $('#file_block').hide();
    } 
    
}

$('input[type=radio][name=partnership_join]').change(function() {

    partnership_join_change();
    
});

btnPartnershipJoin.on('click', function() {
    
    var policy = 0;
    var action = 'joinPartnership';
    
    var  partnership_join = $("input[name='partnership_join']:checked").val();
      
    policy = ($('#policy').is(':checked')) ? 1 : 0;

    if(!policy && partnership_join=='offer') {
        
        partnershipSubmitMSG(false, 'Необходимо указать, что Вы ознакомлены и согласны с офертой.');
        return false;
        
    } 
    
    $.ajax({
		type: "POST",
		url: "assets/connectors/partnership-programs.php",
		data: {action:action,partnership_join:partnership_join},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    
			if(req.answer == 1) {
			   
			   if(req.join) {
			       
                    openModal('partnership_join_thank');
                    btnPartnershipJoin.removeClass();
                    btnPartnershipJoin.addClass('btn btn--red w-all');
                    btnPartnershipJoin.attr('value', req.btn);
                    localStorage.setItem('setting_save', "1");
                    
			   } else {
			       
                    openModal('partnership_join_offer_reject_thank');
                    btnPartnershipJoin.removeClass();
                    btnPartnershipJoin.addClass('btn btn--purple w-all');
                    btnPartnershipJoin.attr('value', req.btn);
                    $.session.set("setting_save", "0");
                    
			   }          
               
			   partnershipSubmitMSG(true, req.msg);
			   reload_interval(3000);
			   			
			} else {
			    
			    partnershipSubmitMSG(false, req.msg);
			    
			}
		}
    });
    
});


function partnershipSubmitMSG(valid, msg){

	if(valid){
		    
		var msgClasses = "success form-message";
		AjaxForm.Message.success(msg);
			
	} else {
		    
		var msgClasses = "error form-message";
		AjaxForm.Message.error(msg);
	}
		
	$("#partnershipSubmitMSG").removeClass().addClass(msgClasses).text(msg);
		
}

$(document).on('click','.confirm-company',function(e){
    
    e.preventDefault();
    
    var action = 'confirmCompany';
    var user_id = $(this).data("user");
    var currConfirmBtn  = $(this);
    
    $.ajax({
		type: "POST",
		url: "assets/connectors/partnership-programs.php",
		data: {action:action,user_id:user_id},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    
			if(req.answer == 1) {
			   
			   partnershipSubmitMSG(true, req.msg);
			   
			   currConfirmBtn.removeClass();
               currConfirmBtn.addClass('btn btn--bdpurple cancel-company');
               currConfirmBtn.attr('value', 'Отменить');
               			   
			   $('#verified-' + user_id).removeClass();
			   $('#verified-' + user_id).addClass('input input--confirm');
			   $('#verification-link-block-' + user_id).hide();
               
			   			
			} else {
			    
			    partnershipSubmitMSG(false, req.msg);
			    
			}
		}
    });    
    

});



$(document).on('click','.cancel-company',function(e){
    
    e.preventDefault();
    
    var action = 'cancelCompany';
    var user_id = $(this).data("user");
    var currCancelBtn  = $(this);
    
    $.ajax({
		type: "POST",
		url: "assets/connectors/partnership-programs.php",
		data: {action:action,user_id:user_id},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    
			if(req.answer == 1) {
			   
			   partnershipSubmitMSG(true, req.msg);
			   
			   currCancelBtn.removeClass();
               currCancelBtn.addClass('btn btn--purple confirm-company');
               currCancelBtn.attr('value', 'Подтвердить');
               
               $('#verified-' + user_id).removeClass();
			   $('#verified-' + user_id).addClass('input');
			   $('#verification-link-block-' + user_id).show();
			   			
			} else {
			    
			    partnershipSubmitMSG(false, req.msg);
			    
			}
		}
    });    
    
});



$(document).on('click','.generate-link-company',function(e){
    
    e.preventDefault();
    
    var action = 'generateLinkCompany';
    var user_id = $(this).data("user");
    var currGenerateLinkBtn  = $(this);
    
    $.ajax({
		type: "POST",
		url: "assets/connectors/partnership-programs.php",
		data: {action:action,user_id:user_id},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    
			if(req.answer == 1) {
			   
			   partnershipSubmitMSG(true, req.msg);
			   $('#verification-code-' + user_id).val(req.link);
			   
			   currGenerateLinkBtn.removeClass();
               currGenerateLinkBtn.addClass('btn w-all btn--red reset-link-company');
               currGenerateLinkBtn.attr('value', 'Сбросить ссылку');
               
			   			
			} else {
			    
			    partnershipSubmitMSG(false, req.msg);
			    
			}
		}
    });    
    
});


$(document).on('click','.reset-link-company',function(e){
    
    e.preventDefault();
    
    var action = 'resetLinkCompany';
    var user_id = $(this).data("user");
    var currResetLinkBtn  = $(this);
    
    $.ajax({
		type: "POST",
		url: "assets/connectors/partnership-programs.php",
		data: {action:action,user_id:user_id},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    
			if(req.answer == 1) {
			   
			   partnershipSubmitMSG(true, req.msg);
			   $('#verification-code-' + user_id).val(req.link);
			   
			   currResetLinkBtn.removeClass();
               currResetLinkBtn.addClass('btn w-all generate-link-company');
               currResetLinkBtn.attr('value', 'Сгенерировать ссылку');
               
			   			
			} else {
			    
			    partnershipSubmitMSG(false, req.msg);
			    
			}
		}
    });    
    
});



$(document).on('click','.generate-link-employee',function(e){
    
    e.preventDefault();
    
    var action = 'generateLinkEmployee';
    var user_id = $(this).data("user");
    var currGenerateLinkEmployeeBtn  = $(this);
    
    $.ajax({
		type: "POST",
		url: "assets/connectors/partnership-programs.php",
		data: {action:action,user_id:user_id},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    
			if(req.answer == 1) {
			   
			   partnershipSubmitMSG(true, req.msg);
			   $('#employee-code-' + user_id).val(req.link);
			   currGenerateLinkEmployeeBtn.removeClass();
               currGenerateLinkEmployeeBtn.addClass('btn w-all btn--red reset-link-employee');
               currGenerateLinkEmployeeBtn.attr('value', 'Сбросить ссылку для сотрудников');
               
			   			
			} else {
			    
			    partnershipSubmitMSG(false, req.msg);
			    
			}
		}
    });    
    
});


$(document).on('click','.reset-link-employee',function(e){
    
    e.preventDefault();
    
    var action = 'resetLinkEmployee';
    var user_id = $(this).data("user");
    var currResetLinkEmployeeBtn  = $(this);
    
    $.ajax({
		type: "POST",
		url: "assets/connectors/partnership-programs.php",
		data: {action:action,user_id:user_id},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    
			if(req.answer == 1) {
			   
			   partnershipSubmitMSG(true, req.msg);
			   $('#employee-code-' + user_id).val(req.link);
			   
			   currResetLinkEmployeeBtn.removeClass();
               currResetLinkEmployeeBtn.addClass('btn w-all generate-link-employee');
               currResetLinkEmployeeBtn.attr('value', 'Сгенерировать ссылку для сотрудников');
               
			   			
			} else {
			    
			    partnershipSubmitMSG(false, req.msg);
			    
			}
		}
    });    
    
});

        
});