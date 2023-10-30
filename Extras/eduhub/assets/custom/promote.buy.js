function reload_wait(time) {
	setTimeout(function(){
		location.reload();
	}, time);
}


$(document).on('click','.buy-promote',function(e){
    
    e.preventDefault();
    
    $('.buy_promote').data("user",$(this).data("user"));
    $('.buy_promote').data("group",$(this).data("group"));
    $('.buy_promote').data("lead",$("#lead"+$(this).data("group")).val());
    $('.buy_promote').data("commission",$("#commission"+$(this).data("group")).val());
    
    openModal('promote_buy');
                
});
        
		
$('.buy_promote').click(function(){
    $.post("assets/connectors/promote-buy-process.php",
    {
        user_id: $(this).data("user"),
        group_id: $(this).data("group"),
        lead: $(this).data("lead"),
        commission: $(this).data("commission")

    }, function(response) {
                    
            if(response.success) {
                        
                closeModal();
                AjaxForm.Message.success(response.msg);
                //reload_wait(3000);//location.reload();
                        
            } else {
                
                closeModal();
                AjaxForm.Message.error(response.msg);
                 
            }
            
    },'json');
});        


        
