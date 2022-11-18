<div class="courses__scool lk__wraplr section__lr">
    <div class="courses__scool-info">
        {set $parent       = ($id | resource:'course_sub_category')}
        {set $course_sub_category_type  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_sub_category_type', 'resourceId' => $id])}
        {set $course_sub_category_title = ($parent | resource:'pagetitle')}
        {set $course_title = ($id | resource:'course_group_title')}
        {set $course_owner = ($id | resource:'course_owner')}
        
        <div class="courses__scool-title"><a href="{$id | url}">{$course_title?:$pagetitle} / {$course_sub_category_title}</a></div>
        {if $parent==44}
        <div class="courses__scool-prop">
            <div class="courses__scool-prop__label">Направление</div>
            {$course_sub_category_type}
        </div>
        {/if}
        <div class="courses__scool-prop">
                <div class="courses__scool-prop__label">Адрес</div>
                {if $_pls['tv.course_address']}
                    {set $addr = $_modx->runSnippet('getListCities', ['name'=>'address', 'uid'=>$_pls['tv.course_address'], 'arr'=>1, 'index'=>1])}
                    {$addr[$_pls['tv.course_address']]?:'<i>пусто</i>'}
                {/if}
        </div>
        
        {if $_pls['tv.data_from']}
            <div class="courses__scool-prop">
                <div class="courses__scool-prop__label">Дата старта</div>
                {$_pls['tv.data_from'] | date_format:"%e %B %Y"}
            </div>
            
            {set $maxLead = $_modx->runSnippet('!promoteCheckMaxLead', ['parent' => $parent, 'uid'=>$id])}
            {if $maxLead > 0}
            <div class="courses__scool-prop">
                <div class="courses__scool-prop__label">Продвижение в категории</div>
                <i><b>Максимальная комиссия</b> в этой категории сейчас <b style="color:red;">{$maxLead} рублей</b> за договор</i>
            </div>            
            {else}
            <div class="courses__scool-prop">
                <div class="courses__scool-prop__label">Продвижение в категории</div>
                <i><b style="color:red;">Никто</b> не продвигает курсы в этой категории</i>
            </div>            
                
            {/if}
            
            
            {set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id' => $id])}
            {if $.php.strtotime($_pls['tv.data_from']) > $.php.time()}
                {if $promote['lead'] > 0}
                <div class="courses__scool-prop">
                    <div class="courses__scool-prop__label">Продвижение</div>
                    <b>Продвигается</b>
                    <i>{$promote['lead']} лидов с комиссией {$promote['commission']} рублей</i>
                </div>
                {else}
                <div class="courses__scool-prop">
                    <div class="courses__scool-prop__label">Продвижение</div>
                    <span style="color:red"><b>Не продвигается</b></span>
                    <i>{$promote['lead']} лидов</i>
                </div>
                {/if}
            {else}
                <div class="courses__scool-prop">
                    <div class="courses__scool-prop__label">Продвижение</div>
                    <b>Начался курс</b>
                </div>
            {/if}
        {/if}
    </div>

    <div class="courses__scool-action">
        
        {set $format_of_study = $id | resource:'format_of_study'}
        {if $course_owner == $_modx->user.id }
            {set $sale = $id | resource:'sale'}
            {if ($.php.intval($sale) > 0)}
            <div class="courses__scool-buttons">
                 {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/promote.form.tpl',
                    'group_id' => $id,
                    'school_id' => $course_owner,
                    'format_of_study'=>$format_of_study,
                    'hooks' => 'promoteBuy',
                    'successMessage' => 'Продвижение прошло успешно!'
                ]}
            </div>
            {else}
                <p>Чтобы продвигать курс, Вы должны указать размер скидки</p>
            {/if}
        {/if}

        <div class="courses__scool-links">
            {if $_pls['tv.res_type'] == 3}
            <span style="color:red;">Создан на основе шаблона</span>
            {elseif $_pls['tv.res_type'] == 1}
            {*<a href="{39 | url}?copy={$id}" class="courses__scool-edit">
                <img src="/assets/images/icons/edit-purple.svg" alt="Copy">
                Копировать
            </a>*}
            {/if}
            <a href="{39 | url}?type=group&edit={$id}" class="courses__scool-edit">
                <img src="/assets/images/icons/edit-purple.svg" alt="Edit">
                Редактировать
            </a>
            <a href="{39 | url}?type=group&delete={$id}" class="courses__scool-remove">
                <img src="/assets/images/icons/remove.svg" alt="Remove">
                Удалить
            </a>
        </div>
    </div>
</div>