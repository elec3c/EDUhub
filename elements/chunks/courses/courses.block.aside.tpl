{set $page_id = $page_id ?: $res.id}

{set $price_course  = $page_id | resource: 'price_course'}
{set $price_course = $_modx->runSnippet('!formatMoney', ['number'=>$price_course])}
{set $price_course_month  = $page_id | resource: 'price_course_month'}
{set $price_course_month = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_month])}
{set $price_lesson  = $page_id | resource: 'price_lesson'}
{set $price_lesson = $_modx->runSnippet('!formatMoney', ['number'=>$price_lesson])}

{set $course_owner  = $page_id | resource: 'course_owner'}
{set $course_duration  = $.php.intval($page_id | resource: 'course_duration')}
{set $lesson_duration  = $.php.intval($page_id | resource: 'lesson_duration')}

{set $num_months_of_study =  $.php.intval($page_id | resource: 'num_months_of_study')}
{set $num_lesson_per_week =  $.php.intval($page_id | resource: 'num_lesson_per_week')}
{set $num_people_in_group  = $.php.intval($page_id | resource: 'num_people_in_group')}

{set $phone1 = $_modx->user.id | user:'mobilephone'}
{set $phone2 = $_modx->user.id | user:'phone'}
{set $confirm_phone = $phone1 == $phone2 ? $phone2 :0}

{* {set $confirm_phone = $_modx->user.id | user:'confirm_phone'?:0} *}
{set $sale  = $.php.intval($page_id | resource: 'sale')}        
{set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id'     => $page_id])}


<div class="courses__block-aside">
    <div class="courses__block-props">
        <div class="courses__block-props__row">
            

            {if $num_months_of_study}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$num_months_of_study}</div>
                    {$num_months_of_study | declension : 'месяц|месяцев|месяцев'}
                </div>
            {else}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb"> - </div>
                    месяцев
                </div>                
            {/if}
            

            {if $price_course}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$price_course}</div>
                    стоимость курса
                </div>
            {else}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb"> - руб.</div>
                    стоимость курса
                </div>                
            {/if}            
            
            
        </div>
        
        <div class="courses__block-props__row">
                        
        
            {if $price_course_month}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$price_course_month}</div>
                    в месяц
                </div>
            {else}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb"> - руб.</div>
                    в месяц
                </div>                
            {/if}
            

            {if $price_lesson}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$price_lesson}</div>
                    стоимость занятия
                </div>
            {else}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb"> - руб.</div>
                    стоимость занятия
                </div>
            {/if}            
        
    
        </div>
        
        <div class="courses__block-props__row">
            {if $num_lesson_per_week}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$num_lesson_per_week}</div>
                    {$num_lesson_per_week | declension : 'занятие|занятия|занятий'} <br> в неделю
                </div>
            {/if}
        
            {if $lesson_duration}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$lesson_duration} мин.</div>
                    длительность занятия 
                </div>
            {/if}            

        </div>
        {*<div class="courses__block-props__row">
            {if $num_people_in_group}
                <div class="courses__block-props__item">
                    {if $num_people_in_group != 1}
                    <div class="courses__block-props__numb">{$num_people_in_group}</div>
                    {$num_people_in_group | declension : 'человек|человек|человек'} <br> в группе
                    {else}
                    <div class="courses__block-props__numb">{$num_people_in_group}</div>
                    индивид.
                    {/if}
                </div>
            {/if}
            {if $lesson_duration}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$lesson_duration} мин.</div>
                    длительность занятия
                </div>
            {/if}
        </div>*}
    </div>
    
    {if $page_id | resource: 'parent' != 61}
    <div class="courses__block-buttons btns_cfs">

        {if $_modx->resource.template != 9}
        {*'!addComparison' | snippet: [
            'list_id' => 174,
            'list' => 'courses',
            'id' => $page_id,
            'tpl' => 'compare.add.tpl',
            'minItems' => '2',
            'maxItems' => '6'
        ]*}
        {/if}
        
        {set $isOK = ($_modx->user.id | ismember : ['Administrator','Users'])}            
        
        {if $page_id | resource: 'template' in [7,8,9]}
            {if ('' | isloggedin : 'web')}
                {if $isOK && ($promote['lead'] > 0) && $confirm_phone}
                    {set $cnt = $_modx->runSnippet('!callCheckUID', [
                                                       'user_id'      => $_modx->user.id , 
                                                       'group_id'     => $page_id,
                                                       'school_id'    => $course_owner
                    ])}
                    {if $cnt == 0}
                        {set $school_id = $page_id | resource:'course_owner'}
                        <button class="btn w-all" data-open-popup="call_to_school_reg{$id}" data-schoolid="{$school_id}" data-groupid="{$page_id}">Обратный звонок</button>
                        {include 'file:chunks/modals/call_to_school_reg.tpl' groupid=$page_id schoolid=$school_id}
                    {else}
                        <button class="btn w-all btn--more">
                            <span>Звонок заказан</a>
                        </button>
                    {/if}
                {else}
                    {if (!$confirm_phone) && ($promote['lead'] > 0)}<button class="btn w-all" data-open-popup="confirm_phone_msg">Обратный звонок</button>{/if}
                {/if}
            {else}
                <button class="btn w-all " data-open-popup="call_to_school" data-groupid="{$page_id}">Обратный звонок</button>
            {/if}
        {/if}
        
        {include 'file:chunks/favorites/favorites.like.tpl' page_id=$page_id type_name='courses'}
        
        {if $sale > 0}
            {set $btnSale = 'Получить скидку'}
        {else}
            {set $btnSale = 'Забронировать место'}
        {/if}
        
        {if ('' | isloggedin : 'web')}
            {if ($isOK) && ($promote['lead'] > 0) && $confirm_phone} {*('!checkBudget' | snippet : ['page_id'=>$page_id]) &&*}
                {'!promocode' | snippet :[]}
                <button class="btn btn--bdpurple add-promocode" data-id="{$page_id}">{$btnSale}</button>
            {else}
                {if (!$confirm_phone) && ($promote['lead'] > 0)}<button class="btn btn--bdpurple" data-open-popup="confirm_phone_msg">{$btnSale}</button>{/if}
            {/if}
        {else}
            <button class="btn btn--bdpurple" data-open-popup="auth_sale">{$btnSale}</button>
        {/if}
    </div>
    {/if}
</div>