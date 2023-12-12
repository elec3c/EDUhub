<?php
/** @var $modx */
/** @var $FetchIt */

$idCamp = (int) $_POST['idCamp'];

if($idCamp){
    $resource = $modx->getObject('modResource', array(
        'id' => $idCamp
    ));

    if (is_object($resource)) {
        $resource->remove();
        return $FetchIt->success('Успешно', array(
            'idCamp' => $idCamp,
        ));
    } else {
        return $FetchIt->error('Объект не существует', array());
    }
}