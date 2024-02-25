<?php
/* @var ExportUsers $ExportUsers */
/* @var ExportUsersProfileHandler $Profile */
/** @var ExportUsers $ExportUsers */
$ExportUsers = $modx->getService('ExportUsers', 'ExportUsers', MODX_CORE_PATH . 'components/exportusers/model/');

if (!$ExportUsers->initialize(true)) {
    return 'error load class ExportUsers';
}

if(!empty($_GET['dataFrom'])) {
   
    
    $data = str_replace('"', '', $_GET['dataFrom']);
    $data = str_replace("'", "", $data);
    
    $d = explode('-', $data);
    
    if($d[2] < 31){
        
        $d[2] =  $d[2] + 1;
        
    }
    
    $str_date = $d[0].'-'.$d[1].'-'.$d[2];
    
    
    $dataFrom =  strtotime($str_date);
    
} else {
    
    $dataFrom  = strtotime('2021-12-12');
    
}

if(!empty($_GET['dataTo'])) {
 
   
    
    $data = $_GET['dataTo'];
    $d = explode('-', $data);
    
    if($d[2] < 31){
        
        $d[2] =  $d[2] + 1;
        
    }
    
    $str_date = $d[0].'-'.$d[1].'-'.$d[2];
    
    $dataTo =  strtotime($str_date);
    
} else {
    $dataTo  = strtotime('2030-12-12');
}
 
$fname = 'promocode_analitics';
if(empty($_GET['dataFrom']) && empty($_GET['dataTo'])) {
    $fname .= '_%Y-%m-%d';
} else {
    
    if(!empty($_GET['dataFrom'])){
        
        $fname .= '_FROM_'.$_GET['dataFrom'];     
    }
    
    if(!empty($_GET['dataTo'])){
        
        $fname .= '_TO_'.$_GET['dataTo'];     
    }
}





$classExport = 'xlsx';

$config = array(
    'filename' => $fname,
    'head_process' => true,
    'head_color' => "EA8000",
    'width' => '300',
    'remove' => 1
);


$where = ['PromoCodeItem.created:<=' => $dataTo, 'PromoCodeItem.created:>=' => $dataFrom];

$r = $modx->runSnippet('pdoResources', array(
                                'parents'=>85,
                                'class'=>'modResource',
                                'limit'=>5000,
                                'tvPrefix'=>'',
                                'loadModels'=>'promocode',
                                'innerJoin'=>[
                                    'PromoCodeItem'=>[
                                        'class'=>'PromoCodeItem',
                                        'on'=>'modResource.id = PromoCodeItem.groupId',
                                    ],
                                ],
                                'leftJoin'=>[
                                    'TVcourse_owner'=>[
                                        'class'=>'modTemplateVarResource',
                                        'on'=>'TVcourse_owner.contentid = modResource.id and TVcourse_owner.tmplvarid = 32',
                                    ],
                                    'modUserProfile'=>[
                                        'class'=>'modUserProfile',
                                        'on'=>'modUserProfile.internalKey = TVcourse_owner.value',
                                    ],
                                ],
                                'select'=>[
                                    'PromoCodeItem'=>'*',
                                    'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                                    'modUserProfile'=>'modUserProfile.website,modUserProfile.photo',
                                    'TVcourse_owner'=>'IFNULL(`TVcourse_owner`.`value`, \'\') AS `course_city`',
                                    'TVcourse_owner'=>'IFNULL(`TVcourse_owner`.`value`, \'\') AS `course_owner`',
                                ],
                                'sortby'=>[
                                    'PromoCodeItem.id'=>'DESC',
                                ],
                                'includeTVs'=>'course_group_title,form_of_study,course_city,TVcourse_owner,sale,data_from',
                                'tpl'=>'@FILE chunks/lkm/lkm.promocode.analitics.json.tpl',

                            ));


$r = trim($r);
$r = str_replace("[", "{", $r);
$r = str_replace("]", "}", $r);
$r = substr($r, 0, -1);
$json = '['.$r.']';

$data = json_decode($json, true);

if(!is_array($data)){
    
    $data = array(
        
        0=>array(
          "fullname"    => "Error", 
          "school"      => "Школа", 
          "group"       => "Школа группа",  
          "url"         => "https://eduhub.by/programming/shkola-gruppa-2022-09-22.html",
          "promocode"   => "OPZQC",
          "data_start"   => "01.09.2022",
          "data_stop"   => "08.09.2022",
          "commission"  => "50",
          "dogovor"     => "Заключен"
         )
    );
    
    
}

// Записываем контент для экспорта
$fields = array(
    "fullname"    => "Имя", 
    "school"      => "Образовательный центр", 
    "group"       => "Курс",  
    "url"         => "Ссылка",
    "promocode"   => "Промокод",
    "data_start"   => "Дата создания",
    "data_stop"   => "Срок действия",
    "commission"  => "Коммиссия",
    "dogovor"     => "Договор"
);

$widths = array_merge($widths, array(
          "fullname"    => "55", 
          "school"      => "130", 
          "group"       => "200",  
          "url"         => "500",
          "promocode"   => "80",
          "data_start"  => "75",
          "data_stop"   => "75",
          "commission"  => "40",
          "dogovor"     => "70"
));


$handlers = array_merge($widths, array(
    'published' => 'boolean'
));

if ($Profile = $ExportUsers->profile->newHandler($data, $config, $fields, $widths, $handlers)) {
    if ($export = $Profile->export($classExport)) {
        if ($export->save()) {
            if ($file = $export->loadFile()) {
                $file->download();
            }
        }
    }
};