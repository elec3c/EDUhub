<div class="cgcourse rollup-box">
    <div class="cghead leads__header lk__wraplr section__lr">
        <div class="cgtitle">Тендер №&nbsp;{$id}&nbsp;{$query['title']} - создан {$date_create|dateAgo:'{"dateNow":0, "dateFormat":"d F Y"}'}</div>
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
                        <div class="kpreport__item-prop__label">Deadline по выбору школы</div>
                        {$date_end|date_format:'%e %b, %Y'?:'-'}
                    </div>

                    {*<div class="kpreport__item-prop">
                        <a href="{804 | url}?edit={$id}" class="btn">Редактировать тендер</a>
                        <a href="{804 | url}?delete={$id}" class="btn btn--red">Удалить тендер</a>
                    </div>*}
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
                            {*<div class="kpreport__item-cell kpreport__item-label">Участвуют в тендере</div>*}
                            <div class="kpreport__item-cell kpreport__item-label">Статус</div>
                            <div class="kpreport__item-cell kpreport__item-action"></div>
                        </div>
                        
                        {*'!Tender' | snippet :[]*}
                        
                        {set $schoolsList = '!getSchoolsListDirection' | snippet :['cat_id'=>$cat_id]}
                        {set $tenderResponse = '!pdoResources' | snippet :[
                            'idx'=>1,
                            'class'=>'EduTenderResponse',
                            'processTVs'=>'1',
                            'limit'=>'0',                            
                            'loadModels'=>'tender',
                            'sortby'=>[
                                'EduTenderResponse.id'=>'DESC',
                            ],
                            'tpl'=>'@INLINE {$school_id},',
                            'where'=>[
                            
                                'EduTenderResponse.tender_id' => $.get.tender_id
                                
                            ]
                        ]}                                                
                        {set $tenderResponseIds = $.php.rtrim($.php.trim($tenderResponse), ',')}
                        {foreach $schoolsList as $pid=>$uid}
                            {include 'file:chunks/lk/lk.kpreport.schools.item.tpl' tenderResponseIds=$tenderResponseIds uid=$uid pid=$pid tender_id=$.get.tender_id}
                        {/foreach}
                    </div>
                </div>
                
    </div>
</div>    