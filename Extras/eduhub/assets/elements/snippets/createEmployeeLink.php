<?php
if (!$pdoTools = $modx->getService('pdoTools')) return;

$user_id    = $modx->getOption('user_id', $scriptProperties, 0);

if(!$user_id) return;

$params = array();
$user = $modx->getObject('modUser', $user_id);
$profile = $user->getOne('Profile');

if($profile->get('employee_code') == '') {
    
    $params['invite'] = $pdoTools->runSnippet('@FILE snippets/createEmployeeCode.php', array('user_id' => $user_id)); 
    
} else {
    
    $params['invite'] = $profile->get('employee_code');
    
}

//$params['user_id'] = $user_id;

if (isset($page_id)) {
    $params['page_id'] = $page_id;
}

return $url = $modx->makeUrl(40, 'web', $params, 'full');