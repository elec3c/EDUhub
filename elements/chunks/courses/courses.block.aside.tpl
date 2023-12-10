{set $page_id = $page_id ?: $res.id}


{set $sale  = $.php.intval($page_id | resource: 'sale')} 
{set $price_course  = $page_id | resource: 'price_course'}
{set $price_course_month  = $page_id | resource: 'price_course_month'}
{set $num_months_of_study  = str_replace(',','.',($page_id | resource: 'num_months_of_study'))}

{set $days = $_modx->runSnippet('outputMultipleTV', ['tvName' => 'days', 'resourceId'=>$page_id, 'arr'=>1])}

{set $price_lesson  = $page_id | resource: 'price_lesson'}
{set $price_lesson_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_lesson])}

{set $format_of_study = $page_id | resource : 'format_of_study'}

{set $course_duration  = $.php.intval($page_id | resource: 'course_duration')}
{set $lesson_duration  = $.php.intval($page_id | resource: 'lesson_duration')}

{set $num_months_of_study =  $page_id | resource: 'num_months_of_study'}
{set $num_lesson_per_week =  $.php.intval($page_id | resource: 'num_lesson_per_week')}
{set $num_people_in_group  = $.php.intval($page_id | resource: 'num_people_in_group')}


{set $course_owner  = $page_id | resource: 'course_owner'}


{set $parent  = $page_id | resource: 'parent'}


{if $parent != 61}
    {set $isCourseTemplate = 0}
    {set $course_template =  $page_id | resource: 'course_template'}
{else}
    {set $isCourseTemplate = 1}
    {set $course_template =  $page_id}
{/if}

{set $my_company_id = $_modx->user.id | user:'my_company_id'}

{set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id'     => $page_id])}
{set $isPromote = (($promote['lead'] > 0) || ($my_company_id > 0))?1:0}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}

{if ($my_company_id > 0) && ($isCorporate) && ($course_template > 0)}
    {set $partnershipDiscount = '!getPartnershipDiscount' | snippet : ['from_user_id' => $course_owner, 'to_user_id' => $my_company_id, 'course_template_id'=>$course_template]}
{/if}

{if $partnershipDiscount['discount'] > 0}

    {set $discount          = trim($partnershipDiscount['discount'])}
    {set $discount_unit     = trim($partnershipDiscount['discount_unit'])}
    {set $discount_for_what = trim($partnershipDiscount['discount_for_what'])}
    {set $unit              = trim($partnershipDiscount['unit'])}
    {set $for_what          = trim($partnershipDiscount['for_what'])}
    
    {set $title_sale = 'Скидка партнерская '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}                   

    {insert 'file:chunks/courses/courses.calc.discount.tpl'}

{elseif ($sale > 0) && ($price_course > $sale)}
    {set $isSale = 1}
    {set $price_course_sale = $price_course - $sale}
    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_sale])}
    {set $title_sale = 'Скидка EDUhub '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}   
{else}
    {set $isSale = 0}
{/if}


{set $price_course_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course])}
{set $price_course_month_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_month])}

