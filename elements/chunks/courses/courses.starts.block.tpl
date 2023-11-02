{set $page_id = $page_id ?: $id}
{set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id' => $page_id])}
{set $sale  = $page_id | resource: 'sale'}  

{set $format_of_study  = $page_id | resource: 'format_of_study'}
{set $price_course  = $page_id | resource: 'price_course'}
{set $price_course_month  = $page_id | resource: 'price_course_month'}
{set $num_months_of_study  = str_replace(',','.',($page_id | resource: 'num_months_of_study'))}

{set $days = $_modx->runSnippet('outputMultipleTV', ['tvName' => 'days', 'resourceId'=>$page_id, 'arr'=>1])}

{set $course_owner  = $page_id | resource: 'course_owner'}
{set $course_template =  $page_id | resource: 'course_template'}
{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isPromote = (($promote['lead'] > 0) || ($my_company_id > 0))?1:0}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}
{set $parent  = $page_id | resource: 'parent'}


{if $parent != 61}
    {set $isCourseTemplate = 0}
    {set $course_template =  $page_id | resource: 'course_template'}
{else}
    {set $isCourseTemplate = 1}
    {set $course_template =  $page_id}
{/if}


{if ($my_company_id > 0) && ($isCorporate)}
    {set $partnershipDiscount = '!getPartnershipDiscount' | snippet : ['from_user_id' => $course_owner, 'to_user_id' => $my_company_id, 'course_template_id'=>$course_template]}
{/if}
{if $partnershipDiscount['discount'] > 0}


    {set $discount          = $partnershipDiscount['discount']}
    {set $discount_unit     = $partnershipDiscount['discount_unit']}
    {set $discount_for_what = $partnershipDiscount['discount_for_what']}
    {set $unit              = $partnershipDiscount['unit']}
    {set $for_what          = $partnershipDiscount['for_what']}
                        
                        
     {switch $for_what}
         {case 'course_fee'}
            {if $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
              {set $calc_discount = (($discount * $price_course)/100.0)}
              {set $price_course_partnership_sale = $price_course - $calc_discount}
              {set $isSale = 1}
            {/if}                             
         {case 'first_month'}
            {if $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
                 {set $calc_discount = (($discount * $price_course)/100.0)}
                 {set $price_course_partnership_sale = $price_course - $calc_discount}
                 {if $_modx->resource.num_months_of_study == 1}
                     {set $isSaleFirstMonth = 1}
                     {set $isSale = 1}
                 {else}
                     {set $isSale = 1}
                 {/if}
            {/if}
         {case 'fixed_discount'}
             {if intval($discount) && ($unit == 'rub') && ($price_course > $discount) }
                 {set $calc_discount = $discount} 
                 {set $price_course_partnership_sale = $price_course - $calc_discount}
                 
                 {set $isSale = 1}
             {/if}
    {/switch}
            
    {set $sale = $calc_discount}             
    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_partnership_sale])}
    {set $title_sale = 'Скидка партнерская '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}   
    {set $isPartnership = 1}
    
{elseif (($sale > 0) && ($price_course > $sale))}
    {set $isSale = 1}
    {set $price_course_sale = $price_course - $sale}
    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_sale])}
{else}
    {set $isSale = 0}
{/if}

{set $price_course_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course])}
{set $price_course_month_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_month])}

{set $num_lesson_per_week  = $page_id | resource: 'num_lesson_per_week'}
{set $lesson_duration = $page_id | resource: 'lesson_duration'}

{set $phone1 = $_modx->user.id | user:'mobilephone'}
{set $phone2 = $_modx->user.id | user:'phone'}
{set $confirm_phone = ( ($.php.preg_replace("/[^\+0-9]/", "", $phone1) == $.php.preg_replace("/[^\+0-9]/", "", $phone2)) ? ($phone2) : (0) )}

{set $isOK = ($_modx->user.id | ismember : ['Users'])} 
{set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id' => $page_id])}

<div class="courses__item">
    <div class="courses__item-photo">
        {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$_pls['course_owner']}
    </div>
    <h3 class="courses__item-title"><a href="{$page_id | url}">{$_pls['course_group_title']?:$pagetitle}</a></h3>

    <ul class="courses__item-list">
        {if $price_course_format}
        <li class="courses__item-item"><span class="courses__item-item-title">Стоимость курса:{if $isSale}<small class="label">-{$sale} руб.</small>{/if}</span>
        {if $isSale}
            <strike class="old-price">{$price_course_format}</strike>
            <span class="new-price">{$price_course_sale_format}</span>
        {else}
            <span class="price">{$price_course_format}</span>
        {/if}
        </li>
        {/if}
        {if $price_course_month_format}
        <li><span>Стоимость в месяц *:</span><br>
            {if ($num_months_of_study == 1) && ($isSale)}
                <strike class="old-price">{$price_course_format}</strike>
                <span class="new-price">{$price_course_sale_format}</span>
            {else}
                <span class="price">{$price_course_month_format}</span>
            {/if}
        </li>
        {/if}
        {if $.php.is_array($days) && $.php.count($days) > 0}
        <li><span>Интенсивность:</span>                    
                            {set $days_arr = $_modx->runSnippet('getValuesTV', ['tvid' => 69, 'arr' => 1])}
                            <div>
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
            
        {else}
        <li><span>Интенсивность:</span>
            {if $num_lesson_per_week && $lesson_duration}
                <br>{$num_lesson_per_week} р/неделя по {$lesson_duration} мин.
            {else}-{/if}
        </li>
        {/if}
    </ul>
    <div class="courses__item-dmm">
        <div class="courses__item-dmm__col">Начало курса <br class="hide-tablet-sm">{$_pls['data_from'] | date_format:"%d.%m.%Y"}</div>
        <div class="courses__item-dmm__col">{if $.php.intval($_pls['num_people_in_group'])}Мест в группе: {$_pls['num_people_in_group']}{/if} {if $promote['lead'] > 0}<br> Свободно: {$promote['lead']}{/if}</div>
    </div>        
    <div class="courses__item-button">
                                
        {include 'file:chunks/favorites/favorites.like.tpl' type_name='courses' page_id=$id}
                                
        {if $sale > 0}
            {set $btnSale = 'Получить промокод'}
        {else}
            {set $btnSale = 'Забронировать место'}
        {/if}
                            
        {if ('' | isloggedin : 'web')}
            {if ($isOK) && ($promote['lead'] > 0) && $confirm_phone} {*('!checkBudget' | snippet : ['page_id'=>$page_id]) &&*}
                {'!promocode' | snippet :[]}
                <button class="btn w-all add-promocode" data-pageid="{$page_id}" data-type="{$isCourseTemplate?'template':'group'}" data-sale="{$isSale?1:0}">{$btnSale}</button>
            {else}
                {if (!$confirm_phone) && ($promote['lead'] > 0)}<button class="btn w-all" data-open-popup="confirm_phone_msg">{$btnSale}</button>{/if}
            {/if}
        {else}
            <button class="btn w-all" data-open-popup="auth_sale">{$btnSale}</button>
        {/if}            
        {*<a href="{$uri}" class="btn w-all">Подробнее</a>*}
    </div>
</div>
<!--courses__item-->