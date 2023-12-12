<?php
/** @var $modx */







// Functions --------------------------------
// Генерация рандомного hash
// function generateRandomString3333($length = 8) {
//     $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
//     $randomString = '';

//     for ($i = 0; $i < $length; $i++) {
//         $randomString .= $characters[rand(0, strlen($characters) - 1)];
//     }

//     return $randomString;
// }

// return 1;


// $dateFrom = '01.12.2023';
// $dateTo = '02.12.2023';

// //$dateFrom = '14.11.2023';
// //$dateTo = '02.12.2023';

// //$dateFrom = '01.11.2023';
// //$dateTo = '08.11.2023';

// $numberOfDays = 1;
// $idsArray = [];

// if(isset($dateFrom) && !empty($dateFrom)){
//     $dateFrom = $dateFrom;
// } else {
//     $dateFrom = '31.12.2022';
// }

// if(isset($dateTo) && !empty($dateTo)){
//     $dateTo = $dateTo;
// } else {
//     $dateTo = '31.12.2030';
// }

// $result = getDatesBetween($dateFrom, $dateTo);

// $q = $modx->newQuery('modResource');
// $q->leftJoin('modTemplateVarResource', 'dateFrom', 'modResource.id = dateFrom.contentid AND dateFrom.tmplvarid = 146');
// $q->leftJoin('modTemplateVarResource', 'dateTo', 'modResource.id = dateTo.contentid AND dateTo.tmplvarid = 147');

// $q->select(array(
//     'modResource.id',
//     'modResource.pagetitle',
//     'dateFrom.value as dateFrom',
//     'dateTo.value as dateTo'
// ));

// $where = array(
//     //'modResource.id:IN' => $ids,
//     'modResource.parent' => 2021,
//     'modResource.published' => 1,
//     //'dateFrom.value:>=' => $date_from,
//     //'dateFrom.value' => $date_from,
// );

// $q->where($where);

// $q->sortby('dateFrom', 'asc');

// if ($q->prepare() && $q->stmt->execute()) {
//     $data = $q->stmt->fetchAll(PDO::FETCH_ASSOC);
// }

// if($data) {

//     foreach($data as &$item){

//         $dateTimeFrom = DateTime::createFromFormat('Y-m-d H:i:s', $item['dateFrom']);
//         $dateTimeTo = DateTime::createFromFormat('Y-m-d H:i:s', $item['dateTo']);



//         if(in_array($dateTimeFrom->format('d.m.Y'),$result) || in_array($dateTimeTo->format('d.m.Y'),$result)){
//         //if(strtotime($dateTo) > strtotime($item['dateFrom'])){




//             if(strtotime($dateFrom) >= strtotime($item['dateFrom'])){
//                 $item['initialDate'] = $dateFrom;
//             } else {
//                 $item['initialDate'] = $item['dateFrom'];
//             }

//             if(strtotime($dateTo) <= strtotime($item['dateTo'])){
//                 $item['EndDate'] = $dateTo;
//             } else {
//                 $item['EndDate'] = $item['dateTo'];
//             }

//             $dateTime1 = new DateTime($item['initialDate']);
//             $dateTime2 = new DateTime($item['EndDate']);

//             $interval = $dateTime1->diff($dateTime2);
//             $item['numberOfDays'] = $interval->days + 1;

//             if($item['numberOfDays'] >= $numberOfDays){
//                 $idsArray[] = $item['id'];
//             }
//         }

//     }

// //    $idArray = array_column($data, 'id');
// //    return $idArray;

//     //return $data;
//     return $idsArray;
// }

