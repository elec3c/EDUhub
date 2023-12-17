<?php
/** @var $modx */
/** @var $scriptProperties */

$nameTV = $modx->getOption('nameTv', $scriptProperties);
$typeValue = $modx->getOption('value', $scriptProperties);
$valueTV = $modx->getOption('valueTv', $scriptProperties, $modx->resource->getTVValue($nameTV));

$array = explode(',', $valueTV);
$value = 0;

// Получаем минимальное или максимальное значение из camp_ages
if ($nameTV === 'camp_ages'){
    switch ($typeValue){
        case 'min':
            $value = min($array);
            break;
        case 'max':
            $value = max($array);
            break;
    }
}

return $value;