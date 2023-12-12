<?php
$resourceId = (int) $modx->getOption('id', $scriptProperties, 3);
$constructorId = (int) $modx->getOption('constructorId', $scriptProperties);

$q = $modx->newQuery('pageBlock');
$q->leftJoin('blockConstructor', 'Constructor', 'pageBlock.constructor_id = Constructor.id');
$q->select(array(
    'pageBlock.id',
    'pageBlock.resource_id',
    'pageBlock.constructor_id',
    'pageBlock.values',
    'Constructor.name'
));

$where = array(
    'pageBlock.resource_id' => $resourceId
);

if($constructorId){
    $where['pageBlock.constructor_id'] = $constructorId;
}

$q->where($where);

$modx->log(1, print_r($where,1));

if ($q->prepare() && $q->stmt->execute()) {

    //echo $query->toSQL(); // так можно проверить sql запрос

// получаем данные
    $result = $q->stmt->fetchAll(PDO::FETCH_ASSOC);
    $newArray = [];

    foreach($result as $item){
        $newArray[$item['name']]['pageBlockId'] = $item['id'];
        $newArray[$item['name']]['data'] = json_decode($item['values'], JSON_UNESCAPED_UNICODE);
    }
    return $newArray;

}