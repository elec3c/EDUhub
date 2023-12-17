<?php
/** @var object $modx */
/** @var object $FetchIt */
/** @var array $scriptProperties */

require_once(MODX_ASSETS_PATH . 'elements/snippets/camps/functions.php'); // функции
$edit = $modx->getOption('edit', $scriptProperties);
$prefixForm = 'cc_';
$resourceParentId = (int) $modx->getOption('section_id_created_camps');; // ID каталога для созданных ресурсов
$resourceTemplateId = (int) $modx->getOption('city_camp_template_id'); // ID шаблона для созданных ресурсов
$currentUser = $modx->user->get('id'); //Текущий пользователь
$allowedExtensions = array("jpg", "jpeg", "png", "gif");
$maxFileSize = 1 * 1024 * 1024; // 2 MB

$resourceUrl = 'camp-' . generateRandomString();
$pathImages = 'assets/userfiles/camps/'. $resourceUrl . '/'; // Путь для загружаемых файлов
$pathImagesFull = MODX_BASE_PATH . $pathImages;

// Данные с формы --------------------------------
// Hero - Общая информаиця
$campName = $_POST[$prefixForm . 'title']; // Название лагеря
$campSlogan = $_POST[$prefixForm . 'slogan']; // Слоган
$campPhoto = $_FILES[$prefixForm . 'main_photo']; // Афиша
$campAgeFrom = (int) $_POST[$prefixForm . 'age_from']; // Возраст "от"
$campAgeTo = (int) $_POST[$prefixForm . 'age_to']; // Возраст "до"
$campNumberChildrenInGroup = (int) $_POST[$prefixForm . 'number_children_group']; // Количество детей в группе
$campSubjectsArr = $_POST[$prefixForm . 'subjects'];// Тематики лагеря
$campMeals = (int) $_POST[$prefixForm . 'meals']; // Питание (Условия, питание)
$campСonditioner = $_POST[$prefixForm . 'conditioner']; // кондиционер (Условия, питание)
$campFreeParking = $_POST[$prefixForm . 'freeParking']; // 0 руб. PARKING (Условия, питание)
$campFreeWiFi = $_POST[$prefixForm . 'freeWiFi']; // free Wi - Fi (Условия, питание)

// Program - Программа
$campProgramDescription = $_POST[$prefixForm . 'program_description']; // Описание программы
$campProgramDescriptionArr = $_POST[$prefixForm . 'program_description_arr']; // Описание пункта программы
$campProgramDateStartArr = $_POST[$prefixForm . 'program_date_start_arr']; // Дата начала пункта программы
$campProgramDateEndRowArr = $_POST[$prefixForm . 'program_date_end_arr']; // Дата окончания пункта программы
$campProgramImagesArr = $_FILES[$prefixForm . 'program_photo']; // Фото программы

// Visit options - Варианты посещений
$campTypeVisitFullday = $_POST[$prefixForm . 'visit_options_fullday']; // Чекбокс "Полный день"
$campTypeVisitBeforeLunch = $_POST[$prefixForm . 'visit_options_before_lunch']; // Чекбокс "До обеда"
$campTypeVisitAfterLunch = $_POST[$prefixForm . 'visit_options_after_lunch']; // Чекбокс "После обеда"
$campTypeVisitOneday = $_POST[$prefixForm . 'visit_options_oneday']; // Чекбокс "Один день"
// Описание - Варианты посещений
$campVisitDescriptionFullday = $_POST[$prefixForm . 'visit_options_description_1']; // Описание "Полный день"
$campVisitDescriptionBeforeLunch = $_POST[$prefixForm . 'visit_options_description_2']; // Описание "До обеда"
$campVisitDescriptionAfterLunch = $_POST[$prefixForm . 'visit_options_description_3']; // Описание "После обеда"
$campVisitDescriptionOneday = $_POST[$prefixForm . 'visit_options_description_4']; // Описание "Один день"
// Время от - Варианты посещений
$campVisitTimeFromFullday = $_POST[$prefixForm . 'visit_options_time_from_1']; // Время от "Полный день"
$campVisitTimeFromBeforeLunch = $_POST[$prefixForm . 'visit_options_time_from_2']; //Время от "До обеда"
$campVisitTimeFromAfterLunch = $_POST[$prefixForm . 'visit_options_time_from_3']; // Время от "После обеда"
$campVisitTimeFromOneday = $_POST[$prefixForm . 'visit_options_time_from_4']; // Время от "Один день"
// Время до - Варианты посещений
$campVisitTimeToFullday = $_POST[$prefixForm . 'visit_options_time_to_1']; // Время до "Полный день"
$campVisitTimeToBeforeLunch = $_POST[$prefixForm . 'visit_options_time_to_2']; // Время до "До обеда"
$campVisitTimeToAfterLunch = $_POST[$prefixForm . 'visit_options_time_to_3']; // Время до "После обеда"
$campVisitTimeToOneday = $_POST[$prefixForm . 'visit_options_time_to_4']; // Время до "Один день"

