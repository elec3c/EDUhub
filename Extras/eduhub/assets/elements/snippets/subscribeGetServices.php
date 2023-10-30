<?php
$service_id = $modx->getOption('service_id', $scriptProperties, 0);
$r = array();

if($service_id <= 0) {
    
    return $r;
    
}

$c = $modx->newQuery('EduSubscribeServices');
$c->select('EduSubscribeServices.id as id, EduSubscribeServices.name as name, EduSubscribeServices.description as description, EduSubscribeServices.params as params');

$c->where(array('id' => $service_id));
$c->prepare();
$c->stmt->execute();

$rows = $c->stmt->fetchAll(PDO::FETCH_ASSOC);

foreach($rows as $v) {
    
    $r['id']    =       $v['id'];
    $r['name']  =       $v['name'];
    $r['params'] =      json_decode($v['params']);
    $r['description'] = $v['description'];
        
}

return $r;