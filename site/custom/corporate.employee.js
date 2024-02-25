function reload_interval(time) {
	setTimeout(function(){
		location.reload();
	}, time);
}

$(document).ready(function() {

    var btnCorporateEmployeeJoin  = $('#btnCorporateEmployeeJoin');
    
    btnCorporateEmployeeJoin.on('click', function() {
        
        var inputInvite = $("input[name='promocode_or_link']");
        var employeeJoin = $("input[name='employee_join']");
    
    
        var action = 'joinCorporateEmployee';
        var  promocode_or_link = inputInvite.val();
        var  join = employeeJoin.val();
        
        if((join == 1) && (!promocode_or_link)) {
            
            corporateEmployeeSubmitMSG(false, 'Введите промокод или ссылку для установления связи с вашей компанией.');
            return false;
            
        } 
        
        $.ajax({
    		type: "POST",
    		url: "assets/connectors/partnership-programs.php",
    		data: {action:action,promocode_or_link:promocode_or_link,join:join},
    		dataType: 'json',
    		success : function(req){
    		    console.log(req);
    		    
    			if(req.answer == 1) {
    			   
    			   if(req.join) {
    			        
                        btnCorporateEmployeeJoin.removeClass();
                        btnCorporateEmployeeJoin.addClass('btn btn--red w-all');
                        btnCorporateEmployeeJoin.attr('value', req.btn);
                        inputInvite.attr("readonly", true); 
                        employeeJoin.val(0);
                        inputInvite.hide();
                        
                        
                        
    			   } else {
    			       
                        btnCorporateEmployeeJoin.removeClass();
                        btnCorporateEmployeeJoin.addClass('btn w-all');
                        btnCorporateEmployeeJoin.attr('value', req.btn);
                        inputInvite.attr("readonly", false); 
                        employeeJoin.val(1);
                        inputInvite.show();
                        
                        
    			   }          
                   
    			   corporateEmployeeSubmitMSG(true, req.msg);
    			   
    			   if(req.join){
    			       
    			       openModal('employee_connect_thank');
    			       reload_interval(3000);
    			       
    			   }
    			   
    			   			
    			} else {
    			    
    			    corporateEmployeeSubmitMSG(false, req.msg);
    			    
    			}
    		}
        });
        
    });
});    


function corporateEmployeeSubmitMSG(valid, msg){

	if(valid){
		    
		var msgClasses = "success form-message";
		AjaxForm.Message.success(msg);
			
	} else {
		    
		var msgClasses = "error form-message";
		AjaxForm.Message.error(msg);
	}
	
		
}