// Цены - Польный день - Варианты посещений
$campVisitPriceArrFullday = $_POST[$prefixForm . 'visit_options_price_arr_fullday']; // Цена
$campVisitNewPriceArrFullday = $_POST[$prefixForm . 'visit_options_new_price_arr_fullday']; // Новая цена
$campVisitDateArrFullday = $_POST[$prefixForm . 'visit_options_date_arr_fullday']; // Действует до
// Цены - До обеда - Варианты посещений
$campVisitPriceArrBeforeLunch = $_POST[$prefixForm . 'visit_options_price_arr_beforeLunch']; // Цена
$campVisitNewPriceArrBeforeLunch = $_POST[$prefixForm . 'visit_options_new_price_arr_beforeLunch']; // Новая цена
$campVisitDateArrBeforeLunch = $_POST[$prefixForm . 'visit_options_date_arr_beforeLunch']; // Действует до
// Цены - После обеда - Варианты посещений
$campVisitPriceArrAfterLunch = $_POST[$prefixForm . 'visit_options_price_arr_afterLunch']; // Цена
$campVisitNewPriceArrAfterLunch = $_POST[$prefixForm . 'visit_options_new_price_arr_afterLunch']; // Новая цена
$campVisitDateArrAfterLunch = $_POST[$prefixForm . 'visit_options_date_arr_afterLunch']; // Действует до
// Цены - Один день - Варианты посещений
$campVisitPriceArrOneday = $_POST[$prefixForm . 'visit_options_price_arr_oneday']; // Цена
$campVisitNewPriceArrOneday = $_POST[$prefixForm . 'visit_options_new_price_arr_oneday']; // Новая цена
$campVisitDateArrOneday = $_POST[$prefixForm . 'visit_options_date_arr_oneday']; // Действует до

// pricesAndDiscounts - Скидки
$campDiscountStaff = $_POST[$prefixForm . 'staff_discount_price']; // Скидка сотрудникам компании
$campDiscountUsers= $_POST[$prefixForm . 'users_discount_price']; // Скидка пользователям сайта
$campDiscountDescriptionMain = $_POST[$prefixForm . 'discount_description_main']; // Описание блока "Скидки"
$campDiscountDescriptionArr = $_POST[$prefixForm . 'discount_description']; // Описание строки "Кому"
$campDiscountPriceArr = $_POST[$prefixForm . 'discount_price']; // Описание строки "Размер скидки"

// Duration - Продолжительность лагеря
$campDurationFrom = $_POST[$prefixForm . 'duration_camp_from']; // Дата с
$campDurationTo = $_POST[$prefixForm . 'duration_camp_to']; // Дата по
$campDurationTimeFrom = $_POST[$prefixForm . 'duration_time_from']; // Время занятий с
$campDurationTimeTo = $_POST[$prefixForm . 'duration_time_to']; // Время занятий до
$campDurationWeekdaysFrom = $_POST[$prefixForm . 'duration_weekdays_from']; // Дни занятий с
$campDurationWeekdaysTo = $_POST[$prefixForm . 'duration_weekdays_to']; // Дни занятий до

// Advantages - Наши преимущества
$campAdvantageTitleArr = $_POST[$prefixForm . 'advantage_title']; // Заголовок строки преимущества
$campAdvantageDescriptionArr = $_POST[$prefixForm . 'advantage_description']; // Описание строки преимущества

// Schedule - Распорядок дня (расписание)
$campScheduleTitleArr = $_POST[$prefixForm . 'schedule_title']; // Заголовок строки расписание
$campScheduleDescriptionArr = $_POST[$prefixForm . 'schedule_description']; // Описание строки расписание

// Reviews - Отзывы
$campReviewNameArr = $_POST[$prefixForm . 'review_name']; // Имя для отзыва
$campReviewTextArr = $_POST[$prefixForm . 'review_text']; // Текст отзыва

