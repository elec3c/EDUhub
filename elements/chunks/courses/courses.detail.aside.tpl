{set $page_id = $page_id ?: $res.id}
{set $parent = $page_id | resource: 'parent'}
{set $user_id  = ($page_id | resource: 'course_owner')}
{set $num_months_of_study  = str_replace(',','.',($page_id | resource: 'num_months_of_study'))}
{set $course_template_id  = ($page_id | resource: 'course_template')}
{set $format_of_study = $page_id | resource : 'format_of_study'}
{set $phone = ($user_id | user:'phone')}
{set $my_company_id  = ($_modx->user.id | user: 'my_company_id')?:0}
{set $fullname = ($user_id | user:'fullname')}
{set $site = ($user_id | user:'website')}
{set $addr = $_modx->runSnippet('getAddressGroup', ['page_id'=>$page_id])}
{set $days = $_modx->runSnippet('outputMultipleTV', ['tvName' => 'days', 'resourceId'=>$page_id, 'arr'=>1])}
{set $num_people_in_group = $page_id | resource : 'num_people_in_group'}
{set $price_course = $page_id | resource:'price_course'}


{if $parent != 61}
    {set $isCourseTemplate = 0}
    {set $course_template =  $page_id | resource: 'course_template'}
{else}
    {set $isCourseTemplate = 1}
    {set $course_template =  $page_id}
{/if}


{set $course_owner = $page_id | resource:'course_owner'}
{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}
                
{set $isEmployees = (($my_company_id > 0) && ($isCorporate))?1:0}
        

{set $phone1 = $_modx->user.id | user:'mobilephone'}
{set $phone2 = $_modx->user.id | user:'phone'}

{set $confirm_phone = ( ($.php.preg_replace("/[^\+0-9]/", "", $phone1) == $.php.preg_replace("/[^\+0-9]/", "", $phone2)) ? ($phone2) : (0) )}

