<div class="courses__scool lk__wraplr section__lr">
    <div class="courses__scool-info">
        {set $course_title = ($id | resource:'course_group_title')}
        {set $course_owner = ($id | resource:'course_owner')}
        <div class="courses__scool-title"><a href="{$id | url}">{$course_title?:$pagetitle}</a></div>
        <div class="courses__scool-prop">
                <div class="courses__scool-prop__label">Адрес</div>
                {if $_pls['tv.course_address']}
                    {$_pls['tv.course_address']}
                {else}
                    {set $city = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_city', 'resourceId' => $id]))}
                    {set $region = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_region', 'resourceId' => $id]))}
                    {set $metro = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_metro', 'resourceId' => $id]))}
                    {if $city}г. {$city}{/if}{if $region}, район {$region}{/if}{if $metro}, метро {$metro}{/if}
                {/if}
        </div>
        
        {if $_pls['tv.data_from']}
            <div class="courses__scool-prop">
                <div class="courses__scool-prop__label">Дата старта</div>
                {$_pls['tv.data_from'] | date_format:"%e %B %Y"}
            </div>
            
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
        {if $course_owner == $_modx->user.id}
        <div class="courses__scool-buttons">
             {'!AjaxForm'|snippet:[
                'snippet' => 'FormIt',
                'form' => '@FILE chunks/forms/promote.form.tpl',
                'group_id' => $id,
                'school_id' => $course_owner,
                'hooks' => 'promoteBuy',
                'successMessage' => 'Продвижение прошло успешно!'
            ]}
        </div>
        {/if}

        <div class="courses__scool-links">
            {if $_pls['tv.res_type'] == 3}
            <span style="color:red;">Создан на основе шаблона</span>
            {elseif $_pls['tv.res_type'] == 1}
            <a href="{39 | url}?copy={$id}" class="courses__scool-edit">
                <img src="/assets/images/icons/edit-purple.svg" alt="Copy">
                Копировать
            </a>
            {/if}
            <a href="{39 | url}?edit={$id}" class="courses__scool-edit">
                <img src="/assets/images/icons/edit-purple.svg" alt="Edit">
                Редактировать
            </a>
            <a href="{39 | url}?delete={$id}" class="courses__scool-remove">
                <img src="/assets/images/icons/remove.svg" alt="Remove">
                Удалить
            </a>
        </div>
    </div>
</div>