// FAQ - Часто задаваемые вопросы
$campFaqQuestionArr = $_POST[$prefixForm . 'faq_question']; // Вопрос
$campFaqAnswerArr = $_POST[$prefixForm . 'faq_answer']; // Ответ

$campDraft = $_POST[$prefixForm . 'draft']; // Чекбокс "Черновик"

// Валидация --------------------------------
if (!$campName) $errors[$prefixForm . 'title'] = 'Укажите название лагеря';

//// Валидация "Скидки"
//if (!$campDiscountStaff) $errors[$prefixForm . 'staff_discount_price'] = 'Укажите скидку для сотрудников компании и партнеров';
//if (!$campDiscountUsers) $errors[$prefixForm . 'users_discount_price'] = 'Укажите скидку для пользователей сайта';
//
//// Валидация "Продолжительность лагеря"
//if (!$campDurationFrom) $errors[$prefixForm . 'duration_camp_from'] = 'Укажите дату';
//if (!$campDurationTo) $errors[$prefixForm . 'duration_camp_to'] = 'Укажите дату';
//if (!$campDurationTimeFrom) $errors[$prefixForm . 'duration_time_from'] = 'Укажите время';
//if (!$campDurationTimeTo) $errors[$prefixForm . 'duration_time_to'] = 'Укажите время';
//if (!$campDurationWeekdaysFrom) $errors[$prefixForm . 'duration_weekdays_from'] = 'Укажите день недели';
//if (!$campDurationWeekdaysTo) $errors[$prefixForm . 'duration_weekdays_to'] = 'Укажите день недели';

// if (!$campSlogan) $errors[$prefixForm . 'slogan'] = 'Укажите слоган';
// if (!$campProgramDescription) $errors[$prefixForm . 'program_description'] = 'Укажите описание программы';


// Валидация и обработка главного изображения
if($campPhoto['size'][0] > 0){
    $validationResult = isFileValid($modx, $campPhoto, $allowedExtensions, $maxFileSize);

    if ($validationResult === true) {
        // Если папки нет, создать её
        $pathImagesFullMain = $pathImagesFull . 'main/';
        if (!file_exists($pathImagesFullMain)) {
            mkdir($pathImagesFullMain, 0777, true);
        }
        // Перемещаем изображение
        move_uploaded_file($campPhoto['tmp_name'][0], $pathImagesFullMain . $campPhoto['name'][0]);
        $campMainImage = $pathImages . 'main/' . $campPhoto['name'][0];
    } else {
        $errors[$prefixForm . 'main_photo'] = $validationResult;
    }
}


 // Обработка изображений программ
 $arrProgramImages = [];
 foreach ($campProgramImagesArr['tmp_name'] as $key => $programImage){
     if ($campProgramImagesArr['size'][$key] > 0){
         $validationResult = isFileValid($modx, $campProgramImagesArr, $allowedExtensions, $maxFileSize);

         if ($validationResult === true) {
             // Если папки нет, создать её
             if (!file_exists($pathImagesFull)) {
                 mkdir($pathImagesFull, 0777, true);
             }
             // Перемещаем изображение
             move_uploaded_file($campProgramImagesArr['tmp_name'][$key], $pathImagesFull . $campProgramImagesArr['name'][$key]);
             // Записываем в массив изображений
             $arrProgramImages[$key] = $pathImages . $campProgramImagesArr['name'][$key];
         } else {
             $errors[$prefixForm . 'program_photo'] = $validationResult;
         }

     }
 }

// Обработка ошибок
if(!empty($errors)){
    return $FetchIt->error('Ошибки в форме', $errors);
}

// Создание / редактирование ресурса --------------------------------
if($edit === true){ // Если редактируем
    $resourceId = $modx->resource->get('id');
    $resource = $modx->getObject('modResource', $resourceId);
} else {
    $resource = $modx->newObject('modResource');
    $resource->set('parent', $resourceParentId);
    $resource->set('template', $resourceTemplateId);
    $resource->set('alias', $resourceUrl);
    $resource->set('show_in_tree', 0);
}

$resource->set('pagetitle', $campName);
$resource->set('published', ($campDraft === 'on') ? 0 : 1);
$resource->save();
$resourceId = $resource->get('id');

if($edit !== true){ // Если редактируем
    $resource->setTVValue('userId', $currentUser); // Указываем ID текущего пользователя в TV
    $resource->save();
}

