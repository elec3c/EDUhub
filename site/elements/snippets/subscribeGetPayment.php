<?php
$service_id = $modx->getOption('service_id', $scriptProperties, 0);

$res = array();

if($service_id <= 0) {
    
    return $res;
    
}

$c = $modx->newQuery('EduSubscribeServices');
$c->select('EduSubscribeServices.params as params');

$c->where(array('id' => $service_id));
$c->prepare();
$c->limit(1);
$c->stmt->execute();

if($rows = $c->stmt->fetchAll(PDO::FETCH_ASSOC)){

    foreach($rows as $v) {
    
        $params = json_decode($v['params']);
    }
    
    foreach($params as $k=>$v) {
        
        $res[$v->days]=$v->price;
    
    }
}

return $res;