//function pbTableSet2($edit, $resourceId, $constructor_id, $chunkName, $table_id, $field_id, $arrayData, $arrayTable, $subArray = array()){
//    global $modx;
//
//    // Порядок сортировки блоков
//    $chunkRanks = [
//        'program' => 1,
//        'advantages' => 2,
//        'schedule' => 3,
//        'gallery' => 4,
//        'reviews' => 5,
//        'faq' => 6,
//    ];
//
//    $rank = $chunkRanks[$chunkName] ?? 1;
//
//    // Работа с таблицей modx_pb_blocks
//    $pageBlock = $modx->getObject('pageBlock',[
//        'resource_id' => $resourceId,
//        'constructor_id' => $constructor_id,
//        'chunk' => $chunkName
//    ]);
//
//    if (!is_object($pageBlock)) {
//        $pageBlock = $modx->newObject('pageBlock');
//    }
//
//    $pageBlock->set('resource_id', $resourceId);
//    $pageBlock->set('constructor_id', $constructor_id);
//    $pageBlock->set('chunk', $chunkName);
//    $pageBlock->set('rank', $rank);
//    $pageBlock->set('values', json_encode($arrayData, JSON_UNESCAPED_UNICODE)); // Vf
//    $pageBlock->save();
//
//    $pageBlockId = $pageBlock->get('id');
//    /*----------------------------*/
//
//    // Работа с таблицей modx_pb_table_values
//    if($edit === true){ // Если редактируем
//        $pageBlockTableArr = $modx->getCollection('blockTableValue',[
//            'resource_id' => $resourceId,
//            'block_id' => $pageBlockId,
//            'table_id' => $table_id,
//            'field_id' => $field_id
//        ]);
//
//        $pbTableArr = array();
//        $countArrayData = count($arrayTable);
//        $iterationNumber = 0;
//
//        foreach ($pageBlockTableArr as $item) {
//            $pbTableArr[] = $item->get('id'); // Смотрим сколько есть записей в БД и создаем массив ID
//            if($iterationNumber >= $countArrayData){ // Удаляем лишние записи из БД, если с формы пришло меньше строк чем есть в БД
//                $item->remove();
//            }
//            $iterationNumber++;
//        }
//    }
//    $i = 0;
//    foreach($arrayTable as $index => $item){
//
//        //$modx->log(1,print_r($arrayTable,1));
//        $modx->log(1,count($arrayTable));
//
//        if($edit === true && isset($pbTableArr[$i])) { // Если редактируем
//            $pageBlockTable = $modx->getObject('blockTableValue',[
//                'id' => $pbTableArr[$i]
//            ]);
//        } else {
//            $pageBlockTable = $modx->newObject('blockTableValue');
//        }
//        $pageBlockTable->set('resource_id', $resourceId); // ID ресурса
//        $pageBlockTable->set('block_id', $pageBlockId);
//        $pageBlockTable->set('table_id', $table_id);
//        $pageBlockTable->set('rank', $index);
//        $pageBlockTable->set('field_id', $field_id); // ID поля таблица в секции Programs, смотреть в БД
//        $pageBlockTable->set('values', json_encode($item, JSON_UNESCAPED_UNICODE));
//        $pageBlockTable->save();
//        $i++;
//
//        // pbTable вложенная таблица
//        $grid_id = $pageBlockTable->get('id');
//
//        switch ($chunkName){
//            // Варианты посещений
//            case 'visitOptions':
//                $sub_table_id = 8;
//                $sub_field_id = 41;
//                break;
//        }
//
//
//        if(!empty($subArray)){
//
//            foreach ($subArray as $row){
//
//                // Получаем id записей вложенной таблицы
//                $subTableArr = $modx->getCollection('blockTableValue',[
//                    'resource_id' => $resourceId,
//                    'block_id' => $pageBlockId,
//                    'table_id' => $sub_table_id,
//                    'field_id' => $sub_field_id,
//                    'grid_id' => $grid_id
//                ]);
//
//                // Собираем id
//                if($edit === true){
//                    $subPbTableArr = [];
//                    $countArrayData = count($row);
//
//                    $iterationNumber = 0;
//
//                    foreach ($subTableArr as $item2) {
//
//                        $subPbTableArr[] = $item2->get('id'); // Смотрим сколько есть записей в БД и создаем массив ID
//                        if($iterationNumber >= $countArrayData){ // Удаляем лишние записи из БД, если с формы пришло меньше строк чем есть в БД
//                            $item2->remove();
//                        }
//                        $iterationNumber++;
//                    }
//                }
//
//                //$modx->log(1,print_r($subPbTableArr,1));
//
//                foreach ($row as $i => $item4){
//
//                    //$modx->log(1,print_r($item4,1));
//                    //$modx->log(1,print_r('item'.$item4,1));
//
//                    // Пишем в таблицу
//                    if($edit === true && isset($subPbTableArr[$i])) { // Если редактируем
//                        $pageBlockTable2 = $modx->getObject('blockTableValue',[
//                            'id' => $subPbTableArr[$i]
//                        ]);
//                    } else {
//                        $pageBlockTable2 = $modx->newObject('blockTableValue');
//                    }
//
//                    $pageBlockTable2->set('resource_id', $resourceId); // ID ресурса
//                    $pageBlockTable2->set('block_id', $pageBlockId);
//                    $pageBlockTable2->set('grid_id', $grid_id);
//                    $pageBlockTable2->set('table_id', $sub_table_id);
//                    $pageBlockTable2->set('rank', $i);
//                    $pageBlockTable2->set('field_id', $sub_field_id); // ID поля таблица в секции Programs, смотреть в БД
//                    $pageBlockTable2->set('values', json_encode($item4, JSON_UNESCAPED_UNICODE));
//                    $pageBlockTable2->save();
//
//                }
//
//            }
//        } else {
//            // Если массив вложенной таблицы пустой (убрали галку) то удаляем все старые записи
//            foreach ($subTableArr as $item3) {
//                $item3->remove();
//            }
//        }
//    }
//}
//
//function changeDateFormat2($dateStr) {
//    if($dateStr){
//        return date("Y-m-d", strtotime(str_replace(".", "-", $dateStr)));
//    } else {
//        return '';
//    }
//}
//
//function dataFilling2($price,$discountedPrice,$expirationDate){
//
//    if(count($price) === 1 && empty($price[0])){
//        $pricesArrEmpty = true;
//    }
//    if($pricesArrEmpty !== true){
//        for ($i = 0; $i < count($price); $i++) {
//            $pricesArr[] = array(
//                "price" => $price[$i],
//                "discountedPrice" => $discountedPrice[$i],
//                "expirationDate" => changeDateFormat2($expirationDate[$i])
//            );
//        }
//        return $pricesArr;
//    }
//
//}
//
///*-------------------------------*/
//$edit = true;
//$resourceId = $modx->resource->get('id');
//$campTypeVisitFullday = 'on';
//$campTypeVisitBeforeLunch = 'on';
//
//$campVisitPriceArrFullday = [100,200];
//$campVisitNewPriceArrFullday = [200,300];
//$campVisitDateArrFullday = ['2023-11-29','2023-11-30'];
//
//$campVisitPriceArrBeforeLunch = [400,500];
//$campVisitNewPriceArrBeforeLunch = [600,700];
//$campVisitDateArrBeforeLunch = ['2023-11-29','2023-11-30'];
///*-------------------------------*/
//
//$visitOptions = array();
//$visitOptionsPrices = array();
//
//if($campTypeVisitFullday === 'on'){ // Чекбокс "Полный день"
//    $visitOptionsPrices['fullday'] = dataFilling2($campVisitPriceArrFullday, $campVisitNewPriceArrFullday, $campVisitDateArrFullday);
//    $visitOptions['fullday'] = array(
//        'period' => 'fullday',
//        'timeFrom' => '12:00',
//        'timeTo' => '12:00',
//        'description' => 'Описание полный день',
//        'prices' => $visitOptionsPrices['fullday']
//    );
//}
//
//if($campTypeVisitBeforeLunch === 'on'){// Чекбокс "До обеда"
//    $visitOptionsPrices['beforeLunch'] = dataFilling2($campVisitPriceArrBeforeLunch, $campVisitNewPriceArrBeforeLunch, $campVisitDateArrBeforeLunch);
//    $visitOptions['beforeLunch'] = array(
//        'period' => 'beforeLunch',
//        'timeFrom' => '14:00',
//        'timeTo' => '15:00',
//        'description' => 'Описание до обеда',
//        'prices' => $visitOptionsPrices['beforeLunch']
//    );
//}
//
//$visitOptionsArray = array(
//    'table' => $visitOptions
//);
//
//$modx->log(1,print_r($visitOptionsArray,1,));
////$modx->log(1,print_r($visitOptions,1,));
////$modx->log(1,print_r($visitOptionsPrices,1));
//
//pbTableSet2($edit, $resourceId,10,'visitOptions',7,28, $visitOptionsArray, $visitOptions, $visitOptionsPrices);
//
//return 'done!';