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
 
$fname = 'schools_list';
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


//$where = ['PromoCodeItem.created:<=' => $dataTo, 'PromoCodeItem.created:>=' => $dataFrom];

$r = $modx->runSnippet('pdoPage', array(
                            'parents'=>85,
                            'showLog'=>0,
                            'element'=>'pdoUsers',
                            'groups'=>'Organization',
                            'limit'=>5000,
                            'tvPrefix'=>'',
                            'tpl'=>'@FILE chunks/lkm/lkm.schools.list.json.tpl')
);

$r = trim($r);
$r = str_replace("[", "{", $r);
$r = str_replace("]", "}", $r);
$r = substr($r, 0, -1);
$json = '['.$r.']';

$data = json_decode($json, true);

if(!is_array($data)){
    
    $data = array(
        0=>array(
          "fullname" => "Образовательный центр", 
          "unp"      => "УНП", 
          "ooo"      => "Наименование организации",  
          "address"  => "Адрес",  
          "email"    => "Почта",
          "mobilephone" => "Телефон",
          "website"   => "Сайт"
         )
    );
}

// Записываем контент для экспорта
$fields = array(
    "fullname" => "Образовательный центр", 
    "unp"      => "УНП", 
    "ooo"      => "Наименование организации",  
    "address"  => "Адрес",  
    "email"    => "Почта",
    "mobilephone" => "Телефон",
    "website"   => "Сайт"
);

$widths = array_merge($widths, array(
    "fullname" => "300", 
    "unp"      => "200", 
    "ooo"      => "500",  
    "address"  => "150",  
    "email"    => "80",
    "mobilephone" => "75",
    "website"   => "100"
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