// Заполняем pageblocks ------------------------------------
// Hero - 1 секция -----------------------------------------
// Продолжительность лагеря --------------------------------
$heroArray = array(
    "description" => $campSlogan,
    "classTimeFrom" => $campDurationTimeFrom,
    "classTimeTo" => $campDurationTimeTo,
    "weekDaysFrom" => $campDurationWeekdaysFrom,
    "weekDaysTo" => $campDurationWeekdaysTo,
    "image" => $campMainImage,
    'meals' => $campMeals,
    'conditioner' => ($campСonditioner === 'on') ? 1 : 0,
    'freeParking' => ($campFreeParking === 'on') ? 1 : 0,
    'freeWiFi' => ($campFreeWiFi === 'on') ? 1 : 0,
);

if($edit === true){ // Если редактируем
    $pageBlock1 = $modx->getObject('pageBlock',[
        'resource_id' => $resourceId,
        'constructor_id' => 3,
        'chunk' => 'hero'
    ]);
    $pageBlock1Values = $pageBlock1->get('values');
    $pageBlock1ValuesArr = json_decode($pageBlock1Values, JSON_UNESCAPED_UNICODE);
    $mainImage = $pageBlock1ValuesArr['image'];

    // Если поле с изображением пустое, а в БД уже есть
    if($mainImage && empty($campMainImage)){
        $heroArray['image'] = $mainImage;
    }

} else {
    $pageBlock1 = $modx->newObject('pageBlock');
    $pageBlock1->set('resource_id', $resourceId); // ID ресурса
    $pageBlock1->set('constructor_id', 3); // ID блока в конструкторе блоков
    $pageBlock1->set('chunk', 'hero'); // Название чанка в конструкторе блока
    $pageBlock1->set('rank', '1'); // Порядок сортировки
}

$pageBlock1->set('values', json_encode($heroArray, JSON_UNESCAPED_UNICODE)); // Values
$pageBlock1->save();

// Обработка возраста
$agesArr = [];
for ($i = $campAgeFrom; $i <= $campAgeTo; $i++) {
    $agesArr[] = $i;
}
$agesTv = implode('||', $agesArr);
$resource->setTVValue('camp_ages', $agesTv); // Заметки
$resource->setTVValue('campNumberChildrenGroup', $campNumberChildrenInGroup); // Количество детей в группе
$resource->setTVValue('camp_date_from', changeDateFormat($campDurationFrom)); // Продолжительность лагеря - дата начала
$resource->setTVValue('camp_date_to', changeDateFormat($campDurationTo)); // Продолжительность лагеря - дата окончания
$resource->setTVValue('camp_subjects', implode('||',$campSubjectsArr));// Тематики лагеря
$resource->save();

// Program - Программа --------------------------------
$programs = array();
$campProgramsArrEmpty = false;
if(count($campProgramDescriptionArr) === 1 && empty($campProgramDescriptionArr[0])){
    $campProgramsArrEmpty = true;
}


//if($edit === true){ // Если редактируем
//    $pageBlockProgram = $modx->getObject('pageBlock',[
//        'resource_id' => $resourceId,
//        'constructor_id' => 3,
//        'chunk' => 'program'
//    ]);
//    $pageBlockProgramValues = $pageBlockProgram->get('values');
//    $pageBlockProgramValuesArr = json_decode($pageBlockProgramValues, JSON_UNESCAPED_UNICODE);
//    $mainImage = $pageBlock1ValuesArr['image'];
//
//    // Если поле с изображением пустое, а в БД уже есть
//    if($mainImage && empty($campMainImage)){
//        $heroArray['image'] = $mainImage;
//    }
//
//}

$modx->log(1,'campProgramsArrEmpty'.$campProgramsArrEmpty);

if($campProgramsArrEmpty !== true){
    for ($i = 0; $i < count($campProgramDescriptionArr); $i++) {
        $programs[] = array(
            "image" => getImageProgram($arrProgramImages,$i),
            "description" => $campProgramDescriptionArr[$i],
            "start_date" => changeDateFormat($campProgramDateStartArr[$i]),
            "end_date" => changeDateFormat($campProgramDateEndRowArr[$i])
        );
    }

    $programArray = array(
        "description" => $campProgramDescription,
        "programs" => $programs,
    );

    pbTableSet($modx, $edit, $resourceId,4,'program',1,13, $programArray, $programs);
}

// Groups - Группы --------------------------------
// Добавляем только чанк, логика работы в migx и чанке
pbTableSet($modx, $edit, $resourceId, 12, 'groups');

// Visit options - Варианты посещений --------------------------------
$visitOptions = array();
$visitOptionsPrices = array();
$visitOptionsTv = array();

