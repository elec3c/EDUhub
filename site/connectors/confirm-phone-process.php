<?php
define("MODX_API_MODE",true);
include dirname(dirname(dirname(__FILE__))).'/index.php';
if ($_SERVER["REQUEST_METHOD"] != "POST") {
    return;
}
include $_SERVER['DOCUMENT_ROOT'].'/index.php';
include $_SERVER['DOCUMENT_ROOT'].'/sms_assistent/lib/sms_assistent.conf.php';
include $_SERVER['DOCUMENT_ROOT'].'/sms_assistent/lib/sms_assistent.lib.php';
$sms_assistent = new sms_assistent(API_USERNAME, API_PASSWORD);
$profile = $modx->user->getOne('Profile');



function getErrorMsg($code){
    
    switch(abs($code)){
        
        case 19:
            $msg = "<br>При подтверждении номера телефона SMS-кодом <br> не передано значение хэш для проверки";
            break;
        case 20:
            $msg = "<br>При подтверждение номера телефона SMS-кодом не передано значение кода для проверки";
            break;
        case 21:
            $msg = "<br>Превышено разрешенное количество проверок по одному номеру телефона. <br>Повторите действие через 60 минут.";
            break;
        case 22:
            $msg = "<br>При подтверждение номера телефона SMS-кодом<br> текст SMS не укладывается в длину 1 SMS";
        case 23:
            $msg = "<br>Введённый код неверен. <br>Введите правильный код или отправьте еще<br> одно SMS и повторите ввод кода";
            break;
        default: 
            $msg = "<br>При подтверждении номера телефона <br>произошла ошибка.";
            break;
            
    }
    
    return $msg;
}


if(isset($_POST['action'])) {
    switch($_POST['action']) {
        case 'checkPhone': {
            $phone = $_POST['phone'] ? $_POST['phone'] : $profile->get('mobilephone');    
            if (!$phone) return;
            $result = $sms_assistent->checkTelehpone(API_SENDER, preg_replace("/[^\+0-9]/", '', $phone), SMS_TEXT);
            //foreach ($result as $i => $t)
           //     $modx->log(1, "$i => $t");
            
            if ($result['error'] != 0 || !$profile) return;
            else {
                $responce['answer'] = 1;
                 $profile->set('fax', $result['result']);
                 $profile->save();
            }
        } break;
        case 'checkCode': {
            $hash = $profile->get('fax');
            if (!$hash || !$_POST['code']) return;
            $code = preg_replace('/[^0-9]/', '', $_POST['code']);
            $result = $sms_assistent->checkCode($hash, $code);
            $modx->log(1, json_encode($result));
            if ($result['error'] != 0 || !$profile) {
                $responce['msg'] = getErrorMsg($result['result']);
                $responce['error'] = $result['result'];
                
            } else {
                $responce['answer'] = 1;
                $profile->set('phone', $result['result']);
                $profile->save();
            }
        } break;
        case 'nuberConfirmCheck': {
            $phone = isset($_POST['phone']) ? $_POST['phone'] : $profile->get('mobilephone') ;
            if ($phone == $profile->get('phone'))
                $responce['answer'] = 1;
            else
                $responce['answer'] = 2;
        } break;
    }
}
echo json_encode($responce, JSON_UNESCAPED_UNICODE);