{set $isOK = ($_modx->user.id | ismember : ['Administrator','Users'])} 
{set $sale  = $.php.intval($page_id | resource: 'sale')}        
{set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id' => $page_id])}
{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isPromote = (($promote['lead'] > 0) || ($my_company_id > 0))?1:0}

<div class="detail__aside">
    <div class="detail__sticky">
        <div class="dcard">
            <div class="dcard__photo">
                {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$user_id}
            </div>

            {if $_modx->resource.parent != 61}
            
                {if $addr || $site}                                        
                <div class="dcard__info">
                <div class="dcard__title">Контакты</div>
                <ul class="listinf dcard__list">
                    {if $addr}
                        <li class="listinf__flex">
                            <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt=""></div> 
                            <div class="listinf__str">{$addr}</div>
                        </li>
                    {/if}
                        
                    {if $fullname && $site}
                        <li>
                            {set $website = $_modx->runSnippet('!parseIfValidURL', ['url' => $site])}
                            {if $website}
                            <a href="{$site}" class="listinf__flex">
                            {/if}
                                <div class="listinf__icon"><img src="/assets/images/icons/global.svg" alt="global"></div>
                                <div class="listinf__str">{$fullname}</div>
                            {if $website}
                            </a>
                            {/if}
                        </li>
                    {/if}
                    {if $phone}
                        <li>
                            <a href="tel:{$phone|clearphone}" class="listinf__flex">
                                <div class="listinf__icon"><img src="/assets/images/icons/phone.svg" alt="phone"></div>
                                <div class="listinf__str">{$phone}</div>
                            </a>
                        </li>
                    {/if}
                </ul>
            </div>
                {/if}
            {/if}
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



        
        {if ($_modx->resource.parent != 61) || $isEmployees}
        <div class="btns_cfs detail__aside-buttons">
        {set $isUID = $_modx->runSnippet('!callCheckUID', [
            'user_id'      => $_modx->user.id , 
            'group_id'     => $_modx->resource.id,
            'school_id'    => $user_id
        ])}

                <div class="detail__aside-props w-all">

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
                        
                    {elseif ($sale > 0) && ($price_course > $sale)}
                        {set $title_sale = 'Скидка EDUhub '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}   
                        {set $isSale = 1}
                         {set $discount = $sale}
                    {else}
                        {set $isSale = 0}
                        {set $discount = "Нет скидки"}
                    {/if}

                    {if intval($discount)}
                        {set $discount = "Промокод <br>"~floor($discount)~" руб."}
                    {/if}
                    
                    {include 'file:chunks/courses/course.detail.discount.tpl' discount=$discount}
                    
                    {if (!$isCourseTemplate)}
                    <div class="detail__aside-ditem detail__aside-ditem--purple">
                        <div class="detail__aside-ditem__icon">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M9.16055 10.87C9.06055 10.86 8.94055 10.86 8.83055 10.87C6.45055 10.79 4.56055 8.84 4.56055 6.44C4.56055 3.99 6.54055 2 9.00055 2C11.4505 2 13.4405 3.99 13.4405 6.44C13.4305 8.84 11.5405 10.79 9.16055 10.87Z" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M16.4093 4C18.3493 4 19.9093 5.57 19.9093 7.5C19.9093 9.39 18.4093 10.93 16.5393 11C16.4593 10.99 16.3693 10.99 16.2793 11" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M4.1607 14.56C1.7407 16.18 1.7407 18.82 4.1607 20.43C6.9107 22.27 11.4207 22.27 14.1707 20.43C16.5907 18.81 16.5907 16.17 14.1707 14.56C11.4307 12.73 6.9207 12.73 4.1607 14.56Z" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M18.3398 20C19.0598 19.85 19.7398 19.56 20.2998 19.13C21.8598 17.96 21.8598 16.03 20.2998 14.86C19.7498 14.44 19.0798 14.16 18.3698 14" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>                                                                              
                        </div>
                        {if $num_people_in_group == 1}
                            <div class="detail__aside-ditem__t">Индивидуальные занятия</div>
                        {else}
                            <div class="detail__aside-ditem__t">Свободных мест - {$promote['lead']}</div>{*$num_people_in_group*}
                        {/if}
                    </div>
                    {elseif $isCourseTemplate}
                    {*set $coursesLeadsSum = '!getCoursesLeadsSum'|snippet: ['course_template' => $course_template]*}
                    <div class="detail__aside-ditem detail__aside-ditem--purple">
                        <div class="detail__aside-ditem__icon">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M9.16055 10.87C9.06055 10.86 8.94055 10.86 8.83055 10.87C6.45055 10.79 4.56055 8.84 4.56055 6.44C4.56055 3.99 6.54055 2 9.00055 2C11.4505 2 13.4405 3.99 13.4405 6.44C13.4305 8.84 11.5405 10.79 9.16055 10.87Z" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M16.4093 4C18.3493 4 19.9093 5.57 19.9093 7.5C19.9093 9.39 18.4093 10.93 16.5393 11C16.4593 10.99 16.3693 10.99 16.2793 11" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M4.1607 14.56C1.7407 16.18 1.7407 18.82 4.1607 20.43C6.9107 22.27 11.4207 22.27 14.1707 20.43C16.5907 18.81 16.5907 16.17 14.1707 14.56C11.4307 12.73 6.9207 12.73 4.1607 14.56Z" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M18.3398 20C19.0598 19.85 19.7398 19.56 20.2998 19.13C21.8598 17.96 21.8598 16.03 20.2998 14.86C19.7498 14.44 19.0798 14.16 18.3698 14" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>                                                                              
                        </div>
                        {if $num_people_in_group == 1}
                            <div class="detail__aside-ditem__t">Индивидуальные занятия</div>
                        {else}
                            <div class="detail__aside-ditem__t">Мест в группе - {$num_people_in_group}</div>
                        {/if}
                    </div>
                    {/if}
                </div>

           {*include 'file:chunks/compare/compare.button.tpl'*}

            {if ('' | isloggedin : 'web')}
                {if (($isEmployees) || ($isOK && ($promote['lead'] > 0))) && $confirm_phone}
                    {if $isUID}
                        <button class="btn w-all" data-open-popup="call_to_school_reg" data-groupid="{$page_id}">Обратный звонок</button>
                    {else}
                        <button class="btn btn--more">
                            <span>Звонок заказан</a>
                        </button>
                    {/if}
                {else}
                    {if ($isEmployees) || ((!$confirm_phone) && ($promote['lead'] > 0))}<button class="btn w-all" data-open-popup="confirm_phone_msg">Обратный звонок</button>{/if}
                {/if}
            {else}
                <button class="btn w-all" data-open-popup="call_to_school" data-groupid="{$page_id}">Обратный звонок</button>
            {/if}            
            
            
            {include 'file:chunks/favorites/favorites.like.tpl' type_name='courses'}

                            
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
                {if (($isEmployees) || (($isOK) && ($promote['lead'] > 0))) && $confirm_phone} {*('!checkBudget' | snippet : ['page_id'=>$page_id]) &&*}
                    {'!promocode' | snippet :[]}
                    <button class="btn add-promocode" data-pageid="{$page_id}" data-type="{$isCourseTemplate?'template':'group'}" data-sale="{$isSale?1:0}">{$btnSale}</button>
                {else}
                    {if ($isEmployees) || ((!$confirm_phone) && ($promote['lead'] > 0))}<button class="btn" data-open-popup="confirm_phone_msg">{$btnSale}</button>{/if}
                {/if}
            {else}
                <button class="btn" data-open-popup="auth_sale">{$btnSale}</button>
            {/if}
            
            
        
        
        {set $scoolsList = '!getAddressSchools' | snippet: ['school_id'=>$_modx->resource.course_owner]}
        {if is_array($scoolsList)}
        <br><br>
        <br><br>
        <ul>
            <br><br>
            <b>Адреса филиалов</b>
            <br><br>
        {set $i = 0}
        {foreach $scoolsList as $address}
            {set $i += 1}
            <li>{$address}</li><br>
        {/foreach}
        </ul>
        {/if}               
            
        </div>
        {/if}
    </div>
</div>


