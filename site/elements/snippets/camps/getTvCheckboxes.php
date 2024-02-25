<?php
/** @var $modx */
/** @var $scriptProperties */

$nameTV = $modx->getOption('nameTv', $scriptProperties);
$resourceTV = $modx->getOption('resourceTv', $scriptProperties); // Выбранные чекбоксы у ресурса
$dataType = $modx->getOption('return', $scriptProperties); // Тип возвращаемых данных

$tv = $modx->getObject('modTemplateVar', array('name' => $nameTV));

if(!is_object($tv)) return;

$elements = explode('||', $tv->get('elements'));
$values = [];

foreach ($elements as $key => $element){
    $elementArray = explode('==', $element);
    $values[$key]['name'] = $elementArray[0];
    $values[$key]['value'] = $elementArray[1];
}

if($resourceTV){
    $resourceTVArray = explode(',', $resourceTV);
    foreach ($values as $key => $value){
        // Удаляем не отмеченные чекбоксы
        if (!in_array($value['value'], $resourceTVArray)) {
            unset($values[$key]);
        }
    }
}

if($dataType){
    $dataArray = [];
    switch ($dataType){
        case 'name';
            foreach ($values as $value){
                $dataArray[] = $value['name'];
            }
            break;
    }
    $values = $dataArray;
}

return $values;