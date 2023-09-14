{set $page_id = $page_id ?: $res.id}

{set $sale  = $.php.intval($page_id | resource: 'sale')} 
{set $price_course  = $page_id | resource: 'price_course'}
{set $price_course_month  = $page_id | resource: 'price_course_month'}
{set $num_months_of_study  = str_replace(',','.',($page_id | resource: 'num_months_of_study'))}


{set $price_lesson  = $page_id | resource: 'price_lesson'}
{set $price_lesson = $_modx->runSnippet('!formatMoney', ['number'=>$price_lesson])}


{set $course_duration  = $.php.intval($page_id | resource: 'course_duration')}
{set $lesson_duration  = $.php.intval($page_id | resource: 'lesson_duration')}

{set $num_months_of_study =  $page_id | resource: 'num_months_of_study'}
{set $num_lesson_per_week =  $.php.intval($page_id | resource: 'num_lesson_per_week')}
{set $num_people_in_group  = $.php.intval($page_id | resource: 'num_people_in_group')}


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
              {set $calc_discount = (($discount * $price_course)/100.0)}
              {set $price_course_partnership_sale = $price_course - $calc_discount}
              {set $isSale = 1}
            {/if}                             
         {case 'first_month'}
            {if $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
                 {set $calc_discount = (($discount * $price_course)/100.0)}
                 {set $price_course_partnership_sale = $price_course - $calc_discount}
                 {if $num_months_of_study == 1}
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
            
    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_partnership_sale])}
    {set $title_sale = 'Скидка партнерская '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}   
    {set $isPartnership = 1}

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
                    <div class="courses__block-props__numb">
                    {if $isSale}
                        <strike class="old-price">{$price_course_format}</strike>
                        <span class="new-price">{$price_course_sale_format}</span>
                    {else}
                        <span class="price">{$price_course_format}</span>
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
        
        <div class="courses__block-props__row">
                        
        
            {if $price_course_month}
                <div class="courses__block-props__item">
                    <div class="courses__block-props__numb">
                    {if $isSaleFirstMonth}
                        <strike class="old-price">{$price_course_format}</strike>
                        <span class="new-price">{$price_course_sale_format}</span>                        
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
       
       
               
      {if $calc_discount}
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
    {/if}
       
    {if $num_lesson_per_week && $lesson_duration} {*($_modx->resource.template == 25) && *}
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
                        <button class="btn btn--more">
                            <span>Звонок заказан</a>
                        </button>
                    {/if}
                {else}
                    {if (!$confirm_phone) && ($promote['lead'] > 0)}<button class="btn w-all" data-open-popup="confirm_phone_msg">Обратный звонок</button>{/if}
                {/if}
            {else}
                <button class="btn  w-all" data-open-popup="call_to_school" data-groupid="{$page_id}">Обратный звонок</button>
            {/if}
            
        {/if}   


        {include 'file:chunks/favorites/favorites.like.tpl' page_id=$page_id type_name='courses'}

        {if $sale > 0}
            {set $btnSale = 'Получить промокод'}
        {else}
            {set $btnSale = 'Забронировать место'}
        {/if}
        
        {if ('' | isloggedin : 'web')}
            {if ($isOK) && ($promote['lead'] > 0) && $confirm_phone} {*('!checkBudget' | snippet : ['page_id'=>$page_id]) &&*}
                {'!promocode' | snippet :[]}
                <button class="btn add-promocode" data-id="{$page_id}">{$btnSale}</button>
            {else}
                {if (!$confirm_phone) && ($promote['lead'] > 0)}<button class="btn" data-open-popup="confirm_phone_msg">{$btnSale}</button>{/if}
            {/if}
        {else}
            <button class="btn" data-open-popup="auth_sale">{$btnSale}</button>
        {/if}
    </div>
    {/if}
</div>