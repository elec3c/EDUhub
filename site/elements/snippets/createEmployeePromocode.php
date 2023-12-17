<?php
if (!$pdoTools = $modx->getService('pdoTools')) return;

$user_id    = $modx->getOption('user_id', $scriptProperties, 0);

if(!$user_id) return;

$params = array();
$user = $user_id ? $modx->getObject('modUser', $user_id) : $modx->getObject('modUser');
$profile = $user->getOne('Profile');

if(!$profile->get('employee_promocode')){
    
    while(1) {
    
        $employeePromocode = $pdoTools->runSnippet('@FILE snippets/generateRandomString.php', []);
        $isUniqueValue = $modx->runSnippet('checkUserUniqueField', ['field'=>'employee_promocode','value'=>$employeePromocode]);
        
        if($isUniqueValue) {
            break;
        }
        
    }    

    $profile->set('employee_promocode', $employeePromocode);
    $profile->save();
    
} else {
    
    $employeePromocode = $profile->get('employee_promocode');
    
}

return $employeePromocode;