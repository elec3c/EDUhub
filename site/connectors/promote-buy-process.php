<?php

define("MODX_API_MODE",true);
include dirname(dirname(dirname(__FILE__))).'/index.php';

if ($_SERVER["REQUEST_METHOD"] != "POST") {
    
    return;
    
}


$user_id    = intval($_POST['user_id'])?:0;
$group_id   = trim($_POST['group_id'])?:0;
$lead       = trim($_POST['lead']);
$commission  = trim($_POST['commission'])?:0;
$num_people_in_group  = trim($_POST['num_people_in_group'])?:0;



if(isset($user_id) && ($user_id > 0)) {
    
    $user_id = intval($_POST['user_id']);
    
    
    $user = $modx->getObject('modUser',array('active' => true, 'id' => $user_id));
    
    if($user == null) {
        
        $errorMSG = "Пользователь не найден!";
        
    } else {
        
        if(!$user->isMember('Organization')) {
            
            $errorMSG = "Продвижение доступно только для школ!";
            
        } else {
            
            $r = 1;
            
            $Budget = $modx->getObject('Budget',['userId'=>$user_id]);
            
            if(!$Budget)  {
    
                $r = 2;
    
            } else {
                                    
                $price = intval($commission);
    
            }
            
            if(($Budget) && ($Budget->get('sum') < $price)) {
    
               $r = 3;
    
            }
            
            if($num_people_in_group < $lead) {
                
                $r = 4;
                
            }
                    
            if($r == 1) {
            
            
                $cnt = $modx->runSnippet('promoteCheckUID', array('user_id'=>$user_id, 'group_id'=>$group_id));

                if($cnt == 0) {
                        
                    $Promote  = $modx->newObject('EduPromote');
                        
                    $Promote->set('userId',    $user_id);
                    $Promote->set('groupId',   $group_id);
                    $Promote->set('lead',      $lead);
                    $Promote->set('commission', $commission);
                    $r  = $Promote->save();
                        
                } else {
                        
                    $Promote = $modx->getObject('EduPromote', ['userId' => $user_id, 'groupId' => $group_id]);    
                    $Promote->set('lead',      $lead);
                    $Promote->set('commission', $commission);
                    $r = $Promote->save();
                        
                }
                    
                $modx->runSnippet('sortWeight', ['group_id'=>$group_id]);
                $success = true;
                
                
            } else {
            
                $success = false;            
                
                switch($r){
                            
                    case 2:
                        $errorMSG = "Необходимо пополнить Ваш баланс!";
                    break;
                    case 3:
                        $errorMSG = "Недостаточно средств на балансе!";
                    break;
                    case 4:
                        $errorMSG = "Количество мест в группе недостаточно, для данного количества лидов!";
                    break;
                    default:
                        $errorMSG = "Ошибочка вышла!";
                    break;
            }
                        
        }
                
    }
}
        
    
} else {
    
    $errorMSG = "Для сохранения, необходимо авторизироваться на сайте";
    
}


if ($success && $errorMSG == ""){
    
   $response['success'] = 1;
   $response['msg'] = "Продвижение успешно запущено!";
   
}else{
    
    $response['success'] = 0;     
    
    if($errorMSG == ""){
   
        $response['msg'] = "Что-то пошло не так :(";     
        
    } else {
        
        $response['msg'] = $errorMSG;
        
    }
}

echo json_encode($response, JSON_UNESCAPED_UNICODE);