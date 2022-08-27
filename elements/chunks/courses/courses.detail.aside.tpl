{set $page_id = $page_id ?: $res.id}
{set $user_id  = ($page_id | resource: 'course_owner')}
{set $phone = ($user_id | user:'phone')}
{set $fullname = ($user_id | user:'fullname')}
{set $site = ($user_id | user:'site')}

<div class="detail__aside">
    <div class="detail__sticky">
        <div class="dcard">
            <div class="dcard__photo">
                {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$user_id}
            </div>
            <div class="dcard__info">
                <div class="dcard__title">Контакты</div>
                <ul class="listinf dcard__list">

                    {if $_modx->resource.course_address}
                        <li class="listinf__flex">
                            <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt="location"></div>
                            <div class="listinf__str">{$_modx->resource.course_address}</div>
                        </li>
                    {else}
                        {set $city = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_city', 'resourceId' => $_modx->resource.id]))}
                        {set $region = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_region', 'resourceId' => $_modx->resource.id]))}
                        {set $metro = ($_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_metro', 'resourceId' => $_modx->resource.id]))}
                        <li class="listinf__flex">
                            <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt="location"></div>
                            <div class="listinf__str">{if $city}г. {$city}{/if}{if $region}, район
                                {$region}{/if}{if $metro}, метро {$metro}{/if}</div>
                        </li>
                    {/if}
                    {if $fullname}
                        <li>
                            <a href="{$site ? $site : '#'}" class="listinf__flex">
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
        </div>

        <div class="btns_cfs detail__aside-buttons">
            
        {if ('' | isloggedin : 'web')}
            {if !$_modx->user.urlico && !$_modx->user.manager}
                <button class="btn w-all"  data-open-popup="call_to_school_reg">Заказать звонок</button>
            {/if}
        {else}
        
            {'!addComparison' | snippet: [
                'list_id' => 174,
                'list' => 'courses',
                'id' => $_modx->resource.id,
                'tpl' => 'compare.add.tpl',
            ]}   
    
        
            <button class="btn w-all "  data-open-popup="call_to_school">Заказать звонок</button>
        {/if}    
        {if !$_modx->user.urlico && !$_modx->user.manager}
            {include 'file:chunks/favorites/favorites.like.tpl' type_name='courses'}
        {/if}
            {if $.php.time() < $.php.strtotime($_modx->resource.data_to)}
                {'!promocode' | snippet :['data_to' => $_modx->resource.data_to]}
                {if $_modx->user.id == 0}
                    <button class="btn btn--bdpurple" data-open-popup="auth_course">Получить скидку</button>
                {elseif !$_modx->user.urlico and !$_modx->user.manager}
                    <button class="btn btn--bdpurple" data-open-popup="sale_add">Получить скидку</button>
                {/if}
            {/if}
        </div>
    </div>
</div>