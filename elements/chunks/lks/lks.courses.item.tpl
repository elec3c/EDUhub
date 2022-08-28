<div class="courses__scool lk__wraplr section__lr">
    <div class="courses__scool-info">
        {set $course_title = ($id | resource:'course_group_title')}
        <div class="courses__scool-title"><a href="{$id | url}">{$course_title?:$pagetitle}</a></div>
        <div class="courses__scool-prop">
                <div class="courses__scool-prop__label">Адрес!!!</div>
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
        {/if}
    </div>

    <div class="courses__scool-action">
        <div class="courses__scool-buttons">
            <select name="commission" class="styler styler--white">
                <option value="40" selected>Комиссия 40 руб.</option>
                <option value="50">Комиссия 50 руб.</option>
                <option value="60">Комиссия 60 руб.</option>
            </select>
            <input type="text" name="budget" class="input input--white" placeholder="Введите бюджет">
            <button class="btn">Продвигать</button>
        </div>

        <div class="courses__scool-links">
            <a href="{39 | url}?copy={$id}" class="courses__scool-edit">
                <img src="/assets/images/icons/edit-purple.svg" alt="Edit">
                Копировать
            </a>
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