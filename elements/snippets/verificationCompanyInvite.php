<?php
define('MODX_API_MODE', true);

$modx->log(1, 'старт скрипта ***Invite***');
$page_id = $_GET['page_id']?:24;
//$company_id = $_GET['user_id'];
$user_id =  $modx->user->id;
$modx->log(1, 'invite['.$user_id.']');
	
if($_GET['invite']/*&& $company_id*/) {
    
	while ($modx->user->hasSessionContext('web')){
        $modx->log(1, 'Найдена сессия, рубим');
        $modx->user->removeSessionContext('web');
        $url = ((!empty($_SERVER['HTTPS'])) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
        //$modx->sendRedirect($url);
    }
        
	$code = $_GET['invite'];
	//$user_id = $_GET['user_id'];
	
	$modx->log(1, 'Invite[code] = '.$code);
	$modx->log(1, 'Invite[page_id] = '.$page_id);


    $query = $modx->newQuery('modUserProfile', array('employee_code' => $_GET['invite']));
    $query->select('internalKey');
    $UID = $modx->getValue($query->prepare());
    if(!$UID){
        $modx->log(1, 'Invite[redirect]');
        $modx->sendRedirect($url);
    }

    $company = $modx->getObject('modUser', $UID);
    
    if(!is_object($company)) {  
        $modx->log(1, 'Invite[redirect]');
        $modx->sendRedirect($url);
    }
    
    $profile_company = $company->getOne('Profile');
    
    if(!is_object($profile_company)) {
        $modx->log(1, 'Invite[redirect]');
        $modx->sendRedirect($url);
    }
    
    if($profile_company->get('urlico2') != 1){
        $modx->log(1, 'Invite[redirect]');
        $modx->sendRedirect($url);
    }
    
	$company_id = $profile_company->get('internalKey');
	$modx->log(1, 'Invite[company_id] = '.$company_id);
	$employee_code = $profile_company->get('employee_code');
	$modx->log(1, 'Invite[employee_code] = '.$employee_code);

	if ($employee_code == $code) {
	    
	    if(!$profile_company->get('active')){
	        $profile_company->set('active', 1);
	        $profile_company->save();
	    }
	    
	    $modx->log(1, 'Код [employee_code] совпал для ['.$user_id.']');
	    
	    
        $user = $modx->getObject('modUser', $user_id);
        
        if(!is_object($user)) { 
            $modx->log(1, 'Invite[redirect]');
            $modx->sendRedirect($url);
        }
        
        $profile_user = $user->getOne('Profile');
        
        if(!is_object($profile_user)) {
            $modx->log(1, 'Invite[redirect]');
            $modx->sendRedirect($url);
        }
        
        if($profile_user->get('fizlico') != 1) {
            $modx->log(1, 'Invite[redirect]');
            $modx->sendRedirect($url);	    
        }
    
	    
	    $email = $profile_user->get('email');
	    $modx->log(1, 'Invite[email] = '.$email);
	    $profile_user->set('my_company_id', $company_id);
	    $modx->log(1, 'Invite[my_company_id] = '.$company_id);
	    $profile_user->save();
	    
	    if($profile = $modx->getObject("modUserProfile", array("email" => $email))) {
	        
	        $user_id = $profile->get('internalKey');
	        $modx->user = $modx->getObject('modUser', $user_id);
	        $modx->log(1, 'Пользователь найден '.$user_id);
	        
	        $modx->user->addSessionContext('web');
            if($modx->user->hasSessionContext('web')){
                
                $modx->log(1, 'Пользователь'.$user_id.' авторизован из Invite');
                
            } else {
                
                $modx->log(1, 'Пользователь '.$user_id.' не авторизован из Invite');
            
            }

	    } else {
	        
	        return;
	        
	    }
	}
	
	if($page_id)
	{
	    $modx->reloadContext('web');
		$redirect = $modx->makeUrl($page_id, 'web', '', 'full');
		$modx->log(1, 'Invite[Ссылка для перехода] = '.$redirect);
		$modx->sendRedirect($redirect);
		
	}
}