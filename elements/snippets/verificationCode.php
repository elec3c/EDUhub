<?php
$modx->log(1, 'старт скрипта ***VerificationCode***');
$page_id = 24;

if($_GET['code']) {
    
    if(!$modx->user->hasSessionContext('web')) {
	        
        $page_id = 1;
	        
    }
    
	$url = $modx->makeUrl($page_id, 'web', '', 'full');
	
	$code = $_GET['code'];
	$modx->log(1, 'Verification[code] = '.$code);
	
    $query = $modx->newQuery('modUserProfile', array('verification_code' => $_GET['code']));
    $query->select('internalKey');
    $UID = $modx->getValue($query->prepare());
    
    if(!$UID){
        
        $param['errorVerification'] = 4;
        $url = $modx->makeUrl($page_id, 'web', $param, 'full');
        $modx->log(1, 'Verification1[Ссылка для перехода] = '.$url);
        $modx->sendRedirect($url);
        
    }

    $user = $modx->getObject('modUser', $UID);
    
    if(!is_object($user)) { 
        $modx->log(1, 'Verification2[Ссылка для перехода] = '.$url);
        $modx->sendRedirect($url);
    }
    
    $profile_company = $user->getOne('Profile');
    
    if(!is_object($profile_company)) {
        $modx->log(1, 'Verification3[Ссылка для перехода] = '.$url);
        $modx->sendRedirect($url);
    }
    
    if($profile_company->get('urlico2') != 1) {
        $modx->log(1, 'Verification4[Ссылка для перехода] = '.$url);
        $modx->sendRedirect($url);
    }
    
    if($profile_company->get('verified') == 1) {
        
        $param['successVerification']=1;
        $param['verified']=1;
        $url = $modx->makeUrl($page_id, 'web', $param, 'full');
        $modx->log(1, 'Verification5[Ссылка для перехода] = '.$url);
        $profile_company->set('verification_code','');
        $profile_company->save();
        $modx->sendRedirect($url);
    }

	$email = $profile_company->get('email');
	$verification_code = $profile_company->get('verification_code');
	$modx->log(1, 'Verification[email] = '.$email);
	$modx->log(1, 'Verification[verification_code] = '.$verification_code);

	if ((!empty($verification_code)) && ($verification_code == $code)) {
	    
	    $param['successVerification'] = 1;
	    $profile_company->set('verification_code','');
	    $profile_company->set('verified', 1);
	    $profile_company->save();
	    
	    
	    if($profile = $modx->getObject("modUserProfile", array("email" => $email))) {
	        
	        $user_id = $profile->get('internalKey');
	        $modx->user = $modx->getObject('modUser', $user_id);
	        
	        
	        while($modx->user->hasSessionContext('web')){
                $modx->log(1, 'Найдена сессия, рубим');
                $modx->user->removeSessionContext('web');
            }	        
	        $modx->user->addSessionContext('web');
	        
            if(!$modx->user->hasSessionContext('web')){
                
                $param['errorVerification'] = 1;
                
            } else {
                
                $page_id = 24;
                
            }

	    } else {
	        
	        $param['errorVerification'] = 2;
	        
	    }
	    
	} else {
	    
	    $param['errorVerification'] = 3;
	    
	    if(!$modx->user->hasSessionContext('web')) {
	        
	        $page_id = 1;
	        
	    }
	    
	}
	
	if($page_id)
	{
	    $modx->reloadContext('web');
		$url = $modx->makeUrl($page_id, 'web', $param, 'full');
		$modx->log(1, 'Verification7[Ссылка для перехода] = '.$url);
		$modx->sendRedirect($url);
	}
}