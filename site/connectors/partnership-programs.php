<?php
define("MODX_API_MODE",true);
include dirname(dirname(dirname(__FILE__))).'/index.php';

if ($_SERVER["REQUEST_METHOD"] != "POST") {
    return;
}

if (!$pdoTools = $modx->getService('pdoTools')) return;

$profile = $modx->user->getOne('Profile');
 

if(isset($_POST['action'])) {
    
    $response['answer'] = 0;
    $response['msg'] = "Ошибочка вышла!";
    
    switch($_POST['action']) {
        


        case 'joinCorporateEmployee': {
            
            
            $promocode_or_link = trim($_POST['promocode_or_link']);
            $action = ($_POST['join'])?'connect':'disconnect';
            
            if (!$profile) { 
                
                $response['answer'] = 0;
                $response['msg'] = "Пользователь не найден.";
                
            } else {

                if($action == 'connect') {                
                    $employeeInvite = $modx->runSnippet('checkEmployeeInvite', ['value'=>$promocode_or_link]);                
                    
                    if(($employeeInvite['success'] == 1) && (intval($employeeInvite['company_id']))){
                        $connectCompany = 1;
                        $profile->set('my_company_id', $employeeInvite['company_id']);
                        $profile->save();
    
                        $join = ($profile->get('partnership_join_offer')?0:1);
                        $profile->set('partnership_join_offer', $join);
                        
                        if(!$join) {
                            
                            $profile->set('my_company_id', '');
                            
                        }
                        
                        if($profile->save()) {
        
                            $response['msg'] = $join ? "Присоединение к компании произошло успешно.":"Отсоединение от компании произошло успешно.";
                            $response['btn'] = $join ? "Присоединиться к другой компании":"Присоединиться к компании";
                                                
                            $response['answer'] = 1;
                            $response['join'] = $join;
                        
                        }                    
                        
                    }
                    
                } else {
                    
                    $join = $profile->get('partnership_join_offer');
                    
                    $profile->set('my_company_id', '');                        
                    $profile->set('partnership_join_offer', 0);                        
                    $profile->save();
                    
                    $response['msg'] = $join ? "Отсоединение от компании произошло успешно.":"Присоединение к компании произошло успешно.";
                    $response['btn'] = $join ? "Присоединиться к компании":"Присоединиться к другой компании";
                                            
                    $response['answer'] = 1;
                    $response['join'] = 0;
                    
                }
                
            }            
        
        } break;
        
        
        
        
        case 'joinPartnership': {
            
            $join_partnership = trim($_POST['partnership_join']);
            
            if (!$profile) { 
                
                $response['answer'] = 0;
                $response['msg'] = "Компания не найдена.";
                
            } else {
                
                if($join_partnership == 'offer') {
                    
                    $response['msg'] = $profile->get('partnership_join_offer') ? "Отсоединение от оферты произошло успешно.":"Присоединение к оферте произошло успешно.";
                    $response['btn'] = $profile->get('partnership_join_offer') ? "Отсоединение от Партнерской программы":"Присоединиться к Партнерской программе";
                    $join = ($profile->get('partnership_join_offer')?0:1);
                    $profile->set('partnership_join_offer', $join);
                    
                } else if($join_partnership == 'paper') {
                    
                    $response['msg'] = $profile->get('partnership_join_paper') ? "Отсоединение от бумажного договора произошло успешно.":"Присоединение к бумажному договору произошло успешно.";
                    $response['btn'] = $profile->get('partnership_join_paper') ? "Отсоединение от Партнерской программы":"Присоединиться к Партнерской программе";
                    
                    $join = ($profile->get('partnership_join_paper')?0:1);
                    $profile->set('partnership_join_paper', $join);
                    
                }
                
                if($profile->save()) {
                    
                    $response['answer'] = 1;
                    $response['join'] = $join;
                    
                    $cid = $modx->runSnippet('getCompanyPageID ', ['company_id'=>$modx->user->get('id')]);
                    if($cid) {
                        $doc = $modx->getObject('modResource',array('id'=>$cid));
                        if (is_object($doc) && ($tv = $modx->getObject('modTemplateVar', array ('name'=>'partnership_join_offer')))) {
                            $tv->setValue($doc->get('id'), $join);
                            $tv->save();
                        }
                         
                        $doc->set('cacheable', 0);
                        $doc->save();
                        
                        $options = array('objects' => null,  'extensions' => [$cid . '.cache.php']);
                        $paths = array('resource/web/resources/');

                        $modx->cacheManager->clearCache($paths, $options);
                        $modx->cacheManager->refresh();
                        
                        
                    }                    
                }
            }            
        
        } break;
        

        case 'confirmCompany': {
            
            
            $user_id = isset($_POST['user_id']) ? $_POST['user_id'] : 0;
            
            if($user_id) {
            
                $user = $modx->getObject('modUser', $user_id);
                $profile = $user->getOne('Profile');
                
                if(!$profile) {
                    
                    $response['answer'] = 0;
                    $response['msg'] = "Компания не найдена.";
                    
                } else {
                    
                    if($profile->get('verified')) {    
                    
                        $response['answer'] = 1;    
                        $response['msg'] = "Компания ".$profile->get('fullname')." подверждена.";
                        
                    } else {
                    
                        $response['answer'] = 1;        
                        $profile->set('verified', 1);
                        $response['msg'] = "Подтверждение компании ".$profile->get('fullname')." выполнено.";
                        $profile->save();    
                        
                    }
                    
                }
                
                
            } else {
                
                $response['answer'] = 0;
                
            }
            
            
        } break;
        
        
        case 'cancelCompany': {
            
            
            $user_id = isset($_POST['user_id']) ? $_POST['user_id'] : 0;
            
            
            if($user_id) {
            
                $user = $modx->getObject('modUser', $user_id);
                $profile = $user->getOne('Profile');
                
                if(!$profile) {
                    
                    $response['answer'] = 0;
                    $response['msg'] = "Компания не найдена.";
                    
                } else {
                    
                    if(!$profile->get('verified')) {    
                    
                        $response['answer'] = 1;    
                        $response['msg'] = "Компания ".$profile->get('fullname')." отменена.";
                        
                    } else {
                        
                        $response['answer'] = 1;        
                        $profile->set('verified', 0);
                        $response['msg'] = "Отмена подтверждения компании ".$profile->get('fullname')."  выполнена.";
                        $profile->save();    
                        
                    }
                    
                }
                
                
            } else {
                
                $response['answer'] = 0;
                
            }
            
            
        } break;
        
        
        
        case 'generateLinkCompany': {
            
            
            $user_id = isset($_POST['user_id']) ? $_POST['user_id'] : 0;
            
            
            if($user_id) {
            
                $user = $modx->getObject('modUser', $user_id);
                $profile = $user->getOne('Profile');
                
                if(!$profile) {
                    
                    $response['answer'] = 0;
                    $response['msg'] = "Компания не найдена.";
                    
                } else {
                    
                    if(!$profile->get('verified')) {    
                    
                        $response['answer'] = 1;
                        $response['link'] = $pdoTools->runSnippet('@FILE snippets/createVerificationLink.php', array('user_id' => $user_id));  
                        $response['code'] = $profile->get('verification_code');
                        $response['msg'] = "Ссылка для компании ".$profile->get('fullname')." сгенерирована успешно.";
                        
                    } else {
                        
                        $response['answer'] = 1;        
                        $response['link'] = $pdoTools->runSnippet('@FILE snippets/createVerificationLink.php', array('user_id' => $user_id));  
                        $response['msg'] = "Компания ".$profile->get('fullname')."  уже верифицирована.";
                        
                        
                    }
                    
                }
                
                
            } else {
                
                $response['answer'] = 0;
                
            }
            
            
        } break; 
        
        
        
        case 'resetLinkCompany': {
            
            
            $user_id = isset($_POST['user_id']) ? $_POST['user_id'] : 0;
            
            
            if($user_id) {
            
                $user = $modx->getObject('modUser', $user_id);
                $profile = $user->getOne('Profile');
                
                if(!$profile) {
                    
                    $response['answer'] = 0;
                    $response['msg'] = "Компания не найдена.";
                    
                } else {
                    
                    if($profile->get('verification_code')) {    
                    
                        $response['answer'] = 1;
                        $profile->set('verification_code','');
                        $profile->save();
                        $response['link'] = $profile->get('verification_code');
                        $response['msg'] = "Ссылка для компании ".$profile->get('fullname')." сброшена успешно.";
                        
                    } else {
                        
                        $response['answer'] = 1;        
                        $response['link'] = $profile->get('verification_code');
                        $response['msg'] = "Ссылка для компании ".$profile->get('fullname')." уже сброшена.";
                        
                        
                    }
                    
                }
                
                
            } else {
                
                $response['answer'] = 0;
                
            }
            
            
        } break; 
        
        
        
        
        case 'generateLinkEmployee': {
            
            
            $user_id = isset($_POST['user_id']) ? $_POST['user_id'] : 0;
            
            
            if($user_id) {
            
                $user = $modx->getObject('modUser', $user_id);
                $profile = $user->getOne('Profile');
                
                if(!$profile) {
                    
                    $response['answer'] = 0;
                    $response['msg'] = "Компания не найдена.";
                    
                } else {
                    
                    $response['answer'] = 1;
                    $response['link'] = $pdoTools->runSnippet('@FILE snippets/createEmployeeLink.php', array('user_id' => $user_id));
                    $response['code'] = $profile->get('employee_code');
                    $response['msg'] = "Ссылка сотрудникам компании ".$profile->get('fullname')." сгенерирована успешно.";
                        
                }
                
                
            } else {
                
                $response['answer'] = 0;
                
            }
            
            
        } break; 
        
        
        
        case 'resetLinkEmployee': {
            
            
            $user_id = isset($_POST['user_id']) ? $_POST['user_id'] : 0;
            
            
            if($user_id) {
            
                $user = $modx->getObject('modUser', $user_id);
                $profile = $user->getOne('Profile');
                
                if(!$profile) {
                    
                    $response['answer'] = 0;
                    $response['msg'] = "Компания не найдена.";
                    
                } else {
                    
                    if($profile->get('employee_code')) {    
                    
                        $response['answer'] = 1;
                        $profile->set('employee_code','');
                        $profile->save();
                        //$response['link'] = 
                        //$pdoTools->runSnippet('@FILE snippets/createEmployeeLink.php', array('user_id' => $user_id));
                        $response['code'] = $profile->get('employee_code');
                        $response['msg'] = "Ссылка сотрудникам компании ".$profile->get('fullname')." сброшена успешно.";
                        
                    } else {
                        
                        $response['answer'] = 1;        
                        $response['code'] = $profile->get('employee_code');
                        $response['msg'] = "Ссылка сотрудникам компании ".$profile->get('fullname')." уже сброшена.";
                        
                        
                    }
                    
                }
                
                
            } else {
                
                $response['answer'] = 0;
                
            }
            
            
        } break; 
        
        
        
        
        case 'generatePromocodeEmployee': {
            
            
            $user_id = isset($_POST['user_id']) ? $_POST['user_id'] : 0;
            
            
            if($user_id) {
            
                $user = $modx->getObject('modUser', $user_id);
                $profile = $user->getOne('Profile');
                
                if(!$profile) {
                    
                    $response['answer'] = 0;
                    $response['msg'] = "Компания не найдена.";
                    
                } else {
                    
                    $response['answer'] = 1;
                    $response['link'] = $pdoTools->runSnippet('@FILE snippets/createEmployeePromocode.php', array('user_id' => $user_id));
                    $response['code'] = $profile->get('employee_promocode');
                    $response['msg'] = "Промокод сотрудникам компании ".$profile->get('fullname')." сгенерирован успешно.";
                        
                }
                
                
            } else {
                
                $response['answer'] = 0;
                
            }
            
            
        } break; 
        
        
        
        case 'resetPromocodeEmployee': {
            
            
            $user_id = isset($_POST['user_id']) ? $_POST['user_id'] : 0;
            
            
            if($user_id) {
            
                $user = $modx->getObject('modUser', $user_id);
                $profile = $user->getOne('Profile');
                
                if(!$profile) {
                    
                    $response['answer'] = 0;
                    $response['msg'] = "Компания не найдена.";
                    
                } else {
                    
                    if($profile->get('employee_promocode')) {    
                    
                        $response['answer'] = 1;
                        $profile->set('employee_promocode','');
                        $profile->save();
                        //$response['link'] = 
                        //$pdoTools->runSnippet('@FILE snippets/createEmployeePromocode.php', array('user_id' => $user_id));
                        $response['code'] = $profile->get('employee_promocode');
                        $response['msg'] = "Промокод сотрудникам компании ".$profile->get('fullname')." сброшен успешно.";
                        
                    } else {
                        
                        $response['answer'] = 1;        
                        //$response['link'] = $profile->get('employee_promocode');
                        $response['code'] = $profile->get('employee_promocode');
                        $response['msg'] = "Промокод сотрудникам компании ".$profile->get('fullname')." уже сброшена.";
                        
                        
                    }
                    
                }
                
                
            } else {
                
                $response['answer'] = 0;
                
            }
            
            
        } break; 
        
        
        
        
        
        
    }
}

echo json_encode($response, JSON_UNESCAPED_UNICODE);