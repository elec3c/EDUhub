<?php
$err = 0;

$user_id    = $modx->getOption('user_id', $scriptProperties, 0);
$service_id = $modx->getOption('service_id', $scriptProperties, 0);
$course_id = $modx->getOption('course_id', $scriptProperties, 0);
$period_id = $modx->getOption('period_id', $scriptProperties, 0);
$auto       = $modx->getOption('auto', $scriptProperties, 0);
$expire     = $modx->getOption('expire', $scriptProperties, 0);

  
  
if(($user_id != $modx->user->get('id')) || ($service_id <= 0) || ($period_id < 0)) {
    
    return false;
    
}

$r = $modx->runSnippet('subscribeCheckUID', array('user_id'=>$user_id, 'service_id'=>$service_id, 'course_id'=>$course_id));


if($r == true) {

    $Subscribe  = $modx->newObject('EduSubscribe');

    $Subscribe->set('userid',    $user_id);
    $Subscribe->set('serviceid', $service_id);
    $Subscribe->set('courseid',  $course_id);
    $Subscribe->set('periodid',  $period_id);
    $Subscribe->set('expire',    $expire);
    $Subscribe->set('auto',      $auto);
    $Subscribe->save();
    
        
} else {
    
    $Subscribe = $modx->getObject('EduSubscribe', ['userid' => $user_id, 'serviceid' => $service_id, 'courseid' => $course_id]);    
    
    if($expire > 0) {
        $Subscribe->set('expire',    $expire);
    }
    $Subscribe->set('courseid',  $course_id);    
    $Subscribe->set('periodid',  $period_id);    
    $Subscribe->set('auto',      $auto);
    $Subscribe->save();
        
}

$r = 1;
    
return $r;