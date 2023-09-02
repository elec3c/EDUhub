<script type="text/javascript">
$(document).on('af_complete', function(event, response) {
    var form = response.form;
    if (response.success) {
        switch (form.attr('id')) {
        
            case "compisregForm":
                openModal('compisreg_thank');
            break;
        
            case "queueFormDelete":
                window.location.href = "{$_modx->makeUrl(504, 'web', [], 'full')}";
            break;
            case "promoteForm":
                window.location.href = "{$_modx->makeUrl(313, 'web', [], 'full')}";
            break;
            case "coursesCourseFormAdd":
                window.location.href = "{$_modx->makeUrl(314, 'web', [], 'full')}";
            break;
            case "coursesCourseFormDelete":
                window.location = "{$_modx->makeUrl(314, 'web', [], 'full')}";
            break;
            case "coursesGroupFormAdd":
                window.location.href = "{$_modx->makeUrl(313, 'web', [], 'full')}";
            break;
            case "coursesGroupFormDelete":
                window.location.href = "{$_modx->makeUrl(313, 'web', [], 'full')}";
            break;
            case "budgetOperationForm":
                window.location.href = "{$_modx->makeUrl(161, 'web', [], 'full')}";
            break;
            case "budgetBuyForm":
                window.location.href = "{$_modx->makeUrl(146, 'web', [], 'full')}";
            break;    
            case "invoiceExposeForm":
                window.location.href = "{$_modx->makeUrl(38, 'web', [], 'full')}";
            break;
            case "addressFormAdd":
                window.location = "{$_modx->makeUrl(306, 'web', [], 'full')}";
            break;
            case "addressFormDelete":
                window.location.href = "{$_modx->makeUrl(306, 'web', [], 'full')}";
            break;
            case "addressFormDelete":
                window.location.href = "{$_modx->makeUrl(306, 'web', [], 'full')}";
            break;
            case "schoolAddressFormAdd":
                window.location.href = "{$_modx->makeUrl(317, 'web', [], 'full')}";
            break;
            case "schoolAddressFormDelete":
                window.location.href = "{$_modx->makeUrl(317, 'web', [], 'full')}";
            break;
            case "schoolRoomsFormAdd":
                window.location.href = "{$_modx->makeUrl(318, 'web', [], 'full')}";
            break;
            case "schoolRoomsFormDelete":
                window.location.href = "{$_modx->makeUrl(318, 'web', [], 'full')}";
            break;                    
            case "requestKpFormAdd":
                window.location = "{$_modx->makeUrl(803, 'web', [], 'full')}";
            break;
            case "requestKpFormDelete":
                window.location = "{$_modx->makeUrl(803, 'web', [], 'full')}";
            break;
            case "schoolTeachersFormAdd":
                window.location.href = "{$_modx->makeUrl(316, 'web', [], 'full')}";
            break;
            case "schoolTeachersFormDelete":
                window.location.href = "{$_modx->makeUrl(316, 'web', [], 'full')}";
            break;
            case "userFormDelete":
                window.location.href = "{$_modx->makeUrl(841, 'web', [], 'full')}";
            break;                                   
            case "profileCompany":
                window.location.href = "{$_modx->makeUrl(24, 'web', [], 'full')}";
            break;                
            case "call_to_school_reg":
                closeModal();
            break; 
            
            case "partnershipOfferFormDelete":
                window.location.href = "{$_modx->makeUrl(1181, 'web', [], 'full')}";
            break;   
            
            case "partnershipOfferFormAdd":
                window.location.href = "{$_modx->makeUrl(1127, 'web', [], 'full')}";
            break;
            
            case "profileCompany":
                window.location.href = "{$_modx->makeUrl(24, 'web', [], 'full')}";
            break;
            
            case "profileUserCompany":
                window.location.href = "{$_modx->makeUrl(1135, 'web', [], 'full')}";
            break;
            
            case "lkEmployeesForm":
                window.location.href = "{$_modx->makeUrl(1185, 'web', [], 'full')}";
            break;
            
            case "lksEmployeesForm":
                window.location.href = "{$_modx->makeUrl(1186, 'web', [], 'full')}";
            break;
            
                        
            default:
                console.log("Форма не найдена");
        }
    } else {
        AjaxForm.Message.error('Ошибочка вышла!', 1);
    } 
});
</script>
