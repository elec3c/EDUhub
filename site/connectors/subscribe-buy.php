<?php

define("MODX_API_MODE",true);
include dirname(dirname(dirname(__FILE__))).'/index.php';

if (!$pdoTools = $modx->getService('pdoTools')) return;

if ($_SERVER["REQUEST_METHOD"] != "POST") {
    
    return;
}

if (!$EmailQueue = $modx->getService('emailqueue', 'EmailQueue', $modx->getOption('emailqueue_core_path', null,

	$modx->getOption('core_path') . 'components/emailqueue/') . 'model/emailqueue/', array())) {
	    
	return;
}


if(($_POST['user_id'] > 0) && ($_POST['service_id'] > 0) && ($_POST['payment'] >= 0)) {
    
    $action = $_POST['action']?:'add';
    $user_id = intval($_POST['user_id']);
    $service_id = intval($_POST['service_id']);
    $period_id = intval($_POST['period_id'])?:0;
    $course_id = intval($_POST['course_id'])?:0;
    $auto = $_POST['auto']?:0;
    $payment = intval($_POST['payment'])?:0;
    $state = $_POST['auto']?'включено':'отключено';
    
    
    
    
    $user = $modx->getObject('modUser',array('active' => true, 'id' => $user_id));
    
    if($user == null) {
        
        $errorMSG = "Пользователь не найден!";
        
    } else {
        
        if(!$user->isMember('Organization')) {
            
            $errorMSG = "Сохранение доступно только для школ!";
            
        } else {


                    $balance = $pdoTools->runSnippet('@FILE snippets/budgetSum.php', ['user_id'=>$user_id]);
                    
                    
                    if(($action != "update") && ( (($balance == 0) && ($payment!=0))  || ($balance < $payment)) ){
                        
                        $r = 2; 
                        
                    } else {
                        
                        if($action=="update") {
                            
                            $expire = 0;
                            
                        } else {
                            
                            switch($period_id) {
                                
                                case 30:
                                    $expire = strtotime(time())  + strtotime('+30 days');    
                                break;
                                    
                                case 180:
                                    $expire = strtotime(time())  + strtotime('+180 days');    
                                break;
                                
                                case 360:
                                    $expire = strtotime(time())  + strtotime('+360 days');    
                                break;
                                
                                default:
                                    $expire = strtotime("2024-01-01");    
                                    
                            }
                            
                        }
                        
                        $services = $pdoTools->runSnippet('@FILE snippets/subscribeGetServices.php', ['service_id'=>$service_id]);   
                        $r = $pdoTools->runSnippet('@FILE snippets/subscribeBuy.php', ['user_id'=>$user_id, 'service_id'=>$service_id, 'course_id'=>$course_id, 'period_id'=>$period_id, 'expire'=>$expire, 'auto'=>$auto]);
                        
                        if($r == 1)
                        {
                            
                            if(in_array($action, array('add', 'extend','repeat'))) {
                            
                                $Budget = $modx->getObject('Budget', ['userId' => $user_id]);    
                                
                                if($Budget) {
                                    
                                    if($service_id == 2) {
        
                                        $old_payment = $payment;
                                        $payment = 0;
                                    }
                                    
                                    if($payment > 0) {
                                        $Budget->set('sum', $Budget->get('sum') - $payment);
                                        if($Budget->save()) {
                                            $budgetOperationSave = $modx->runSnippet('budgetOperationSave', ['user_id'=>$user_id, 'sum'=>-$payment, 'manager_id' => 0]);
                                            
                                            $userInfo = $modx->runSnippet('getUserInfo', ['user_id'=>$user_id, 'fields'=>'unp']);
                                            
                                            if($userInfo['unp']){
                                                
                                                $modx->runSnippet('budgetBonusTransactions', ['unp'=>$userInfo['unp'], 'sum'=>$payment, 'type'=>2]);
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                }
                                
                            }
                        }
                        
                        if($service_id == 2) {
        
                            $payment = $old_payment;
                            
                        }                     
                                    
                        if($course_id > 0){
                            
                            $title = 'раздела ['.$modx->runSnippet('pdoField', array('id'=>$course_id, 'field'=>'pagetitle')).']';
                            
                        } else {
                            
                            $title = '';
                        }
                        
                        switch($action){
                            case 'add':{
                                $content = "Подписка на сервис [".$services['name']."] ".$title." рублей активирована.";                                
                            }break;
                            case 'repeat':{
                                $content = "Подписка на сервис [".$services['name']."] ".$title." рублей активирована.";                                
                            }break;                            
                            case 'extend':{
                                $content = "Подписка на сервис [".$services['name']."] ".$title." рублей продлена.";
                            }break;                            
                            case 'update':{
                                $content = "Автопродление на сервис [".$services['name']."] ".$title." ".$state;
                            }break;                            
                            default:
                                $content = "";
                        }

                        
                        if($r == 1) {
                            
                            $user    = $modx->getObject('modUser', $user_id);
                            $profile = $user->getOne('Profile');
                            
                            $receiver = $user->get('fullname')?:$user->get('username');
                            $email_to     = $profile->get('email');
                            
                            $queue_email = $modx->newObject('EmailQueueItem');
                            
                            $sanitized_email = filter_var($email_to, FILTER_SANITIZE_EMAIL);
                            
                            
                            if(filter_var($sanitized_email, FILTER_VALIDATE_EMAIL)) {
                            
                                $data = array(
                                	'sender_package'=> $receiver, //дополнение отправитель письма
                                	'to'=> $sanitized_email, //емаил
                                	'subject'=>'Подписка на сервис!', // тема письма
                                	'body'=>$content?:"", 
                                	'date'=>date("Y-m-d H:i:s")
                                );
                            
                                $data['from'] = 'no-reply@eduhub.by';
                                $data['from_name'] = 'EDUHub';
                                
                                $queue_email->reply_to = $email_to;
                                $queue_email->fromArray($data);
                                $queue_email->save();
                            }
                        }
                        
                        
                    }
                
                
                
                if($r == 1) {
            
                    $success = true;
            
                } else {
                    
                    switch($r){
                        
                        case 2:
                            if(in_array($action, array('add', 'extend','repeat'))) {
                                
                                if ($payment > $balance)
                                    $errorMSG = "Недостаточно средств на балансе школы для подписки! Пополните на ".($payment - $balance)." рублей";
                                else 
                                    $errorMSG = "Недостаточно средств на балансе школы для подписки!";
                            }
                        break;
                        case 3:
                            $errorMSG = "Текущий выбор уже ранее был сохранен!";
                        break;
                        default:
                            $errorMSG = "Ошибочка вышла";
                        break;
                    }
                        
                }

                    
        }
    }    
    
} else {
    
    if($_POST['user_id'] <= 0) { 
        
        $errorMSG = "Для сохранения, необходимо авторизироваться на сайте";
        
    } else {
        
        $errorMSG = "Необходимо выбрать вариант подписки";
        
    }
    
}


if ($success && $errorMSG == ""){
    
   echo "success";
   
}else{
    
    if($errorMSG == ""){
        
        echo "Что-то пошло не так :(";
        
    } else {
        
        echo $errorMSG;
        
    }
}