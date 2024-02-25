<?php

define("MODX_API_MODE",true);
include dirname(dirname(dirname(__FILE__))).'/index.php';

if ($_SERVER["REQUEST_METHOD"] != "POST") {
    
    return;
    
}


//if(isset($_POST['user_id']) && ($_POST['user_id'] > 0)) {
    
//    $user_id = intval($_POST['user_id']);
    
    
//    $user = $modx->getObject('modUser',array('active' => true, 'id' => $user_id));
//}else {
//    $user_id = 0;
//}
if ($modx->user->isAuthenticated($modx->context->get('key'))) {
    // Получаем и возвращаем ID текущего пользователя
    $user_id = $modx->user->get('id');
} else {
    // Если пользователь не авторизован, возвращаем 0 или другое указанное значение
    $user_id = 0;
}

            if($_POST['form_data']=="Y291cnNlX2NhdGVnb3J5PSZmb3JfYWdlcz0mZm9ybV9vZl9zdHVkeT0mZm9ybWF0X29mX3N0dWR5PSZzY2hlZHVsZT0mdGltZT0mY291cnNlX2NpdHk9JmRhdGFfZnJvbT0="){
                
                $errorMSG = "Не выбраны поля формы для сохранения";
            
            } else {
                
                $form_data = trim($_POST['form_data']); //base64_decode($content);
                
                if($form_data) {
                    
                    
                    $arr = $modx->runSnippet('Unserialize', array('str'=>base64_decode($form_data),'exclude'=>['camp_format','camp_city','camp_region','camp_metro','camp_transfer_region','camp_transfer_city','gender','email']));
                    
                    $new_form_data = base64_encode(http_build_query($arr));
                    

                    if(!empty($_POST['camp_transfer_region'])){
                        
                        $aDetail['transfer_region']=$_POST['camp_transfer_region'];    
                    }
                    
                    if(!empty($_POST['camp_transfer_city'])){
                        
                        $aDetail['transfer_city']=$_POST['camp_transfer_city'];    
                    }
                    
                    
                    if(is_array($aDetail) && (count($aDetail) > 0)) {
                        
                        $detail = base64_encode(json_encode($aDetail));
                        
                    } else {
                        
                        $detail = '';
                        
                    }
                    
                    $r = 0;
                        
                    $r = $modx->runSnippet('queueCampSaveForm', array('user_id'=>$user_id, 
                                                                      'data'=>$new_form_data, 
                                                                      'camp_format'=>$_POST['camp_format'], 
                                                                      'camp_city'=>$_POST['camp_city'], 
                                                                      'camp_ages'=>$_POST['camp_ages'], 
                                                                      'email'=>$_POST['email'], 
                                                                      'detail'=>$detail, 
                                                                      'camp_transfer_region'=>$_POST['camp_transfer_region'], 
                                                                      'camp_transfer_city'=>$_POST['camp_transfer_city'])
                    );
                    
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
                                $errorMSG = "Не заполнены обязательные поля в форме";
                            break;                            
                            
                            case 5:
                                $errorMSG = "Поле Ваш возраст обязательно для заполнения";
                            break;
                            
                            default:
                                $errorMSG = $r." Ошибочка вышла!";
                            break;
                        }
                        
                    }
                
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