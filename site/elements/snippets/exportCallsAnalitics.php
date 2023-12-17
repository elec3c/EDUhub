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
 
$fname = 'calls_analitics';
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



$r = $modx->runSnippet('pdoResources', array(
                            'parents'=>85,
                            'ajaxMode'=>'default',
                            'limit'=>5000,
                            'class'=>'modResource',
                            'includeTVs'=> 'course_owner',
                            'tvPrefix'=>'',
                            'loadModels'=>'calls',
                            'innerJoin'=>[
                                'EduCalls'=>[
                                    'class'=>'EduCalls',
                                    'on'=>'modResource.id = EduCalls.group_id',
                                ],
                            ],
                            'select'=>[
                                'EduCalls'=>'*',
                                'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                            ],
                            'sortby'=>[
                                'EduCalls.id'=>'DESC',
                            ],
                            'where'=>[
                                'EduCalls.date:>='=>$dataFrom,
                                'EduCalls.date:<='=>$dataTo,
                            ],                            
                            
                            'tpl'=>'@FILE chunks/lkm/lkm.call.analitics.json.tpl'));


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
          "data_start"  => "22.09.2022",
          "data_open"   => "24.09.2022",
          "commission"  => "11",
         )
    );
}

// Записываем контент для экспорта
$fields = array(
    "fullname"    => "Имя", 
    "school"      => "Образовательный центр", 
    "group"       => "Курс",  
    "url"         => "Ссылка",
    "data_start"  => "Дата заказа",
    "data_open"   => "Дата открытия",
    "commission"  => "Коммиссия"
);

$widths = array_merge($widths, array(
          "fullname"    => "55", 
          "school"      => "130", 
          "group"       => "200",  
          "url"         => "500",
          "data_start"  => "75",
          "data_open"   => "75",
          "commission"  => "40"
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