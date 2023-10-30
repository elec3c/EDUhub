{set $page_id = $page_id ?: $id}

{set $sale  = $.php.intval($_pls['tv.sale'])}  
{set $price_course  = $.php.intval($_pls['tv.price_course'])}  
{set $price_course_month  = $.php.intval($_pls['tv.price_course_month'])}  
{set $num_months_of_study  = str_replace(',','.',$_pls['tv.num_months_of_study'])}


{set $price_course  = $page_id | resource: 'price_course'}

{set $course_owner  = $page_id | resource: 'course_owner'}
{set $course_template =  $page_id | resource: 'course_template'}
{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}

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
              {set $calc_discount = (($discount * $_modx->resource.price_course)/100.0)}
              {set $price_course_partnership_sale = $_modx->resource.price_course - $calc_discount}
              {set $isSale = 1}
            {/if}                             
         {case 'first_month'}
            {if $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
                 {set $calc_discount = (($discount * $_modx->resource.price_course)/100.0)}
                 {set $price_course_partnership_sale = $_modx->resource.price_course - $calc_discount}
                 {if $_modx->resource.num_months_of_study == 1}
                     {set $isSaleFirstMonth = 1}
                     {set $isSale = 1}
                 {else}
                     {set $isSale = 1}
                 {/if}
            {/if}
         {case 'fixed_discount'}
             {if intval($discount) && ($unit == 'rub') && ($_modx->resource.price_course > $discount) }
                 {set $calc_discount = $discount} 
                 {set $price_course_partnership_sale = $_modx->resource.price_course - $calc_discount}
                 {set $isSale = 1}
             {/if}
    {/switch}
            
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

<div class="swiper-slide f-cat"  data-category="{$_pls['tv.course_category']}" data-sub_category="{$_pls['tv.course_sub_category']}" data-schedule="{$_pls['tv.schedule']}" data-time="{$_pls['tv.time']}" data-form_of_study="{$_pls['tv.form_of_study']}" data-course_city="{$_pls['tv.course_city']}">
    <div class="courses__item">
        <div class="courses__item-photo">
            {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$_pls['tv.course_owner']}
        </div>

        <h3 class="courses__item-title">
            <a href="{$page_id | url}">{$_pls['tv.course_group_title']?:$pagetitle}</a>
        </h3>
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
            <li><span>Интенсивность:</span>
                {if $num_lesson_per_week && $lesson_duration}
                    <br>{$num_lesson_per_week} р/неделя по {$lesson_duration} мин.
                {else}-{/if}
            </li>
        </ul>
        
        <div class="courses__item-dmm">
            <div class="courses__item-dmm__col">Начало курса <br class="hide-tablet-sm">{$_pls['tv.data_from'] | date_format:"%d.%m.%Y"}</div>
            <div class="courses__item-dmm__col">{if $.php.intval($_pls['tv.num_people_in_group'])}Мест в группе: {$_pls['tv.num_people_in_group']}{/if} {if $promote['lead'] > 0}<br> Свободно: {$promote['lead']}{/if}</div>
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
                    <button class="btn w-all add-promocode" data-id="{$page_id}">{$btnSale}</button>
                {else}
                    {if (!$confirm_phone) && ($promote['lead'] > 0)}<button class="btn w-all" data-open-popup="confirm_phone_msg">{$btnSale}</button>{/if}
                {/if}
            {else}
                <button class="btn w-all" data-open-popup="auth_sale">{$btnSale}</button>
            {/if}            
            {*<a href="{$uri}" class="btn w-all">Подробнее</a>*}
        </div>        
    </div>    
</div>