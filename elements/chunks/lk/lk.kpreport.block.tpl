<div class="cgcourse rollup-box">
    <div class="cghead leads__header lk__wraplr section__lr">
        <div class="cgtitle">
            <a href="{827 | url}?tender_id={$id}">Тендер №&nbsp;{$id}&nbsp;{$query['title']?:'<название>'} / {$cat_id | resource: 'pagetitle'}</a> - создан {$date_create|dateAgo:'{"dateNow":0, "dateFormat":"d F Y"}'}
        </div>
            <a href="#" class="link__more rollup-toggle">
            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
        </a>
    </div>
    <div class="rollup-tab">
        
        <div class="kpreport__block">
    <div class="kpreport__item lk__wraplr section__lr">
        <div class="kpreport__item-name">{$cat_id | resource: 'pagetitle'} / {$sub_cat_id | resource: 'pagetitle'}</div>
        <div class="kpreport__item-head">
            <div class="kpreport__item-col">
                <div class="kpreport__item-prop">
                    <div class="kpreport__item-prop__label">Курсы</div>
                    {$cat_id | resource: 'pagetitle'}
                </div>
                <div class="kpreport__item-prop">
                    <div class="kpreport__item-prop__label">Какой курс</div>
                    {$sub_cat_id | resource: 'pagetitle'}
                </div>
                <div class="kpreport__item-prop">
                    <div class="kpreport__item-prop__label">Форма обучения</div>
                    {switch  $query['form_of_study']}
                        {case 'online'}
                            Онлайн
                        {case 'offline'}
                            В офисе школы
                        {case 'office'}
                            В нашем офисе с выездом преподавателя
                        {default}
                            -
                    {/switch}                    
                </div>
                <div class="kpreport__item-prop">
                    <div class="kpreport__item-prop__label">Формат обучения</div>
                    {switch  $query['format_of_study']}
                        {case 'group'}
                            Групповые
                        {case 'individual'}
                            Индивидуальные
                        {default}
                            -
                    {/switch}
                </div>
            </div>
            <div class="kpreport__item-col">
                <div class="kpreport__item-prop">
                    <div class="kpreport__item-prop__label">Время занятий</div>
                    {switch  $query['time']}
                        {case 'weekdays_work_time'}
                            в будние в рабочее время
                        {case 'weekdays_not_work_time'}
                            в будние в нерабочее время
                        {case 'weekend'}
                            выходные
                        {default}
                            -
                    {/switch}
                </div>                
                <div class="kpreport__item-prop">
                    <div class="kpreport__item-prop__label">Количество обучающихся</div>
                        {$query['num_people_in_group']}
                    </div>
                    <div class="kpreport__item-prop">
                        <div class="kpreport__item-prop__label">Форма оплаты</div>
                        {switch  $query['form_of_payment']}
                            {case 'prepayment'}
                                Предоплата
                            {case 'partial_prepayment'}
                                Частичная предоплата
                            {case 'post_payment'}
                                Оплата только по факту оказания услуг
                            {case 'employee_reimbursement'}
                                Возмещение работникам затрат на обучение
                            {default}
                                -
                        {/switch}
                    </div>
                </div>
                <div class="kpreport__item-col">
                    <div class="kpreport__item-prop">
                        <div class="kpreport__item-prop__label">Дата запроса</div>
                        {$date_create|date_format:'%e %b, %Y'?:'-'}
                    </div>
                    <div class="kpreport__item-prop">
                        <div class="kpreport__item-prop__label">Дата окончания приема заявок</div>
                        {$date_stop|date_format:'%e %b, %Y'?:'-'}
                    </div>
                    <div class="kpreport__item-prop">
                        <div class="kpreport__item-prop__label">Дедлайн по выбору школы</div>
                        {$date_end|date_format:'%e %b, %Y'?:'-'}
                    </div>

                    <div class="kpreport__item-prop">
                        <a href="{827 | url}?tender_id={$id}" class="btn btn--purple">Все учебные центры</a>
                        <a href="{804 | url}?edit={$id}" class="btn">Редактировать</a>
                        {*<a href="{804 | url}?delete={$id}" class="btn btn--red">Удалить</a>*}
                    </div>
                </div> 
                
                <div class="kpreport__item-col">
                    <div class="kpreport__item-prop">
                        <div class="kpreport__item-prop__label">Детали курса</div>
                        {$detail?:'-'}
                    </div>
                </div>
                
                
            </div><!--kpreport__item-head-->

                        <div class="kpreport__item-row kpreport__item-row--head">
                            <div class="kpreport__item-cell kpreport__item-label">Учебные центры</div>
                            <div class="kpreport__item-cell kpreport__item-label">Статус</div>
                            {*<div class="kpreport__item-cell kpreport__item-cell--download kpreport__item-label">КП (вложенные файлы)</div>*}
                            <div class="kpreport__item-cell kpreport__item-action"></div>
                        </div>
                        
                        
                        {'!Tender' | snippet :[]}
                        
                        
                        {'!pdoPage' | snippet :[
                            'ajaxMode'=>'default',
                            'idx'=>5,
                            'class'=>'EduTenderResponse',
                            'tvPrefix'=>'',
                            'processTVs'=>'1',
                            'limit'=>'0',                            
                            'loadModels'=>'tender',
                            'sortby'=>[
                                'EduTenderResponse.id'=>'DESC',
                            ],
                            'date_stop'=>$date_stop,
                            'date_end'=>$date_end,
                            'where'=>[
                            
                                'EduTenderResponse.tender_id' => $id
                                
                            ],  
                            
                            'tpl'=>'@INLINE
                            
                            {set $isOK = ($school_id | ismember : ["Organization"])}
                            {if $isOK}
                                        
                                        {switch $status_id}
                                            {case 1}
                                                {set $status = "Заявка принята школой"}
                                                {set $color = "#EC2B08"}
                                            {case 2}
                                                {set $status = "Заявка отклонена школой"}
                                                {set $color = "red"}
                                            {case 3}
                                                {set $status = "Заключение договора"}
                                                {set $color = "green"}
                                            {case 4}
                                                {set $status = "Заявка отклонена Вами"}
                                                {set $color = "black"}
                                            {case 0}
                                                {set $status = "Заявка удалена Вами"}
                                                {set $color = "red"}                                            
                                            {default}
                                                {set $status = "Заявка получена школой"}
                                                {set $color = "black"}          
                                                -
                                        {/switch}                            
                            
                                {set $userPageID = \'getSchoolsPageID\' | snippet :[\'schools_id\' => $school_id]}
                                <br><br>
                                <div class="kpreport__item-row">
                                    <div class="kpreport__item-cell">
                                        <div class="kpreport__item-label show-desktop">Учебный центр</div>
                                        {set $fullname = $school_id | user : "fullname"?:"-"}
                                        {if ($fullname!="-") && ($userPageID > 0)}
                                            {include "file:chunks/users/user.photo.tpl" user_id=$school_id}
                                            <a href="{$userPageID | url}">{$fullname}</a>
                                        {else}
                                            {$fullname}
                                        {/if}
                                    </div>
                                    <div class="kpreport__item-cell">
                                        <div class="kpreport__item-label show-desktop">Статус</div>
                                        <b style={"color:"~$color}>{$status}</b>
                                    </div>
                                    
                                    <!--<div class="kpreport__item-cell kpreport__item-cell--download">
                                        <div class="kpreport__item-label show-desktop">КП (вложенные файлы)</div>
                                        - 
                                    </div>-->
                                    <div class="kpreport__item-cell kpreport__item-action">
                                        {if ($status_id == 1) && ($date_stop < $.php.time())}
                                            <buttons class="btn btn--purple accept-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="3">Заключить договор</buttons>
                                        {elseif ($status_id == 1) && ($date_stop >= $.php.time())}
                                            {*<buttons class="btn btn--purple" data-open-popup="tender_wait_date_stop">Заключить договор</buttons>*}
                                            <buttons class="btn btn--purple accept-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="3">Заключить договор</buttons>
                                        {elseif ($status_id != 3) && ($date_end < $.php.time())}
                                            <a class="btn btn--red">Время по принятию решения истекло</a>
                                        {/if}                                          
                                        
                                        {if $status_id != 0 && $status_id != 4 && $status_id != 2}
                                            {if $status_id == 3}
                                                {*<a class="btn btn--more delete-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="1">Отказаться от договора</a>*}
                                            {else}
                                                <button class="btn btn--red kpreport-refuse reject-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="4">Отказать</button>
                                            {/if}
                                            <button class="btn btn--remove btn--white delete-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="0">
                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>                                   
                                            </button>
                                        {else}
                                            {if $status_id != 2 && $status_id != 4 && $status_id != 0}
                                            <a class="btn btn--more delete-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="1">Восстановить</a>
                                            {/if}
                                        {/if}
                                    </div>
                                </div>
                                
                                {if $status_id in [1,3]}                        
                                    {include "tender.message.tpl" id=$tender_id user=$school_id}
                                {/if}
                                
                        {/if}
                                
                            '
                        ]?:'<p class="section__intro">Ничего не найдено</p>'}                        
                        

                    </div>
                </div>
                
    </div>
</div>    