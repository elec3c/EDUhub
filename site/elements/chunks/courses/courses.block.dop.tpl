{set $thread = $_modx->resource.course_template?'thread-'~$_modx->resource.course_template:'resource-'~$id}


{set $course_owner  = ($page_id | resource: 'course_owner')}
{set $page_id = $page_id ?: $res.id}


{set $sale  = $page_id | resource: 'sale'}

{set $format_of_study  = $.php.intval($page_id | resource: 'format_of_study')}
{set $num_people_in_group  = $.php.intval($page_id | resource: 'num_people_in_group')}
{set $num_lesson_per_week =  $.php.intval($page_id | resource: 'num_lesson_per_week')}
{set $lesson_duration  = $.php.intval($page_id | resource: 'lesson_duration')}
{set $promote = $_modx->runSnippet('promoteCheckLead', ['group_id'=>$page_id])}
{*set $days = $_modx->runSnippet('outputMultipleTV', ['tvName' => 'days', 'resourceId'=>$page_id, 'arr'=>1])*}


{set $price_course = $page_id | resource:'price_course'}
{set $course_owner = $page_id | resource:'course_owner'}
{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}
{set $isEmployees = (($my_company_id > 0) && ($isCorporate))?1:0}

{set $parent  = $page_id | resource: 'parent'}
{if $parent != 61}
    {set $isCourseTemplate = 0}
    {set $course_template =  $page_id | resource: 'course_template'}
{else}
    {set $isCourseTemplate = 1}
    {set $course_template =  $page_id}
{/if}


{if ($my_company_id > 0) && ($isCorporate) && ($course_template > 0)}
    {set $partnershipDiscount = '!getPartnershipDiscount' | snippet : ['from_user_id' => $course_owner, 'to_user_id' => $my_company_id, 'course_template_id'=>$course_template]}
{/if}


        {if $partnershipDiscount['discount'] > 0}
        
            
            {set $discount          = trim($partnershipDiscount['discount'])}
            {set $discount_unit     = trim($partnershipDiscount['discount_unit'])}
            {set $discount_for_what = trim($partnershipDiscount['discount_for_what'])}
            {set $unit              = trim($partnershipDiscount['unit'])}
            {set $for_what          = trim($partnershipDiscount['for_what'])}
            
            {set $title_sale        = 'Скидка '~$discount~' '~$discount_unit~' '~$discount_for_what~' '}

            {insert 'file:chunks/courses/courses.calc.discount.tpl'}

            
        {elseif ($sale > 0)}
            {set $title_sale = 'Скидка EDUhub '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}   
            {set $isSale = 1}
            {set $discount = $sale}
            
        {else}
            {set $isSale = 0}
            {set $discount = "Нет скидки"}
        {/if}
        

<div class="courses__block-dop">
            
