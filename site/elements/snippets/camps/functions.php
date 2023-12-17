<?php

// Functions --------------------------------
// Генерация рандомного hash
function generateRandomString($length = 8) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
    $randomString = '';

    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, strlen($characters) - 1)];
    }

    return $randomString;
}

// Заменяем точки на дефисы и преобразуем дату
function changeDateFormat($dateStr) {
    if($dateStr){
        return date("Y-m-d", strtotime(str_replace(".", "-", $dateStr)));
    } else {
        return '';
    }
}

function isFileValid($modx, $file, $allowedExtensions, $maxFileSize) {
    $errors = [];

    // Проверяем, является ли $file массивом (несколько файлов) или нет (один файл)
    if (!is_array($file['error'])) {
        $file = array($file); // Преобразуем одиночный файл в массив
    }
    
    foreach ($file['error'] as $key => $error) {
        if ($error === UPLOAD_ERR_OK) {
            $fileExtension = strtolower(pathinfo($file['name'][$key], PATHINFO_EXTENSION));

            if (!in_array($fileExtension, $allowedExtensions)) {
                $errors[] = "Недопустимое расширение файла '{$file['name'][$key]}'. Разрешенные расширения: " . implode(", ", $allowedExtensions);
            }

            if ($file['size'][$key] > $maxFileSize) {
                $errors[$key]['name'] = $file['name'][$key];
                $errors[$key]['error'] = "Файл '{$file['name'][$key]}' слишком большой. Максимальный размер файла: " . ($maxFileSize / 1024) . "KB";
            }
        } else {
            //$errors[] = "Произошла ошибка при загрузке файла '{$file['name'][$key]}'";
        }
    }
    return empty($errors) ? true : $errors;
}

function pbTableSet($modx, $edit, $resourceId, $constructor_id, $chunkName, $table_id = null, $field_id = null, $arrayData = array(), $arrayTable = array(), $subArray = array()){

    // Порядок сортировки блоков
    $chunkRanks = [
        'program' => 1,
        'groups' => 2,
        'advantages' => 3,
        'visitOptions' => 4,
        'schedule' => 5,
        'gallery' => 6,
        'reviews' => 7,
        'faq' => 8,
    ];

    $rank = $chunkRanks[$chunkName] ?: 1;

    // Работа с таблицей modx_pb_blocks
    $pageBlock = $modx->getObject('pageBlock',[
        'resource_id' => $resourceId,
        'constructor_id' => $constructor_id,
        'chunk' => $chunkName
    ]);

    if (!is_object($pageBlock)) {
        $pageBlock = $modx->newObject('pageBlock');
    }

    $pageBlock->set('resource_id', $resourceId);
    $pageBlock->set('constructor_id', $constructor_id);
    $pageBlock->set('chunk', $chunkName);
    $pageBlock->set('rank', $rank);
    $pageBlock->set('values', json_encode($arrayData, JSON_UNESCAPED_UNICODE)); // Vf
    $pageBlock->save();

    $pageBlockId = $pageBlock->get('id');
    /*----------------------------*/

    // Работа с таблицей modx_pb_table_values
    if($edit === true){ // Если редактируем
        $pageBlockTableArr = $modx->getCollection('blockTableValue',[
            'resource_id' => $resourceId,
            'block_id' => $pageBlockId,
            'table_id' => $table_id,
            'field_id' => $field_id
        ]);

        $pbTableArr = array();
        $countArrayData = count($arrayTable);
        $iterationNumber = 0;

        foreach ($pageBlockTableArr as $item) {
            $pbTableArr[] = $item->get('id'); // Смотрим сколько есть записей в БД и создаем массив ID
            if($iterationNumber >= $countArrayData){ // Удаляем лишние записи из БД, если с формы пришло меньше строк чем есть в БД
                $item->remove();
            }
            $iterationNumber++;
        }
    }

    $i = 0;

    foreach($arrayTable as $index => $item){

        if($edit === true && isset($pbTableArr[$i])) { // Если редактируем
            $pageBlockTable = $modx->getObject('blockTableValue',[
                'id' => $pbTableArr[$i]
            ]);
        } else {
            $pageBlockTable = $modx->newObject('blockTableValue');
        }
        $pageBlockTable->set('resource_id', $resourceId); // ID ресурса
        $pageBlockTable->set('block_id', $pageBlockId);
        $pageBlockTable->set('table_id', $table_id);
        $pageBlockTable->set('rank', $i);
        $pageBlockTable->set('field_id', $field_id); // ID поля таблица в секции Programs, смотреть в БД
        $pageBlockTable->set('values', json_encode($item, JSON_UNESCAPED_UNICODE));
        $pageBlockTable->save();
        $i++;

        // pbTable вложенная таблица
        $grid_id = $pageBlockTable->get('id');

        switch ($chunkName){
            // Варианты посещений
            case 'visitOptions':
                $sub_table_id = 8;
                $sub_field_id = 41;
                break;
        }
        // Получаем id записей вложенной таблицы
        $subTableArr = $modx->getCollection('blockTableValue',[
            'resource_id' => $resourceId,
            'block_id' => $pageBlockId,
            'table_id' => $sub_table_id,
            'field_id' => $sub_field_id
        ]);

        if(!empty($subArray)){

            if($edit === true){
                $subPbTableArr = [];
                $countArrayData = count($subArray);
                $iterationNumber = 0;

                foreach ($subTableArr as $item2) {
                    $subPbTableArr[] = $item2->get('id'); // Смотрим сколько есть записей в БД и создаем массив ID
                    if($iterationNumber >= $countArrayData){ // Удаляем лишние записи из БД, если с формы пришло меньше строк чем есть в БД
                        $item2->remove();
                    }
                    $iterationNumber++;
                }
            }

            foreach ($subArray as $i => $row){

                foreach ($row as $item4){

                }


                if($edit === true && isset($subPbTableArr[$i])) { // Если редактируем
                    $pageBlockTable2 = $modx->getObject('blockTableValue',[
                        'id' => $subPbTableArr[$i]
                    ]);
                } else {
                    $pageBlockTable2 = $modx->newObject('blockTableValue');
                }

                $pageBlockTable2->set('resource_id', $resourceId); // ID ресурса
                $pageBlockTable2->set('block_id', $pageBlockId);
                $pageBlockTable2->set('grid_id', $grid_id);
                $pageBlockTable2->set('table_id', $table_id);
                $pageBlockTable2->set('rank', $i);
                $pageBlockTable2->set('field_id', $field_id); // ID поля таблица в секции Programs, смотреть в БД
                $pageBlockTable2->set('values', json_encode($row, JSON_UNESCAPED_UNICODE));
                $pageBlockTable2->save();
            }
        } else {
            // Если массив вложенной таблицы пустой (убрали галку), то удаляем все старые записи
            foreach ($subTableArr as $item3) {
                $item3->remove();
            }
        }
    }
}

function dataFilling($price,$discountedPrice,$expirationDate){

    if(count($price) === 1 && empty($price[0])){
        $pricesArrEmpty = true;
    }
    if($pricesArrEmpty !== true){
        for ($i = 0; $i < count($price); $i++) {
            $pricesArr[] = array(
                "price" => $price[$i],
                "discountedPrice" => $discountedPrice[$i],
                "expirationDate" => changeDateFormat($expirationDate[$i])
            );
        }
        return $pricesArr;
    }

}

function getImageProgram($array, $index){
    $image = '';
    if(isset($array[$index])){
        $image = $array[$index];
    }
    return $image;
}

?>