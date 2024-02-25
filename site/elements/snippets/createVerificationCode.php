<?php

if (!$pdoTools = $modx->getService('pdoTools')) return;

$user = $user_id ? $modx->getObject('modUser', $user_id) : $modx->getObject('modUser');
$profile = $user->getOne('Profile');

if(!$profile->get('verification_code')){
    
    
    while(1) {
    
        $verificationCode = $pdoTools->runSnippet('@FILE snippets/generateRandomString.php', []);  
        $isUniqueValue = $modx->runSnippet('checkUserUniqueField', ['field'=>'verification_code','value'=>$verificationCode]);
        
        if($isUniqueValue) {
            break;
        }
        
    }
    
    $profile->set('verification_code', $verificationCode);
    $profile->save();
    
} else {
    
    $verificationCode = $profile->get('verification_code');
    
}

return $verificationCode;