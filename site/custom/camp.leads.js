function reload_interval(time) {
	setTimeout(function(){
		location.reload();
	}, time);
}



function campLeadsSubmitMSG(valid, msg){

	if(valid){
		    
		AjaxForm.Message.success(msg);
			
	} else {
		    
		AjaxForm.Message.error(msg);
	}
		
}



function isCheck(name) {
    return document.querySelector('input[name="' + name + '"]:checked');
}


$(document).ready(function() {


var btnCampLeadsForm  = $('#btnCampLeadsForm');



btnCampLeadsForm.on('click', function(e) {
    
    e.preventDefault();
  
  
    var user_id = $(this).data("user");
    var temp = $("#campLeadsForm").serialize();
    var formdata = btoa(temp);
     
    alert(user_id);
    alert(formdata);

   //if(!isCheck('conclusion_agreement')){
        
        //partnershipSubmitMSG(false, 'Выберите приемлемые способы заключения партнерских соглашений с Учебными центрами');
        //return false;
        
    //} 
    /*
    $.ajax({
		type: "POST",
		url: "assets/connectors/camp-leads.php",
		data: {user_id:user_id,action:'create',form_data:formdata},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    
			if(req.answer == 1) {
			   
               alert('OK');
			   //campLeadsSubmitMSG(true, req.msg);
			   //reload_interval(3000);
			   			
			} else {
			   
			   alert('ERROR'); 
			   //campLeadsSubmitMSG(false, req.msg);
			    
			}
		}
    });
    */
    
});





$(document).on('click','.delete-camp-leads',function(e){
    
    e.preventDefault();
    
    var user_id = $(this).data("user");
    var uid = $(this).data("uid");
    
    alert(user_id);
    alert(uid);
    //var currCancelBtn  = $(this);
    
    /*$.ajax({
		type: "POST",
		url: "assets/connectors/camp-leads.php",
		data: {action:action,user_id:user_id},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    
			if(req.answer == 1) {
			   
			   campLeadsSubmitMSG(true, req.msg);
			   
			   currCancelBtn.removeClass();
               currCancelBtn.addClass('btn btn--purple confirm-company');
               currCancelBtn.attr('value', 'Подтвердить');
               
               $('#verified-' + user_id).removeClass();
			   $('#verified-' + user_id).addClass('input');
			   $('#verification-link-block-' + user_id).show();
			   			
			} else {
			    
			    campLeadsSubmitMSG(false, req.msg);
			    
			}
		}
    });    */
    
});



$(document).on('click','.edit-link-company',function(e){
    
    e.preventDefault();
    
    var user_id = $(this).data("user");
    var uid = $(this).data("uid");
    
        
    alert(user_id);
    alert(uid);
    
    //var currGenerateLinkBtn  = $(this);
    
    /*$.ajax({
		type: "POST",
		url: "assets/connectors/partnership-programs.php",
		data: {action:'edit',user_id:user_id},
		dataType: 'json',
		success : function(req){
		    console.log(req);
		    
			if(req.answer == 1) {
			   
			   campLeadsSubmitMSG(true, req.msg);
			   $('#verification-code-' + user_id).val(req.link);
			   
			   currGenerateLinkBtn.removeClass();
               currGenerateLinkBtn.addClass('btn w-all btn--red reset-link-company');
               currGenerateLinkBtn.attr('value', 'Сбросить ссылку');
               
			   			
			} else {
			    
			    campLeadsSubmitMSG(false, req.msg);
			    
			}
		}
    });*/
    
});



        
});