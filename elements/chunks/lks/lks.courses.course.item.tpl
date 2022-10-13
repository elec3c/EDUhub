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
                    {*set $city = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_city', 'resourceId' => $id]))*}
                    {*set $region = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_region', 'resourceId' => $id]))*}
                    {*set $metro = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_metro', 'resourceId' => $id]))*}
                    {set $city_lat = ($id | resource: 'course_city')}
                    {set $region_lat = ($id | resource: 'course_region')}
                    {set $metro_lat = ($id | resource: 'course_metro')}
                        
                    {set $city = $_modx->runSnippet('getListCities', ['name' => 'city', 'arr'=>1])}
                    {set $region = $_modx->runSnippet('getListCities', ['name' => 'districts', 'arr'=>1, 'city'=>'Минск'])}
                    {set $metro = $_modx->runSnippet('getListCities', ['name' => 'metro', 'arr'=>1])}
                        
                    {if $.php.is_array($city)}г. {$city[$city_lat]}{/if}{if $.php.is_array($region)}, район {$region[$region_lat]}{/if}{if $.php.is_array($metro)}, метро {$metro[$metro_lat]}{/if}
                {/if}
        </div>
        {*
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
        *}
    </div>

    <div class="courses__scool-action">
        <p>Чтобы продвигать весь курс, создайте на его основе группу без даты старта</p>
        {*
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
        *}

        <div class="courses__scool-links">
            {if $_pls['tv.res_type'] == 3}
            <span style="color:red;">Создан на основе шаблона</span>
            {elseif $_pls['tv.res_type'] == 1}
            <a href="{39 | url}?type=course&copy={$id}" class="courses__scool-edit">
                <img src="/assets/images/icons/edit-purple.svg" alt="Copy">
                Создать на основе
            </a>
            {/if}
            <a href="{39 | url}?type=course&edit={$id}" class="courses__scool-edit">
                <img src="/assets/images/icons/edit-purple.svg" alt="Edit">
                Редактировать
            </a>
            <a href="{39 | url}?type=course&delete={$id}" class="courses__scool-remove">
                <img src="/assets/images/icons/remove.svg" alt="Remove">
                Удалить
            </a>
        </div>
    </div>
</div>