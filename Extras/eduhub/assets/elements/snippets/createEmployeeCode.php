<?php

if (!$pdoTools = $modx->getService('pdoTools')) return;

$user = $user_id ? $modx->getObject('modUser', $user_id) : $modx->getObject('modUser');
$profile = $user->getOne('Profile');

if(!$profile->get('employee_code')){
    
    while(1) {
    
        $employeeCode = $pdoTools->runSnippet('@FILE snippets/generateRandomString.php', []);
        $isUniqueValue = $modx->runSnippet('checkUserUniqueField', ['field'=>'employee_code','value'=>$employeeCode]);
        
        if($isUniqueValue) {
            break;
        }
        
    }    

    $profile->set('employee_code', $employeeCode);
    $profile->save();
    
} else {
    
    $employeeCode = $profile->get('employee_code');
    
}

return $employeeCode;