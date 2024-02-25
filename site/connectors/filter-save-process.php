<?php

define("MODX_API_MODE",true);
include dirname(dirname(dirname(__FILE__))).'/index.php';

if ($_SERVER["REQUEST_METHOD"] != "POST") {
    
    return;
    
}


if(isset($_POST['user_id']) && ($_POST['user_id'] > 0)) {
    
    $user_id = intval($_POST['user_id']);
    
    
    $user = $modx->getObject('modUser',array('active' => true, 'id' => $user_id));
    
    if($user == null) {
        
        $errorMSG = "Пользователь не найден!";
        
    } else {
        
        if(!$user->isMember('Users')) {
            
            $errorMSG = "Сохранение доступно только для пользователей!";
            
        } else {
            
            if($_POST['form_data']=="Y291cnNlX2NhdGVnb3J5PSZmb3JfYWdlcz0mZm9ybV9vZl9zdHVkeT0mZm9ybWF0X29mX3N0dWR5PSZzY2hlZHVsZT0mdGltZT0mY291cnNlX2NpdHk9JmRhdGFfZnJvbT0="){
                
                $errorMSG = "Не выбраны поля формы для сохранения";
            
            } else {
                
                $form_data = trim($_POST['form_data']); //base64_decode($content);
                
                if($form_data) {
                    
                    
                    $arr = $modx->runSnippet('Unserialize', array('str'=>base64_decode($form_data),'exclude'=>['email','phone','time_from','time_to','days']));
                    $new_form_data = base64_encode(http_build_query($arr));

                    $detail=["time_from"=>$_POST['time_from'],"time_to"=>$_POST['time_to'],"days"=>$_POST['days']];
                    $detail = base64_encode(json_encode($detail));
                    
                    $r = 0;
                        
                    $r = $modx->runSnippet('queueSaveForm', array('user_id'=>$user_id, 'data'=>$new_form_data, 'course_category'=>$arr['course_category'], 'course_sub_category'=>$arr['course_sub_category'], 'for_ages'=>$arr['for_ages'], 'email'=>$_POST['email'], 'phone'=>$_POST['phone'], 'detail'=>$detail));
                    
                    if($r == 1) {
                
                        $success = true;
                
                    } else {
                        
                        switch($r){
                            
                            case 2:
                                $errorMSG = "Вы оставили уже 12 запросов. Удалите не актуальные в личном кабинете.";
                            break;
                            case 3:
                                $errorMSG = "Текущий выбор уже ранее был сохранен!";
                            break;
                            case 4:
                                $errorMSG = "Поля категория и подкатегория обязательны для заполнения";
                            break;                            
                            
                            case 5:
                                $errorMSG = "Поле Ваш возраст обязательно для заполнения";
                            break;
                            
                            default:
                                $errorMSG = "Ошибочка вышла!";
                            break;
                        }
                        
                    }
                
                }
            }            
            
        }
    }    
    
} else {
    
    $errorMSG = "Для сохранения, необходимо авторизироваться на сайте";
    
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