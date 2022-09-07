{set $page_id = $page_id ?: $res.id}
{set $price_course  = $page_id | resource: 'price_course'}
{set $course_owner  = $page_id | resource: 'course_owner'}
{set $price_lesson  = $page_id | resource: 'price_lesson'}
{set $course_duration  = $page_id | resource: 'course_duration'}
{set $lesson_duration  = $page_id | resource: 'lesson_duration'}
{set $num_lesson_per_week =  $page_id | resource: 'num_lesson_per_week'}
{set $num_people_in_group  = $page_id | resource: 'num_people_in_group'}

<div class="courses__block-aside">
    <div class="courses__block-props">
        <div class="courses__block-props__row">
            {if $course_duration}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$course_duration}</div>
                    месяца
                </div>
            {/if}
            {if $price_course}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$price_course}</div>
                    стоимость курса
                </div>
            {/if}
        </div>
        <div class="courses__block-props__row">
            {if $num_lesson_per_week}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$num_lesson_per_week}</div>
                    занятия <br> в неделю
                </div>
            {/if}
            {if $price_lesson}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$price_lesson}</div>
                    стоимость занятия
                </div>
            {/if}
        </div>
        <div class="courses__block-props__row">
            {if $num_people_in_group}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$num_people_in_group}</div>
                    человек <br> в группе
                </div>
            {/if}
            {if $lesson_duration}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$lesson_duration} мин</div>
                    длительность занятия
                </div>
            {/if}
        </div>
    </div>
    <div class="courses__block-buttons btns_cfs">
        {'!addComparison' | snippet: [
                'list_id' => 174,
                'list' => 'courses',
                'id' => $page_id,
                'tpl' => 'compare.add.tpl',
        ]}
        
        {set $cnt = $_modx->runSnippet('!callCheckUID', [
            'user_id'      => $_modx->user.id , 
            'group_id'     => $page_id,
            'school_id'    => $course_owner
        ])}
        
        {if ('' | isloggedin : 'web')}
            {if !$_modx->user.urlico && !$_modx->user.manager}
                {if $cnt == 0}
                    <button class="btn w-all" data-open-popup="call_to_school_reg" data-groupid="{$page_id}">Заказать звонок</button>
                {/if}
            {/if}
        {else}
            <button class="btn w-all " data-open-popup="call_to_school" data-groupid="{$page_id}">Заказать звонок</button>
        {/if}
        {include 'file:chunks/favorites/favorites.courses.like.tpl' page_id=$page_id}
        {if $_modx->user.id == 0}
            <button class="btn btn--bdpurple" data-open-popup="auth_course">Получить скидку</button>
        {elseif !$_modx->user.urlico and !$_modx->user.manager}
            {if '!checkBudget' | snippet : ['page_id'=>$page_id]}
                <button class="btn btn--bdpurple add-promocode" data-id="{$page_id}">Получить скидку</button>
            {/if}
        {/if}
    </div>
</div>