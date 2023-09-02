{set $page_id = $page_id ?: $res.id}
{set $pid = $page_id | resource: 'parent'}
{set $user_id  = ($page_id | resource: 'course_owner')}
{set $num_months_of_study  = str_replace(',','.',($page_id | resource: 'num_months_of_study'))}
{set $course_template_id  = ($page_id | resource: 'course_template')}
{set $phone = ($user_id | user:'phone')}
{set $my_company_id  = ($_modx->user.id | user: 'my_company_id')?:0}
{set $fullname = ($user_id | user:'fullname')}
{set $site = ($user_id | user:'website')}

{set $phone1 = $_modx->user.id | user:'mobilephone'}
{set $phone2 = $_modx->user.id | user:'phone'}

{set $confirm_phone = ( ($.php.preg_replace("/[^\+0-9]/", "", $phone1) == $.php.preg_replace("/[^\+0-9]/", "", $phone2)) ? ($phone2) : (0) )}

{set $isOK = ($_modx->user.id | ismember : ['Administrator','Users'])} 
{set $sale  = $.php.intval($page_id | resource: 'sale')}        
{set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id' => $page_id])}

<div class="detail__aside">
    <div class="detail__sticky">
        <div class="dcard">
            <div class="dcard__photo">
                {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$user_id}
            </div>

            {if $_modx->resource.parent != 61}
            
                {if $city[$city_lat] || $region[$region_lat] || $metro[$metro_lat] || $site}                                        
                <div class="dcard__info">
                <div class="dcard__title">Контакты</div>
                <ul class="listinf dcard__list">
                        {if $_modx->resource.course_address}
                            {set $addr = $_modx->runSnippet('getListCities', ['name'=>'address', 'uid'=>$_modx->resource.course_address, 'arr'=>1, 'index'=>1])}
                            {if $addr[$_modx->resource.course_address]}
                            <li class="listinf__flex">
                                <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt=""></div> 
                                    <div class="listinf__str">{$addr[$_modx->resource.course_address]}</div>
                            </li>
                            {/if}
                        
                            {set $a =  $modx->runSnippet('getListCities', ['name'=>'city,district,metro', 'uid'=>$_modx->resource.course_address, 'arr'=>1, 'index'=>1])}
                            {set $city_lat = ($_modx->resource.id | resource: 'course_city')}
                            {set $region_lat = ($_modx->resource.id | resource: 'course_region')}
                            {set $metro_lat = ($_modx->resource.id | resource: 'course_metro')}
                            
                            {set $city = $_modx->runSnippet('getListCities', ['name' => 'city', 'arr'=>1])}
                            {set $region = $_modx->runSnippet('getListCities', ['name' => 'districts', 'arr'=>1, 'city'=>$city[$city_lat]])}
                            {set $metro = $_modx->runSnippet('getListCities', ['name' => 'metro', 'arr'=>1])}
                        
                            {if !$addr[$_modx->resource.course_address]}
                            <li class="listinf__flex">
                                <div class="listinf__str">{if $.php.is_array($city) && $city[$city_lat]}г. {$city[$city_lat]}{/if}{if $.php.is_array($region) && $region[$region_lat]}, район
                                    {$region[$region_lat]}{/if}{if $.php.is_array($metro) && $metro[$metro_lat]}, метро {$metro[$metro_lat]}{/if}</div>
                            </li>
                            {/if}
                            
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
        {if $_modx->resource.parent != 61}
        <div class="btns_cfs detail__aside-buttons">
        {set $cnt = $_modx->runSnippet('!callCheckUID', [
            'user_id'      => $_modx->user.id , 
            'group_id'     => $_modx->resource.id,
            'school_id'    => $user_id
        ])}
        
        
        
                <div class="detail__aside-props w-all">
        
        
                    {set $price_course = $page_id | resource:'price_course'}
                    {set $course_template = $page_id | resource:'course_template'}
                    {set $course_owner = $page_id | resource:'course_owner'}
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
                        
                        
                        {set $title_sale = 'Скидка партнерская '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}   
                        {set $isPartnership = 1}
                        
                        {if $calc_discount > 0}
                            {set $discount = $calc_discount}
                        {else}
                            {set $discount = "Нет скидки"}
                        {/if}
                    {elseif ($sale > 0) && ($price_course > $sale)}
                        {set $title_sale = 'Скидка EDUhub '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}   
                        {set $isSale = 1}
                         {set $discount = $sale}
                    {else}
                        {set $isSale = 0}
                        {set $discount = "Нет скидки"}
                    {/if}
                    
                    {if $discount > 0}
                        {set $discount = "Промокод <br>"~floor($discount)~" руб."}
                    {/if}
                    
                    {include 'file:chunks/courses/course.detail.discount.tpl' discount=$discount}
                    
                    {if $promote['lead']}
                    <div class="detail__aside-ditem detail__aside-ditem--purple">
                        <div class="detail__aside-ditem__icon">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M9.16055 10.87C9.06055 10.86 8.94055 10.86 8.83055 10.87C6.45055 10.79 4.56055 8.84 4.56055 6.44C4.56055 3.99 6.54055 2 9.00055 2C11.4505 2 13.4405 3.99 13.4405 6.44C13.4305 8.84 11.5405 10.79 9.16055 10.87Z" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M16.4093 4C18.3493 4 19.9093 5.57 19.9093 7.5C19.9093 9.39 18.4093 10.93 16.5393 11C16.4593 10.99 16.3693 10.99 16.2793 11" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M4.1607 14.56C1.7407 16.18 1.7407 18.82 4.1607 20.43C6.9107 22.27 11.4207 22.27 14.1707 20.43C16.5907 18.81 16.5907 16.17 14.1707 14.56C11.4307 12.73 6.9207 12.73 4.1607 14.56Z" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M18.3398 20C19.0598 19.85 19.7398 19.56 20.2998 19.13C21.8598 17.96 21.8598 16.03 20.2998 14.86C19.7498 14.44 19.0798 14.16 18.3698 14" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>                                                                              
                        </div>
                        <div class="detail__aside-ditem__t">Свободных <br> мест - {$promote['lead']}</div>
                    </div>
                    {/if}
                </div>


                
        

           {*include 'file:chunks/compare/compare.button.tpl'*}




            {if ('' | isloggedin : 'web')}
                {if $isOK && ($promote['lead'] > 0) && $confirm_phone}
                    {if $cnt == 0}
                        <button class="btn w-all" data-open-popup="call_to_school_reg" data-groupid="{$page_id}">Обратный звонок</button>
                    {else}
                        <button class="btn btn--more">
                            <span>Звонок заказан</a>
                        </button>
                    {/if}
                {else}
                    {if (!$confirm_phone) && ($promote['lead'] > 0)}<button class="btn w-all" data-open-popup="confirm_phone_msg">Обратный звонок</button>{/if}
                {/if}
            {else}
                <button class="btn w-all" data-open-popup="call_to_school" data-groupid="{$page_id}">Обратный звонок</button>
            {/if}            
            
            
            {include 'file:chunks/favorites/favorites.like.tpl' type_name='courses'}
            




                            
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
</div>


