<?php
$modx->log(1, 'старт скрипта ***Verification***');
$page_id = 24;//$_GET['page_id'];
	
if($_GET['code']/* && $_GET['user_id']*/) {
    
	$modx->log(1, 'Параметры есть');
	while($modx->user->hasSessionContext('web')){
        $modx->log(1, 'Найдена сессия, рубим');
        $modx->user->removeSessionContext('web');
        $url = ((!empty($_SERVER['HTTPS'])) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
        //$modx->sendRedirect($url);
    }
        
	$code = $_GET['code'];
	//$user_id = $_GET['user_id'];
	$modx->log(1, 'Verification[code] = '.$code);
	//$modx->log(1, 'Verification[user_id] = '.$user_id);
	$modx->log(1, 'Verification[page_id] = '.$page_id);



    $query = $modx->newQuery('modUserProfile', array('verification_code' => $_GET['code']));
    $query->select('internalKey');
    $UID = $modx->getValue($query->prepare());
    if(!$UID){
        $modx->log(1, 'Verification[redirect]');
        $modx->sendRedirect($url);
    }


    $user = $modx->getObject('modUser', $UID);
    
    if(!is_object($user)) { 
        $modx->log(1, 'Verification[redirect]');
        $modx->sendRedirect($url);
    }
    
    $profile_company = $user->getOne('Profile');
    
    if(!is_object($profile_company)) {
        $modx->log(1, 'Verification[redirect]');
        $modx->sendRedirect($url);
    }
    
    if($profile_company->get('urlico2') != 1) {
        $modx->log(1, 'Verification[redirect]');
        $modx->sendRedirect($url);
    }

	
	$email = $profile_company->get('email');
	$verification_code = $profile_company->get('verification_code');
	$modx->log(1, 'Verification[email] = '.$email);
	$modx->log(1, 'Verification[verification_code] = '.$verification_code);


	if ($verification_code == $code) {
	    $modx->log(1, 'Код [verification_code] совпал для ['.$user_id.']');
	    $profile_company->set('verification_code','');
	    $modx->log(1, 'Verification[verified] = 1');
	    $profile_company->set('verified', 1);
	    $profile_company->save();
	    
	    
	    if($profile = $modx->getObject("modUserProfile", array("email" => $email))) {
	        
	        $user_id = $profile->get('internalKey');
	        $modx->user = $modx->getObject('modUser', $user_id);
	        $modx->user->addSessionContext('web');
	        $modx->log(1, 'Пользователь найден '.$user_id);
	        
            if($modx->user->hasSessionContext('web')){
                
                $modx->log(1, 'Пользователь'.$user_id.' авторизован из Verification');
                
            } else {
                
                $modx->log(1, 'Пользователь '.$user_id.' не авторизован из Verification');
            
            }

	    } else {
	        
	        return;
	        
	    }
	}
	
	if($page_id)
	{
	    $modx->reloadContext('web');
		$redirect = $modx->makeUrl($page_id, 'web', '', 'full');
		$modx->log(1, 'Verification[Ссылка для перехода] = '.$redirect);
		$modx->sendRedirect($redirect);
		
	}
}