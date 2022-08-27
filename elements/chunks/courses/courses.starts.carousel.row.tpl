{set $page_id = $page_id ?: $res.id}
<div class="swiper-slide">
    <div class="courses__item">
        <div class="courses__item-photo">
            {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$_pls['tv.course_owner']}
        </div>
        <h3 class="courses__item-title">{$_pls['tv.course_group_title']?:$pagetitle}</h3>
        <ul class="courses__item-list">
            <li><span>Длительность:</span>{'!getDateDiff' | snippet: ['date_from' => $_pls['tv.data_from'], 'date_to' => $_pls['tv.data_to'], 'type' => 'month']}</li>
            {if $_pls['tv.form_of_study']}
                <li>
                    <span>Форма обучения:</span>
                    {switch  $_pls['tv.form_of_study']}
                    {case 'online'}
                        Онлайн-обучение
                    {case 'offline'}
                        Офлайн-обучение
                    {default}
                        {$_pls['tv.form_of_study']}-обучение
                    {/switch}
                </li>            
            {/if}
            
        </ul>
        <div class="courses__item-date">Начало курса <br> {$_pls['tv.data_from'] | date_format:"%d.%m.%Y"}</div>
        <div class="courses__item-button">
            <a href="{$uri}" class="btn w-all">Подробнее</a>
        </div>
    </div>    
</div>