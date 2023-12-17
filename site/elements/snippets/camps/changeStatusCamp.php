<?php
/** @var $modx */
/** @var $FetchIt */
$prefixForm = 'csc_';
$idCamp = (int) $_POST[$prefixForm.'idCamp']; // ID лагеря
$statusCamp = (int) $_POST[$prefixForm.'status']; // 1 - опубликован, 0 - черновик

//$modx->log(1, '$statusCamp:'.$statusCamp);
//$modx->log(1, print_r($_POST,1));

//if($statusCamp !== 1 || $statusCamp !== 0){
//    $statusCamp = 0;
//}

if($idCamp){

    $resource = $modx->getObject('modResource', array(
        'id' => $idCamp
    ));

    if (is_object($resource)) {

        $resource->set('published', $statusCamp);
        $resource->save();

        return $FetchIt->success('Статус публикации успешно изменен', array(
            'idCamp' => $idCamp,
            'statusCamp' => $statusCamp
        ));

    } else {
        return $FetchIt->error('Объект не существует', array());
    }
} else {
    return $FetchIt->error('Ошибка, не указан ID лагеря', array());
}