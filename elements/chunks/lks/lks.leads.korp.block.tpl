{set $tender_id = $id}
{set $status_id = $_modx->runSnippet('tenderStatus', ['tender_id' => $id, 'school_id' => $_modx->user.id])}


{if ($status_id in [2,0]) || ( ($status_id not in [1,3]) && ($date_stop < $.php.time()) )}
{else}
{switch $status_id}
    {case 1}
        {set $status = "Заявка принята Вами"}
        {set $color = "#EC2B08"}
    {case 2}
        {set $status = "Заявка отклонена Вами"}
        {set $color = "red"}
    {case 3}
        {set $status = "Заключение договора"}
        {set $color = "green"}
    {case 4}
        {set $status = "Отклонено компанией"}
        {set $color = "black"}
    {case 0}
        {set $status = "Заявка удалена Вами"}
        {set $color = "red"}
    {default}
        {set $status = "Заявка получена Вами"}
        {set $color = "black"}
{/switch}
{if $status_id != 0}

                <div class="cgcourse rollup-box">
                    <div class="cghead leads__header lk__wraplr section__lr">
                        <div class="cgtitle">
                            Тендер №&nbsp;{$id}&nbsp;{$cat_id | resource: 'pagetitle'} - создан {$date_create|dateAgo:'{"dateNow":0, "dateFormat":"d F Y"}'}
                        </div>


                        <a href="#" class="link__more rollup-toggle">
                            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
                        </a>
                        
                        
                        
                    </div>
                    <div class="rollup-tab">
                        
<div class="leads__block">
    {*<div class="leads__header lk__wraplr section__lr">{$cat_id | resource: 'pagetitle'} / {$sub_cat_id | resource: 'pagetitle'}</div>*}
    <div class="leads__item lk__wraplr section__lr">
        <div class="leads__item-head">
            <div class="leads__item-date">{$date_create | date_format:'%d.%m.%Y'?:'не указан'}</div>
                <div class="leads__item-4cols">
                    <div class="leads__item-col">
                        <div class="leads__item-prop">
                            <div class="leads__item-prop__label">Наименование организации</div>
                            {if ($status_id in [1,3,4]) && $query['show_title']} 
                                {set $fullname = $user_id | user : 'fullname'}
                                {$fullname?:'-'}
                            {else}
                                XXXXXX
                            {/if}
                        </div>
                    </div>
                    {*<div class="leads__item-col">
                        <div class="leads__item-prop">
                            <div class="leads__item-prop__label">Контактное лицо</div>
                            {set $fullname = $user_id | user : 'fullname'}
                            {if $status_id in [1,3,4]}                            
                                {$fullname?:'-'}
                            {else}
                                XXXXXX 
                            {/if}
                        </div>
                    </div>*}
                    <div class="leads__item-col">
                        <div class="leads__item-prop">
                            <div class="leads__item-prop__label">Электронная почта для КП</div>
                            {set $email = $user_id | user : 'email'}
                            {if ($status_id in [1,3,4]) && $query['show_email']}                                         
                            {$email?:'-'}
                            {else}
                                XXX@XXXX.XX
                            {/if}
                        </div>
                    </div>                                    
                    <div class="leads__item-col">
                        <div class="leads__item-prop">
                            <div class="leads__item-prop__label">Телефон</div>
                            {set $phone = $user_id | user : 'mobilephone'}
                            {if ($status_id in [1,3,4]) && $query['show_phone']}                                         
                                {$phone?:'-'}
                            {else}
                                +375(XX)ХХХХХХХ
                            {/if}
                        </div>
                    </div>
                </div>
            </div><!--leads__item-head-->

            <div class="leads__item-4cols">
                <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Категория</div>
                        {$cat_id | resource: 'pagetitle'}
                    </div>
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Подкатегория</div>
                        {$sub_cat_id | resource: 'pagetitle'}
                    </div>
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Форма</div>
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
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Формат</div>
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
                <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Время занятий</div>
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
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Количество человек </div>
                        {if $query['format_of_study'] == 'individual'}1{else}{$query['num_people_in_group']?:'-'}{/if}
                    </div>
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Условия оплаты</div>
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
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Дата окончания приема КП</div>
                        {$date_stop|date_format:'%e %b, %Y'?:'не указан'}
                    </div>
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Дедлайн по принятию решения</div>
                        {$date_end|date_format:'%e %b, %Y'?:'не указан'}
                    </div>
                </div>
                <div class="leads__item-col leads__item-col--w2">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Детали курса</div>
                        {$detail?:'-'}
                    </div>                    
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Сопроводительное письмо</div>
                        {$message?:'-'}
                    </div>
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Прикрепленные файлы</div>
                        {if $status_id in [1,3,4]}
                            {'!pdoResources' | snippet: [
                                'limit'=>'1000',
                                'showLog'=>'0',
                                'class'=>'UserFile',
                                'loadModels'=>'UserFiles',
                                'list'=>'tender',
                                'sortby'=>'rank',
                                'sortdir'=>'ASC',
                                'tpl'=>'@INLINE <a href="{$url}" target="_blank" class="download" download>{$name}</a><br>',
                                'where' => [
                                    'UserFile.class' => 'modDocument',
                                    'UserFile.parent' => $tender_id
                                ]
                            ]?:'<span>Не найдено</span>'}              
                        {else}
                            XXXXXXX
                        {/if}
                    </div>
                    
                    {'!Tender' | snippet :[]}                                
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Статус</div>
                        <b style={"color:"~$color}>{$status}</b>
                    </div>
                    
                    <div class="leads__item-prop leads__item-buttons">
                        {if $status_id == 4}
                            <a class="btn btn--more" data-open-popup="tender_deny"><b>{$status}</b></a>
                        {else}
                        
                            {set $checkDirection = '!checkSchoolsDirection' | snippet: [
                                    'user_id'=> $_modx->user.id,
                                    'direction'=>$cat_id
                            ]}
                            
                            
                            {set $isOK = ($user_id | ismember : ['Corporate'])}
                            
                            {if $isOK}
                            
                                {if !$checkDirection}
                                    <button class="btn" data-open-popup="tender_no_set_direction">Принять</button>
                                {else}
                                    {if $status_id != 1 && $status_id != 3}
                                        <button class="btn accept-tender" data-id="{$tender_id}" data-user="{$_modx->user.id}" data-status="1">Принять</button>                            
                                    {/if}
                                {/if}
                            
                            
                                {if $status_id != 3 && $status_id != 2}
                                <button class="btn btn--bdpurple reject-tender" data-id="{$tender_id}" data-user="{$_modx->user.id}" data-status="2">Отклонить</button>                            
                                {/if}


                                {if $status_id in [2,4,-1]}
                                    <button style="width:60px;" class="btn btn--remove btn--white delete-tender" data-id="{$tender_id}" data-user="{$_modx->user.id}" data-status="0">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>                                   
                                    </button>
                                {/if}

                            {/if}
                        
                        {/if}
                        
                    </div>
                    

                    
                    
                </div>   
            </div>
            {if $status_id in [1,3]}                        
                {include 'tender.message.tpl' id=$id user=$_modx->user.id}
            {/if}
        </div>
        
</div>


</div>
</div>
{/if}

{/if}