<?php
/** @var $modx */
/** @var $scriptProperties */

$nameTV = $modx->getOption('nameTv', $scriptProperties);
$valueTV = $modx->getOption('valueTv', $scriptProperties);

$tv = $modx->getObject('modTemplateVar', array('name' => $nameTV));

if(!is_object($tv)) return;

$elements = explode('||', $tv->get('elements'));
$values = [];

foreach ($elements as $key => $element){
    $elementArray = explode('==', $element);
    $values[$elementArray[1]]['name'] = $elementArray[0];
    $values[$elementArray[1]]['value'] = $elementArray[1];
}

return $values[$valueTV]['name'];