if($campTypeVisitFullday === 'on'){ // Чекбокс "Полный день"
    $visitOptionsTv[] = 'fullday';
    $visitOptionsPrices['fullday'] = dataFilling($campVisitPriceArrFullday, $campVisitNewPriceArrFullday, $campVisitDateArrFullday);
    $visitOptions['fullday'] = array(
        'period' => 'fullday',
        'timeFrom' => $campVisitTimeFromFullday,
        'timeTo' => $campVisitTimeToFullday,
        'description' => $campVisitDescriptionFullday,
        'prices' => $visitOptionsPrices['fullday']
    );

}

if($campTypeVisitBeforeLunch === 'on'){// Чекбокс "До обеда"
    $visitOptionsTv[] = 'beforeLunch';
    $visitOptionsPrices['beforeLunch'] = dataFilling($campVisitPriceArrBeforeLunch, $campVisitNewPriceArrBeforeLunch, $campVisitDateArrBeforeLunch);
    $visitOptions['beforeLunch'] = array(
        'period' => 'beforeLunch',
        'timeFrom' => $campVisitTimeFromBeforeLunch,
        'timeTo' => $campVisitTimeToBeforeLunch,
        'description' => $campVisitDescriptionBeforeLunch,
        'prices' => $visitOptionsPrices['beforeLunch']
    );
}

if($campTypeVisitAfterLunch === 'on'){// Чекбокс "После обеда"
    $visitOptionsTv[] = 'afterLunch';
    $visitOptionsPrices['afterLunch'] = dataFilling($campVisitPriceArrAfterLunch, $campVisitNewPriceArrAfterLunch, $campVisitDateArrAfterLunch);
    $visitOptions['afterLunch'] = array(
        'period' => 'afterLunch',
        'timeFrom' => $campVisitTimeFromAfterLunch,
        'timeTo' => $campVisitTimeToAfterLunch,
        'description' => $campVisitDescriptionAfterLunch,
        'prices' => $visitOptionsPrices['afterLunch']
    );
}

if($campTypeVisitOneday === 'on'){// Чекбокс "Один день"
    $visitOptionsTv[] = 'oneday';
    $visitOptionsPrices['oneday'] = dataFilling($campVisitPriceArrOneday, $campVisitNewPriceArrOneday, $campVisitDateArrOneday);
    $visitOptions['oneday'] = array(
        'period' => 'oneday',
        'timeFrom' => $campVisitTimeFromOneday,
        'timeTo' => $campVisitTimeToOneday,
        'description' => $campVisitDescriptionOneday,
        'prices' => $visitOptionsPrices['oneday']
    );
}

$visitOptionsArray = array(
    "table" => $visitOptions
);

// Заполняем TV camp_class_time для поиска по "Время занятий"
if(!empty($visitOptionsTv)){
    $visitOptionsTvString = implode('||',$visitOptionsTv);
} else {
    $visitOptionsTvString = '';
}
$resource->setTVValue('camp_class_time', $visitOptionsTvString);
$resource->save();

pbTableSet($modx, $edit, $resourceId,10,'visitOptions',7,28, $visitOptionsArray, $visitOptions);

// pricesAndDiscounts - Скидки
$discounts = array();
$campDiscountsArrEmpty = false;

if(count($campDiscountDescriptionArr) === 1 && empty($campDiscountDescriptionArr[0])){
    $campDiscountsArrEmpty = true;
}

if($campDiscountsArrEmpty !== true){

    for ($i = 0; $i < count($campDiscountDescriptionArr); $i++) {
        $discounts[] = array(
            "description" => $campDiscountDescriptionArr[$i],
            "price" => $campDiscountPriceArr[$i]
        );
    }

}

$discountsArray = array(
    "staffDiscountPrice" => $campDiscountStaff,
    "usersDiscountPrice" => $campDiscountUsers,
    "description" => $campDiscountDescriptionMain,
    "discounts" => $discounts
);

pbTableSet($modx, $edit, $resourceId, 11, 'pricesAndDiscounts',6,29, $discountsArray, $discounts);

// Продолжительность лагеря

// Advantages - Наши преимущества --------------------------------
$advantages = array();
$campAdvantagesArrEmpty = false;

if(count($campAdvantageTitleArr) === 1 && empty($campAdvantageTitleArr[0])){
    $campAdvantagesArrEmpty = true;
}