{set $phone1 = $_modx->user.id | user:'mobilephone'}
{set $phone2 = $_modx->user.id | user:'phone'}
{set $confirm_phone = ( ($.php.preg_replace("/[^\+0-9]/", "", $phone1) == $.php.preg_replace("/[^\+0-9]/", "", $phone2)) ? ($phone2) : (0) )}


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
                    <div class="courses__block-props__numb">
                    {if $price_course_format && $price_course_sale_format}
                        <strike class="old-price">{$price_course_format}</strike>
                        <span class="new-price">{$price_course_sale_format}</span>
                    {elseif $price_course_format && !$price_course_sale_format}
                        <span class="new-price">{$price_course_format}</span>
                    {else}
                        <span class="price">{$.php.intval($price_course)}</span>
                    {/if}
                    </div>
                    стоимость курса
                </div>
            {else}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb"> - руб.</div>
                    стоимость курса
                </div>                
            {/if}            
            
            
        </div>
        
        <div class="courses__block-props__row {if ($price_course_format && $price_course_sale_format) || ($price_lesson_format && $price_lesson_sale_format)}courses__block-props__row-old{/if}">
                        
            {set $isSaleFirstMonth = ($num_months_of_study <=1)?1:0}
            {if $price_course_month}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">
                    {if $isSaleFirstMonth}
                        {if $price_course_format && $price_course_sale_format}
                            <strike class="old-price">{$price_course_format}</strike>
                            <span class="new-price">{$price_course_sale_format}</span>
                        {elseif $price_course_format && !$price_course_sale_format}
                            <span class="new-price">{$price_course_format}</span>
                        {else}
                            <span class="price">{$.php.intval($price_course)}</span>
                        {/if}
                    {else}
                        <span class="price">{$price_course_month_format}</span>
                    {/if}
                    </div>
                    в месяц
                </div>
            {else}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb"> - руб.</div>
                    в месяц
                </div>                
            {/if}
            

            {if $price_lesson}
                <div class="courses__block-props__item" >
                    <div class="courses__block-props__numb">
                        {if $price_lesson_format && $price_lesson_sale_format}
                            <strike class="old-price">{$price_lesson_format}</strike>
                            <span class="new-price">{$price_lesson_sale_format}</span>
                        {elseif $price_lesson_format && !$price_lesson_sale_format}
                            <span class="new-price">{$price_lesson_format}</span>
                        {else}
                            <span class="price">{$price_lesson_format}</span>
                        {/if}
                    </div>
                    стоимость занятия
                </div>
            {else}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">
                        <span class="price">- руб.</span>
                    </div>
                    стоимость занятия
                </div>
            {/if}        
        </div>
       
       
               
    {*if $calc_discount}
      <div class="courses__block-props__row">
            
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{'Скидка <br>'~$discount~' '~$discount_unit}</div>
                    {$discount_for_what}
                </div>
            
        
            
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">{$calc_discount} р.</div>
                    {$isPartnership?'Партнерская скидка':'Скидка EDUhub'}
                </div>
            

        </div>
    {/if*}
    
    
    {if $isPromote}   
            {if $.php.is_array($days) && $.php.count($days) > 0}
            {else}
                {if $num_lesson_per_week || $lesson_duration} {*($_modx->resource.template == 25) && *}
                <div class="courses__block-props__row">
                    <div class="courses__block-props__item">
                        <div class="courses__block-props__numb">{$num_lesson_per_week}</div>
                        {$num_lesson_per_week | declension : 'занятие|занятия|занятий'} <br> в неделю
                    </div>
                    <div class="courses__block-props__item">
                        <div class="courses__block-props__numb">{$lesson_duration} мин.</div>
                        длительность занятия 
                    </div>
                </div>
                {/if}
            {/if}
    {/if}
    
    

    
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
    
   {if $isPromote}   
            {if $.php.is_array($days) && $.php.count($days) > 0}
<div class="courses__block-props" style="margin-top:10px;padding:5px;">            
<div class="courses__block-props__row">            
        <div class="courses__block-ditem courses__block-times">
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
    </div>
</div>
        {/if}  
    {/if}
    
    
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
                {if $isOK && $isPromote && $confirm_phone}
                    {set $isUID = $_modx->runSnippet('!callCheckUID', [
                                                       'user_id'      => $_modx->user.id , 
                                                       'group_id'     => $page_id,
                                                       'school_id'    => $course_owner
                    ])}
                    {if $isUID}
                        {set $school_id = $page_id | resource:'course_owner'}
                        <button class="btn w-all" data-open-popup="call_to_school_reg{$id}" data-schoolid="{$school_id}" data-groupid="{$page_id}">Обратный звонок</button>
                        {include 'file:chunks/modals/call_to_school_reg.tpl' groupid=$page_id schoolid=$school_id}
                    {else}
                        <button class="btn btn--more w-all">
                            Звонок заказан
                        </button>
                    {/if}
                {else}
                    {if (!$confirm_phone) && ($isPromote)}
                        <button class="btn w-all" data-open-popup="confirm_phone_msg">Обратный звонок</button>
                    {/if}
                {/if}
            {else}
                <button class="btn  w-all" data-open-popup="call_to_school" data-groupid="{$page_id}">Обратный звонок</button>
            {/if}
            
        {/if}   


        {include 'file:chunks/favorites/favorites.like.tpl' page_id=$page_id type_name='courses'}

        {if $isSale}
            {set $btnSale = 'Получить промокод'}
        {else}
            {if ($isCourseTemplate) && ($format_of_study == 'individual')}
                {set $btnSale = 'Записаться на курс'}
            {else}
                {set $btnSale = 'Забронировать место'}
            {/if}
        {/if}
        
        {if ('' | isloggedin : 'web')}
            {if ($isOK) && ($isPromote) && $confirm_phone} {*('!checkBudget' | snippet : ['page_id'=>$page_id]) &&*}
                {'!promocode' | snippet :[]}
                <button class="btn add-promocode" data-pageid="{$page_id}" data-type="{$isCourseTemplate?'template':'group'}" data-sale="{$isSale?1:0}">{$btnSale}</button>
            {else}
                {if (!$confirm_phone) && ($isPromote)}<button class="btn" data-open-popup="confirm_phone_msg">{$btnSale}</button>{/if}
            {/if}
        {else}
            <button class="btn" data-open-popup="auth_sale">{$btnSale}</button>
        {/if}
    </div>
    
</div>