{if ($isSale!= 0) && ($discount != "Нет скидки")}            
    <a class="courses__block-ditem">
        <div class="courses__block-ditem__icon">
            <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M9.71094 18.0875L17.8859 9.91251" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M10.225 11.9625C11.0742 11.9625 11.7625 11.2742 11.7625 10.425C11.7625 9.57589 11.0742 8.88751 10.225 8.88751C9.37588 8.88751 8.6875 9.57589 8.6875 10.425C8.6875 11.2742 9.37588 11.9625 10.225 11.9625Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M18.4008 19.1125C19.2499 19.1125 19.9383 18.4241 19.9383 17.575C19.9383 16.7258 19.2499 16.0375 18.4008 16.0375C17.5516 16.0375 16.8633 16.7258 16.8633 17.575C16.8633 18.4241 17.5516 19.1125 18.4008 19.1125Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M14 26.5C20.9036 26.5 26.5 20.9036 26.5 14C26.5 7.09644 20.9036 1.5 14 1.5C7.09644 1.5 1.5 7.09644 1.5 14C1.5 20.9036 7.09644 26.5 14 26.5Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>                                    
        </div>

        
        {if $discount > 0}
            <div class="courses__block-ditem__t" data-for_what="{$for_what}" data-unit="{$unit}" data-discount="{$calc_discount}">{"Промокод <br>"~floor($discount)~" руб."}</div>
        {else}
            <div class="courses__block-ditem__t" data-for_what="{$for_what}" data-unit="{$unit}" data-discount="{$calc_discount}">{$discount}</div>
        {/if}
        
    </a>
{/if}


    {var $point = '!ecThreadRating'|snippet: ['thread' => $thread, 'tpl'=>'@INLINE {$.php.round($rating_wilson, 1)}']}
    {var $reviews = '!ecMessagesCount'|snippet: ['thread' => $thread]}
        
    
    {if ($point > 0) || ($reviews > 0)}
    <a href="{$_modx->makeUrl($page_id)}" class="courses__block-ditem courses__block-ditem--rate">
        <div class="courses__block-ditem__icon">
            <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M16.1612 3.38749L18.3612 7.78749C18.6612 8.39999 19.4612 8.98749 20.1362 9.09999L24.1237 9.76249C26.6737 10.1875 27.2737 12.0375 25.4362 13.8625L22.3362 16.9625C21.8112 17.4875 21.5237 18.5 21.6862 19.225L22.5737 23.0625C23.2737 26.1 21.6612 27.275 18.9737 25.6875L15.2362 23.475C14.5612 23.075 13.4487 23.075 12.7612 23.475L9.02367 25.6875C6.34867 27.275 4.72367 26.0875 5.42367 23.0625L6.31117 19.225C6.47367 18.5 6.18617 17.4875 5.66117 16.9625L2.56117 13.8625C0.736166 12.0375 1.32367 10.1875 3.87367 9.76249L7.86117 9.09999C8.52367 8.98749 9.32367 8.39999 9.62367 7.78749L11.8237 3.38749C13.0237 0.999988 14.9737 0.999988 16.1612 3.38749Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>                                    
        </div>
        <div class="courses__block-ditem__t">{$point ? 'Рейтинг '~$point : 'Нет оценок'}{$reviews ? '<br>Отзывов '~$reviews : '<br>Нет отзывов'} </div>
    </a>
    {/if}

    {*<a href="{$_modx->makeUrl($page_id)}" class="courses__block-ditem courses__block-ditem--rev">
        <div class="courses__block-ditem__icon">
            <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M9.625 22.75H9C4 22.75 1.5 21.5 1.5 15.25V9C1.5 4 4 1.5 9 1.5H19C24 1.5 26.5 4 26.5 9V15.25C26.5 20.25 24 22.75 19 22.75H18.375C17.9875 22.75 17.6125 22.9375 17.375 23.25L15.5 25.75C14.675 26.85 13.325 26.85 12.5 25.75L10.625 23.25C10.425 22.975 9.9625 22.75 9.625 22.75Z" stroke="#19191B" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M18.997 12.75H19.0083" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M13.9931 12.75H14.0044" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M8.99313 12.75H9.00436" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>                                    
        </div>

    </a>*}


    {if (!$isCourseTemplate) && ($promote['lead'] >= 0)}
    <a href="{$_modx->makeUrl($page_id)}" class="courses__block-ditem courses__block-ditem--user">
        <div class="courses__block-ditem__icon">
            <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M11.4502 13.5875C11.3252 13.575 11.1752 13.575 11.0377 13.5875C8.0627 13.4875 5.7002 11.05 5.7002 8.05C5.7002 4.9875 8.1752 2.5 11.2502 2.5C14.3127 2.5 16.8002 4.9875 16.8002 8.05C16.7877 11.05 14.4252 13.4875 11.4502 13.5875Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M20.5121 5C22.9371 5 24.8871 6.9625 24.8871 9.375C24.8871 11.7375 23.0121 13.6625 20.6746 13.75C20.5746 13.7375 20.4621 13.7375 20.3496 13.75" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M5.20039 18.2C2.17539 20.225 2.17539 23.525 5.20039 25.5375C8.63789 27.8375 14.2754 27.8375 17.7129 25.5375C20.7379 23.5125 20.7379 20.2125 17.7129 18.2C14.2879 15.9125 8.65039 15.9125 5.20039 18.2Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M22.9248 25C23.8248 24.8125 24.6748 24.45 25.3748 23.9125C27.3248 22.45 27.3248 20.0375 25.3748 18.575C24.6873 18.05 23.8498 17.7 22.9623 17.5" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>                                                                      
        </div>
        {if $promote['lead'] == 0}
            <div class="courses__block-ditem__t">Свободных мест <br> нет</div>
        {else}
            <div class="courses__block-ditem__t">Свободных мест <br> {if $num_people_in_group < $promote['lead']}{$num_people_in_group}{else}{$promote['lead']}{/if}</div>
        {/if} 
    </a>
    {elseif $isCourseTemplate}
    
    <a href="{$_modx->makeUrl($page_id)}" class="courses__block-ditem courses__block-ditem--user">
        <div class="courses__block-ditem__icon">
            <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M11.4502 13.5875C11.3252 13.575 11.1752 13.575 11.0377 13.5875C8.0627 13.4875 5.7002 11.05 5.7002 8.05C5.7002 4.9875 8.1752 2.5 11.2502 2.5C14.3127 2.5 16.8002 4.9875 16.8002 8.05C16.7877 11.05 14.4252 13.4875 11.4502 13.5875Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M20.5121 5C22.9371 5 24.8871 6.9625 24.8871 9.375C24.8871 11.7375 23.0121 13.6625 20.6746 13.75C20.5746 13.7375 20.4621 13.7375 20.3496 13.75" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M5.20039 18.2C2.17539 20.225 2.17539 23.525 5.20039 25.5375C8.63789 27.8375 14.2754 27.8375 17.7129 25.5375C20.7379 23.5125 20.7379 20.2125 17.7129 18.2C14.2879 15.9125 8.65039 15.9125 5.20039 18.2Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M22.9248 25C23.8248 24.8125 24.6748 24.45 25.3748 23.9125C27.3248 22.45 27.3248 20.0375 25.3748 18.575C24.6873 18.05 23.8498 17.7 22.9623 17.5" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>                                                                      
        </div>
        {if $num_people_in_group == 1}
            <div class="courses__block-ditem__t">Индивидуальные занятия</div>
        {else}
            <div class="courses__block-ditem__t">Мест в группе <br> {$num_people_in_group}</div>
        {/if} 
    </a>    
    {/if}
    
    {if $isCourseTemplate || !$isCourseTemplate}
        {set $for_ages_from  = $page_id | resource: 'for_ages_from'}
        {set $for_ages_to  = $page_id | resource: 'for_ages_to'}
        {if $for_ages_from && $for_ages_to}
        <div class="courses__block-ditem courses__block-ditem--center courses__block-ditem--purple no-icon">
            <div class="courses__block-ditem__t">
                Возраст<br>
                {if $for_ages_from <=17 && $for_ages_to <=18}
                    {if $for_ages_from}от {$for_ages_from}{/if} {if $for_ages_to}до {$for_ages_to}{/if} {if $for_ages_from && $for_ages_to}{/if}
                    
                {elseif $for_ages_from <=17 && $for_ages_to >=19}
                    {if $for_ages_from}от {$for_ages_from}{/if}
                {elseif $for_ages_from >=18}
                    {if $for_ages_from}18+{/if}
                {else}
                    не указан
                {/if}
                </div>
            </div>
        {/if}
    {/if}
    
    
{*

    {if $promote['lead'] > 0}
        {if $.php.is_array($days) && $.php.count($days) > 0}
        <div class="courses__block-ditem courses__block-times" style="max-width:200px;">
            <ul class="courses__block-times__days">
                {set $days_arr = $_modx->runSnippet('getValuesTV', ['tvid' => 69, 'arr' => 1])}
                {foreach $days_arr as $k=>$v}
                    {if $days[$k] == $v}
                        <li class="active">{$k}</li>
                    {else}
                        <li>{$k}</li>
                    {/if}
                {/foreach}
            </ul>
            <div class="courses__block-times__hours">
            {foreach $days_arr as $k=>$v}                
                {set $prefix = $_modx->runSnippet('RU2LAT', ['str' => $k])}
                {if $days[$k] == $v}
                    {set $days_period = $_modx->runSnippet('pdoField', ['field' => 'days_period_'~$prefix, 'id'=>$page_id])}
                    {set $a = $.php.explode('||',$days_period)}
                    {set $days_period_from = ($.php.strlen($a[0])==4)?('0'~$a[0]):($a[0])}
                    {set $days_period_to = ($.php.strlen($a[1])==4)?('0'~$a[1]):($a[1])}
                    {if $days_period_from && $days_period_to}
                        {$k}: {$days_period_from}-{$days_period_to}<br>
                    {/if}
                {/if}
            {/foreach}
            </div>
        </div>        
        {else}
        
        <div class="courses__block-ditem courses__block-times duration">
            <div class="courses__block-ditem__icon">
                <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M10 2.5V6.25" stroke="#19191B" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path d="M20 2.5V6.25" stroke="#19191B" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path d="M4.375 11.3625H25.625" stroke="#19191B" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path d="M26.25 10.625V21.25C26.25 25 24.375 27.5 20 27.5H10C5.625 27.5 3.75 25 3.75 21.25V10.625C3.75 6.875 5.625 4.375 10 4.375H20C24.375 4.375 26.25 6.875 26.25 10.625Z" stroke="#19191B" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path d="M19.6184 17.125H19.6296" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path d="M19.6184 20.875H19.6296" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path d="M14.9944 17.125H15.0056" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path d="M14.9944 20.875H15.0056" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path d="M10.3679 17.125H10.3791" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path d="M10.3679 20.875H10.3791" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                </svg>
            </div>        
            
            
            {if $num_lesson_per_week && $lesson_duration}
                <div class="courses__block-props__item">
                    {$num_lesson_per_week} {$num_lesson_per_week | declension : 'занятие|занятия|занятий'} в неделю <br> по {$lesson_duration} мин.
                </div>
            {/if}
        </div>        
        
        {/if}
    {/if}
    
    
*}    
    
    {*else}
    <div class="courses__block-ditem courses__block-times duration">
        <div class="courses__block-ditem__icon">
            <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M10 2.5V6.25" stroke="#19191B" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                <path d="M20 2.5V6.25" stroke="#19191B" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                <path d="M4.375 11.3625H25.625" stroke="#19191B" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                <path d="M26.25 10.625V21.25C26.25 25 24.375 27.5 20 27.5H10C5.625 27.5 3.75 25 3.75 21.25V10.625C3.75 6.875 5.625 4.375 10 4.375H20C24.375 4.375 26.25 6.875 26.25 10.625Z" stroke="#19191B" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                <path d="M19.6184 17.125H19.6296" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                <path d="M19.6184 20.875H19.6296" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                <path d="M14.9944 17.125H15.0056" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                <path d="M14.9944 20.875H15.0056" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                <path d="M10.3679 17.125H10.3791" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                <path d="M10.3679 20.875H10.3791" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
            </svg>
        </div>        
        
        
        {if $num_lesson_per_week && $lesson_duration}
            <div class="courses__block-props__item">
                {$num_lesson_per_week} {$num_lesson_per_week | declension : 'занятие|занятия|занятий'} в неделю <br> по {$lesson_duration} мин.
            </div>
        {/if}
    </div>
    {/if*}
</div>