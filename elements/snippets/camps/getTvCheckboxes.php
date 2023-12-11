<?php
/** @var $modx */
/** @var $scriptProperties */

$nameTV = $modx->getOption('nameTv', $scriptProperties);
$tv = $modx->getObject('modTemplateVar', array('name' => $nameTV));

if(!is_object($tv)) return;

$elements = explode('||', $tv->get('elements'));
$values = [];

foreach ($elements as $key => $element){
    $elementArray = explode('==', $element);
    $values[$key]['name'] = $elementArray[0];
    $values[$key]['value'] = $elementArray[1];
}

return $values;