if($campAdvantagesArrEmpty !== true){

    for ($i = 0; $i < count($campAdvantageTitleArr); $i++) {
        $advantages[] = array(
            "title" => $campAdvantageTitleArr[$i],
            "description" => $campAdvantageDescriptionArr[$i]
        );
    }

    $advantagesArray = array(
        "advantages" => $advantages
    );

    pbTableSet($modx, $edit, $resourceId,5,'advantages',2,16, $advantagesArray, $advantages);

}

// Schedule - Распорядок дня (расписание) --------------------------------
$campScheduleTitleArr = $_POST[$prefixForm . 'schedule_title']; // Заголовок строки расписание
$campScheduleDescriptionArr = $_POST[$prefixForm . 'schedule_description']; // Описание строки расписание


$schedule = array();
$campScheduleArrEmpty = false;

if(count($campScheduleTitleArr) === 1 && empty($campScheduleTitleArr[0])){
    $campScheduleArrEmpty = true;
}

if($campScheduleArrEmpty !== true){

    for ($i = 0; $i < count($campScheduleTitleArr); $i++) {
        $schedule[] = array(
            "title" => $campScheduleTitleArr[$i],
            "description" => $campScheduleDescriptionArr[$i]
        );
    }

    $scheduleArray = array(
        "schedule" => $schedule
    );

    pbTableSet($modx, $edit, $resourceId,9,'schedule',5,27, $scheduleArray, $schedule);

}

// Gallery - Фотогалерея --------------------------------
// Только создаем pageBlock gallery, вся логика внутри чанка chunks/camp/city/gallery.tpl для UserFiles
$galleryArray = array();

$pageBlock2 = $modx->getObject('pageBlock',[
    'resource_id' => $resourceId,
    'constructor_id' => 8,
    'chunk' => 'gallery'
]);

if(!is_object($pageBlock2)){
    $pageBlock2 = $modx->newObject('pageBlock');
    $pageBlock2->set('resource_id', $resourceId); // ID ресурса
    $pageBlock2->set('constructor_id', 8); // ID блока в конструкторе блоков
    $pageBlock2->set('chunk', 'gallery'); // Название чанка в конструкторе блока
    $pageBlock2->set('rank', 3 ); // Порядок сортировки
}

$pageBlock2->set('values', json_encode($galleryArray, JSON_UNESCAPED_UNICODE)); // Values
$pageBlock2->save();

// Reviews - Отзывы --------------------------------
$reviews = array();
$campReviewsArrEmpty = false;

if(count($campReviewNameArr) === 1 && empty($campReviewNameArr[0])){
    $campReviewsArrEmpty = true;
}

if($campReviewsArrEmpty !== true){

    for ($i = 0; $i < count($campReviewNameArr); $i++) {
        $reviews[] = array(
            "name" => $campReviewNameArr[$i],
            "text" => $campReviewTextArr[$i]
        );
    }

    $reviewsArray = array(
        "reviews" => $reviews
    );

    pbTableSet($modx, $edit, $resourceId, 6, 'reviews', 3, 21, $reviewsArray, $reviews);

}

// // FAQ - Часто задаваемые вопросы --------------------------------
$faq = array();
$campFaqArrEmpty = false;

if(count($campFaqQuestionArr) === 1 && empty($campFaqQuestionArr[0])){
    $campFaqArrEmpty = true;
}

if($campFaqArrEmpty !== true){

    for ($i = 0; $i < count($campFaqQuestionArr); $i++) {
        $faq[] = array(
            "question" => $campFaqQuestionArr[$i],
            "answer" => $campFaqAnswerArr[$i]
        );
    }

    $faqArray = array(
        "faq" => $faq
    );

    pbTableSet($modx, $edit, $resourceId, 7, 'faq', 4, 24, $faqArray, $faq);

}

// Чистим кэш ресурса
$modx->cacheManager->delete($resourceId, array(xPDO::OPT_CACHE_KEY => 'resource/web/resources'));
// Генерируем карту ресурсов (необходима для получения url)
$results = $modx->cacheManager->generateContext($modx->context->key);
$modx->context->resourceMap = $results['resourceMap'];
$modx->context->aliasMap = $results['aliasMap'];

$id_lk_parent = (int) $modx->getOption('lk_camp_list_id'); // ID раздела "Лагерь" в ЛК школы -- системные настройки
$url = $modx->makeUrl($id_lk_parent,'', '', 'full'); // Личный кабинет, страница со списком лагерей
return $FetchIt->success('Успешно', array(
    'link' => $url,
));