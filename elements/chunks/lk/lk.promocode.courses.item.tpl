{set $page_id = $page_id ?: $res_id}

{set $course_owner  = $page_id | resource: 'course_owner'}
{set $num_months_of_study =  $page_id | resource: 'num_months_of_study'}
{set $price_course =  $page_id | resource: 'price_course'}


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
    {set $discount          = $partnershipDiscount['discount']}
    {set $discount_unit     = $partnershipDiscount['discount_unit']}
    {set $discount_for_what = $partnershipDiscount['discount_for_what']}
    {set $unit              = $partnershipDiscount['unit']}
    {set $for_what          = $partnershipDiscount['for_what']}
                        
    {insert 'file:chunks/courses/courses.calc.discount.tpl'}                     

   
    
{elseif ($sale > 0) && ($price_course > $sale)}
    {set $isSale = 1}
    {set $discount = $sale}
    {set $price_course_sale = $price_course - $sale}
    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_sale])}
    {*set $title_sale = 'EDUHub '~$discount~' руб. '~$discount_unit~' (от стоимости курса)'*}   
{else}
    {set $isSale = 0}
    {set $discount = "Нет скидки"}
{/if}

                                <div class="sale__item">
                                    <div class="lk__wraplr sale__item-wrap section__lr">
                                        <div class="sale__item-col sale__item-photo">
                                            {set $course_address = $_modx->runSnippet("pdoField", ["field" => "course_address", "id"=>$res_id])}
                                            {set $course_owner = $_modx->runSnippet("pdoField", ["field" => "course_owner", "id"=>$res_id])}
                                            {set $addr = $_modx->runSnippet("getListCities", ["name"=>"address", "uid"=>$course_address, "arr"=>1, "index"=>1])}
                                            {include "file:chunks/courses/courses.block.photo.tpl" user_id=$course_owner}
                                        </div>
                                        <div class="sale__item-col sale__item-info">
                                            <h3 class="sale__item-title"><a href="{$res_id | url}">{str_replace("Шаблон","Курс",$pagetitle)}</a></h3>
                                            <ul class="sale__item-list listinf">
                                                {*if $form_of_study=='offline'}Офлайн{else}Онлайн{/if}-обучение*}
                                                {set $form_of_study = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'form_of_study', 'resourceId' => $page_id]))}
                                                <li class="sale__item-training online">{$form_of_study}</li>
                                                {if $course_address && $addr[$course_address]}    
                                                <li class="listinf__flex">
                                                    <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt=""></div> 
                                                    <div class="listinf__str">{$addr[$course_address]}</div>
                                                </li>
                                                {/if}
                                                
                                                {if $course_address}
                                                {set $a =  $modx->runSnippet("getListCities", ["name"=>"city,district,metro", "uid"=>$course_address, "arr"=>1, "index"=>1])}
                                                {set $city_lat = ($res_id | resource: "course_city")}
                                                {set $region_lat = ($res_id | resource: "course_region")}
                                                {set $metro_lat = ($res_id | resource: "course_metro")}
                                                
                                                {set $city = $_modx->runSnippet("getListCities", ["name" => "city", "arr"=>1])}
                                                {set $region = $_modx->runSnippet("getListCities", ["name" => "districts", "arr"=>1, "city"=>$city[$city_lat]])}
                                                {set $metro = $_modx->runSnippet("getListCities", ["name" => "metro", "arr"=>1])}
                                            
                                                <li class="listinf__flex">
                                                    <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt=""></div> 
                                                    <div class="listinf__str">{$course_address}{if $.php.is_array($city) && $city[$city_lat]}г. {$city[$city_lat]}{/if}{if $.php.is_array($region) && $region[$region_lat]}, район
                                                        {$region[$region_lat]}{/if}{if $.php.is_array($metro) && $metro[$metro_lat]}, метро {$metro[$metro_lat]}{/if}
                                                        {if !$city[$city_lat] && !$region[$region_lat] && $metro[$metro_lat]}
                                                            {$course_address}
                                                        {/if}
                                                    </div>
                                                </li>                                                
                                                {/if}                    
                                                
                                                {if $website}
                                                <li>
                                                    <a href="{$website}" class="listinf__flex">
                                                        <div class="listinf__icon"><img src="/assets/images/icons/global.svg" alt=""></div>
                                                        <div class="listinf__str">{$website}</div>
                                                    </a>    
                                                </li>
                                                {/if}
                                            </ul>
                                        </div>
                                        <div class="sale__item-col sale__item-dop">
                                            <div class="sale__item-col sale__item-numb">
                                                <div class="sale__item-label">Скидка</div>
                                                  {if $discount > 0}
                                                      <b style="color:green;">{floor($calc_discount?:$discount)~' руб.'}</b><br>
                                                      {$title_sale}
                                                  {else}
                                                      {$discount}
                                                  {/if}
                                                  
                                                 
                                            </div>
                                            <div class="sale__item-col sale__item-code">
                                                <div class="sale__item-label">Промокод</div>
                                                {if $active and empty($deleted)}
                                                    {$code}
                                                {else}
                                                    Отменен
                                                {/if}
                                            </div>
                                            <div class="sale__item-col sale__item-date">
                                                <div class="sale__item-label">Срок действия</div>
                                                {set $created_timestamp = $created | date : "Y-m-d" |strtotime}
                                                {set $data_to = $.php.strtotime("+28 days", $created_timestamp)}
                                                до {$data_to | date : "d.m.Y"}
                                            </div>
                                        </div>
                                        {if $active and empty($deleted)} {* empty($deal) *}
                                            <div class="sale__item-col sale__item-remove">
                                                <a href="" class="a-promocode-remove" data-id="{$id}" data-type="{$isCourseTemplate?'template':'group'}" data-pageid="{$page_id}">
                                                    <img src="/assets/images/icons/remove.svg" alt="">
                                                </a>
                                            </div>
                                        {else}
                                            <div class="sale__item-col sale__item-remove">
                                            </div>
                                        {/if}
                                    </div>
                                </div>