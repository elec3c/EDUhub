<?php
/** @var object $modx */
/** @var object $FetchIt */

////require_once(MODX_CORE_PATH . 'elements/php/functions.php');
//
//$prefixForm = 'cc_';
//$resourceParentId = 2021; // ID каталога для созданных ресурсов
//$resourceTemplateId = 27; // ID шаблона для созданных ресурсов
//$currentUser = $modx->user->get('id'); //Текущий пользователь
//$allowedExtensions = array("jpg", "jpeg", "png", "gif");
//$maxFileSize = 1 * 1024 * 1024; // 2 MB
//
//
//// Данные с формы --------------------------------
//// Hero
//$campName = $_POST[$prefixForm . 'title']; // Название лагеря
//$campSlogan = $_POST[$prefixForm . 'slogan']; // Слоган
//$campPhoto = $_FILES[$prefixForm . 'main_photo']; // Афиша
//$campMainImage = '';
//
//// Валидация --------------------------------
//if (!$campName) $errors[$prefixForm . 'title'] = 'Укажите название лагеря';
//
//
//
//$url = '';
//
//return $FetchIt->success('Редактирование успешно', array(
//    'link' => $url,
//));