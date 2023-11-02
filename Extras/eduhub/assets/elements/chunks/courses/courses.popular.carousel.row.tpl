{set $thread = $_modx->resource.course_template?'thread-'~$_modx->resource.course_template:'resource-'~$id}
{set $page_id = $page_id ?: $res.id}



<div class="swiper-slide">
    <div class="courses__item">
        <div class="courses__item-photo">{include 'file:chunks/courses/courses.block.photo.tpl' user_id=$_pls['tv.course_owner']}</div>
        <h3 class="courses__item-title">{$_pls['tv.course_group_title']?:$pagetitle}</h3>
        
        {if $_pls['tv.course_owner']}
            {set $address = $_pls['tv.course_owner'] | user:'city'}
            {set $website = $_pls['tv.course_owner'] | user:'website'}
        {/if}        
        
        <ul class="courses__item-list">
            {if $address}
            <li class="courses__item-list__flex"><div class="courses__item-list__icon"><img src="assets/images/icons/location.svg" alt="{$address}"></div>{$address}</li>
            {/if}
            {if $website}
            <li><a href="{$website}" class="courses__item-list__flex">
                    <div class="courses__item-list__icon"><img src="assets/images/icons/global.svg" alt="{$website}"></div>
                    {$website}
                </a>    
            </li>
            {/if}
        </ul>
        
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
        
        {if $_pls['tv.price_lesson']}     
        <div class="courses__item-price">{$_pls['tv.price_lesson']} руб./занятие</div>
        {/if}
        <div class="courses__item-rev">
            {'!ecThreadRating'|snippet: ['thread' => $thread, 'tpl'=>'@FILE chunks/reviews/reviews.star.rating.tpl']}
            <span class="nowrap">{'!ecMessagesCount'|snippet: ['thread' => $thread]} отзывов</span>
        </div>
        <div class="courses__item-button">
            <a href="{$uri}" class="btn w-all">Подробнее</a>
        </div>
    </div>    <!--courses__item-->
</div>