<?php
define('MODX_API_MODE', true);

$modx->log(1, 'старт скрипта ***verificationCompanyInvite***');
$page_id = 24;

$user_id =  $modx->user->id;
$modx->log(1, 'invite['.$user_id.']');
	
if($_GET['invite'] && !$_GET['auth']) {
    
    if(!$modx->user->hasSessionContext('web')) {
	    $param['auth'] = 1;     
	    $param['invite'] = trim($_GET['invite']);
        $page_id = 1;
        $url = $modx->makeUrl($page_id, 'web', $param, 'full');
        $modx->sendRedirect($url);
	       
    }
    
    $url = $modx->makeUrl($page_id, 'web', '', 'full');
	$code = $_GET['invite'];
	$modx->log(1, 'Verification[code] = '.$code);
	
	$modx->log(1, 'Invite[code] = '.$code);
	$modx->log(1, 'Invite[page_id] = '.$page_id);


    $query = $modx->newQuery('modUserProfile', array('employee_code' => $_GET['invite']));
    $query->select('internalKey');
    $UID = $modx->getValue($query->prepare());
    
    if(!$UID){
        $param['errorVerification'] = 4;
        $url = $modx->makeUrl($page_id, 'web', $param, 'full');
        $modx->log(1, 'Verification1[Ссылка для перехода] = '.$url);
        $modx->sendRedirect($url);
    }

    $company = $modx->getObject('modUser', $UID);
    
    if(!is_object($company)) {  
        $modx->log(1, 'Verification2[Ссылка для перехода] = '.$url);
        $modx->sendRedirect($url);
    }
    
    $profile_company = $company->getOne('Profile');
    
    if(!is_object($profile_company)) {
        $modx->log(1, 'Verification3[Ссылка для перехода] = '.$url);
        $modx->sendRedirect($url);
    }
    
    if($profile_company->get('urlico2') != 1){
        $modx->log(1, 'Verification4[Ссылка для перехода] = '.$url);
        $modx->sendRedirect($url);
    }
    
    
    $company_id = $profile_company->get('internalKey');
    
    if($company_id > 0) {
        $param['successVerificationInvite'] = 1;
	    $modx->log(1, 'Invite[company_id] = '.$company_id);
	    $employee_code = $profile_company->get('employee_code');
	    $modx->log(1, 'Invite[employee_code] = '.$employee_code);
	    
    }     

    if ((!empty($employee_code)) && ($employee_code == $code)) {
	    
	    
	    if(!$profile_company->get('active')){
	        $profile_company->set('active', 1);
	        $profile_company->save();
	    }
	    
	    $modx->log(1, 'Код [employee_code] совпал для ['.$user_id.']');
	    
	    
        $user = $modx->getObject('modUser', $user_id);
        
        if(!is_object($user)) { 
            $modx->log(1, 'Verification5[Ссылка для перехода] = '.$url);
            $modx->sendRedirect($url);
        }
        
        $profile_user = $user->getOne('Profile');
        
        if(!is_object($profile_user)) {
            $modx->log(1, 'Verification6[Ссылка для перехода] = '.$url);
            $modx->sendRedirect($url);
        }
        
        if($profile_user->get('fizlico') != 1) {
            $param['errorVerification'] = 5;
            $url = $modx->makeUrl($page_id, 'web', $param, 'full');
            $modx->log(1, 'Verification7[Ссылка для перехода] = '.$url);
            $modx->sendRedirect($url);
        }
        
	    
	    $email = $profile_user->get('email');
	    $modx->log(1, 'Invite[email] = '.$email);
	    $my_company_id = $profile_user->get('my_company_id');
	    $modx->log(1, 'Invite[my_company_id] = '.$my_company_id);
	    
	    if($my_company_id && intval($my_company_id)) {
	        
	        if($my_company_id != $company_id) {
	            
	            $param['newCompany'] = 1;
	            
	        } else {
	            
	            $param['newCompany'] = 0;
	            
	        }
	        
	    }
	    
	    $modx->log(1, 'Invite[company_id] = '.$company_id);
	    $profile_user->set('my_company_id', $company_id);
	    $profile_user->set('partnership_join_offer', 1);       
	    $profile_user->save();
	    
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
		$modx->log(1, 'Verification8[Ссылка для перехода] = '.$url);
		$modx->sendRedirect($url);
		
	}
}