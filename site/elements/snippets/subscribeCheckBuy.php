<?php

$user_id    = $modx->getOption('user_id', $scriptProperties, 0);
$service_id  = $modx->getOption('service_id', $scriptProperties, 0);
$course_id  = $modx->getOption('course_id', $scriptProperties, 0);

$output = '';

$r = array();

$r['expire'] = 0;      
$r['auto'] = 0;
        
if(($user_id > 0) && ($service_id > 0)) {
    
    $c = $modx->newQuery('EduSubscribe');
    
    $c->select('expire, auto, periodid, serviceid');
    $c->where(['userid' => $user_id, 'serviceid' => $service_id, 'courseid' => $course_id]);
    $c->limit(1);
    $c->prepare();
    $c->stmt->execute();
    $rows = $c->stmt->fetchAll(PDO::FETCH_ASSOC);
    
    if(empty($rows)){
            
        $r['expire'] = 0;      
        $r['auto'] = 0;
        $r['periodid'] = 0;
        $r['courseid'] = 0;
        $r['serviceid'] = 0;
            
    } else {
        
      $r['expire'] = $rows[0]['expire'];      
      $r['auto'] = $rows[0]['auto'];
      $r['periodid'] = $rows[0]['periodid'];
      $r['courseid'] = $rows[0]['courseid'];
      $r['serviceid'] = $rows[0]['serviceid'];;
      
    } 
}

return $r;