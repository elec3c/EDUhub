{set $page_id = $page_id ?: $res.id}
{set $pid = ($page_id | resource: 'parent')}
{set $user_id  = ($page_id | resource: 'course_owner')}
{set $phone = ($user_id | user:'phone')}
{set $fullname = ($user_id | user:'fullname')}
{set $site = ($user_id | user:'website')}

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
                        
                            <li class="listinf__flex">
                                <div class="listinf__str">{if $.php.is_array($city) && $city[$city_lat]}г. {$city[$city_lat]}{/if}{if $.php.is_array($region) && $region[$region_lat]}, район
                                    {$region[$region_lat]}{/if}{if $.php.is_array($metro) && $metro[$metro_lat]}, метро {$metro[$metro_lat]}{/if}</div>
                            </li>
                            
                        {/if}
                        
                        
                        
                        
                    {if $fullname && $site}
                        <li>
                            <a href="{$site}" class="listinf__flex">
                                <div class="listinf__icon"><img src="/assets/images/icons/global.svg" alt="global"></div>
                                <div class="listinf__str">{$fullname}</div>
                            </a>
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
        
        {if ('' | isloggedin : 'web')}
            {if !$_modx->user.urlico && !$_modx->user.manager}
                {if $cnt == 0}
                    <button class="btn w-all" data-open-popup="call_to_school_reg" data-groupid="{$page_id}">Заказать звонок</button>
                {/if}
            {/if}
        {else}
            <button class="btn w-all " data-open-popup="call_to_school" data-groupid="{$page_id}">Заказать звонок</button>
        {/if}
           {include 'file:chunks/compare/compare.button.tpl'}

            {if !$_modx->user.urlico && !$_modx->user.manager}
                {include 'file:chunks/favorites/favorites.like.tpl' type_name='courses'}
            {/if}
            {if '!checkBudget' | snippet : ['page_id'=>$page_id]}
                {'!promocode' | snippet :[]}
                {if $_modx->user.id == 0}
                    <button class="btn btn--bdpurple" data-open-popup="auth_course">Получить скидку</button>
                {elseif !$_modx->user.urlico and !$_modx->user.manager}
                    <button class="btn btn--bdpurple add-promocode" data-id="{$page_id}">Получить скидку</button>
                {/if}
            {/if}
        </div>
        {/if}
    </div>
</div>