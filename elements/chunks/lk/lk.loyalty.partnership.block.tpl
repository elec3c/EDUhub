{insert 'file:chunks/partnership/partnership.data.prepare.tpl'}

{set $countCourses = '!getCountCourses' | snippet : ['user_id' => $from_user_id]}
{if $type != 'diff'}
    {set $list = $sales_all}
{else}
    {set $list = $sales_list}
{/if}

{set $phone1 = $_modx->user.id | user:'mobilephone'}
{set $phone2 = $_modx->user.id | user:'phone'}
{set $confirm_phone = ( ($.php.preg_replace("/[^\+0-9]/", "", $phone1) == $.php.preg_replace("/[^\+0-9]/", "", $phone2)) ? ($phone2) : (0) )}

{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}
{set $isOK = ($_modx->user.id | ismember : ['Administrator','Users'])}                
{set $isEmployees = (($my_company_id > 0) && ($isCorporate))?1:0}



<div class="cmp_sale__item">
                    <div class="cmp_sale__item-head">
                        <div class="cmp_sale__item-photo">
                            <a href="{$schools_id | url}" class="link">
                            {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$from_user_id w='100' h='100'}
                            </a>
                            {*<img src="assets/images/camp/camp-sale.jpg" alt="">*}
                        </div>
                        <h3 class="cmp_sale__item-title">
                            {if intval($schools_id)}
                                {$from_user_id | user : 'fullname'}
                            {/if}
                        </h3>
                        
                        {set $isUID = $_modx->runSnippet('!callCheckUID', [
                                                           'user_id'      => $_modx->user.id , 
                                                           'group_id'     => $id,
                                                           'school_id'    => $from_user_id,
                                                           'type'         => 'partnership'
                        ])}                        
                        {if $isUID}                        
                            {include 'file:chunks/modals/call_to_school_reg.tpl' groupid=$id schoolid=$from_user_id type='partnership'}
                        {/if}
                        
                        {if ('' | isloggedin : 'web')}
                            {if $isOK && $confirm_phone}
                                {if $isUID}
                                <a class="cmp_sale__item-call hide-tablet" data-open-popup="call_to_school_reg{$id}" data-user="{$from_user_id}" data-schoolid="{$from_user_id}" data-groupid="{$id}">
                                    <span class="cmp_sale__item-call__icon"><img src="assets/images/icons/call-calling.svg" alt=""></span>
                                    <span>Заказать звонок</span>
                                </a>
                                {else}
                                    <a class="cmp_sale__item-call hide-tablet">
                                        <span class="cmp_sale__item-call__icon"><img src="assets/images/icons/call-calling.svg" alt=""></span>
                                        <span>Звонок заказан</span>
                                    </a>                                                                 
                                {/if}
                            {else}
                                 {if !$confirm_phone}
                                    <a class="cmp_sale__item-call hide-tablet" data-open-popup="confirm_phone_msg">
                                        <span class="cmp_sale__item-call__icon"><img src="assets/images/icons/call-calling.svg" alt=""></span>
                                        <span>Обратный звонок</span>
                                    </a>                                 
                                 {/if}
                            {/if}
                        {else}
                            <a class="cmp_sale__item-call hide-tablet" data-open-popup="call_to_school">
                                <span class="cmp_sale__item-call__icon"><img src="assets/images/icons/call-calling.svg" alt=""></span>
                                <span>Заказать звонок</span>
                            </a>  
                        {/if}  
                        
                    </div>
                    <div class="cmp_sale__item-desc show-tablet">{if $type=='diff'}{$query['detail_diff']}{else}{$query['detail']}{/if}</div>
                    <div class="cmp_sale__item-info js-cmp-sale-item-info">
                        
                        {if $type != 'diff'}
                        
                            {if $curr_direction[0]!=''}
                                {set $category_ids = '&course_category_id='~implode(',',$curr_direction)}
                            {else}
                                {set $category_ids = ''}
                            {/if}
                            {if  $_modx->resource.id in [1397,1121,1126,1136]}
                                {if $countCourses}
                                        {$list != '-'?$list:''}
                                        {*<a style="text-decoration:underline;" href="{1386 | url}?from_user={$from_user_id}{if trim($category_ids)!=''}{$category_ids}{/if}">Любой курс</a>*}
                                     {else}
                                         Нет курсов
                                     {/if}
                            {else}
                                Любой курс
                            {/if}
            
                        {else}
                            {$list != '-'?$list:''}
                        {/if}
                        
                        
                        {if ($list != '-') && ($countCourses > 3)}
                        <a href="#" class="cmp_sale__item-lmore  link__more link__more--v2 link--rollreverse js-cmp-sale-item-lmore">
                            <span class="open_t">Развернуть</span><span class="close_t">Свернуть</span>
                        </a>
                        {/if}
                        
                    </div>
                    <div class="cmp_sale__item-action">
                        <div class="cmp_sale__item-desc hide-tablet">{if $type=='diff'}{$query['detail_diff']}{else}{$query['detail']}{/if}</div>
                        <div class="cmp_sale__item-buttons">
                            
                            
                        {if ('' | isloggedin : 'web')}
                            {if $isOK && $confirm_phone}
                                {if $isUID}
                                <a class="cmp_sale__item-call show-tablet" data-open-popup="call_to_school_reg{$id}" data-user="{$from_user_id}" data-schoolid="{$from_user_id}" data-groupid="{$id}">
                                    <span class="cmp_sale__item-call__icon"><img src="assets/images/icons/call-calling.svg" alt=""></span>
                                    <span>Заказать звонок</span>
                                </a>
                                {else}
                                    <a class="cmp_sale__item-call show-tablet">
                                        <span class="cmp_sale__item-call__icon"><img src="assets/images/icons/call-calling.svg" alt=""></span>
                                        <span>Звонок заказан</span>
                                    </a>                                                                 
                                {/if}
                            {else}
                                 {if !$confirm_phone}
                                    <a class="cmp_sale__item-call show-tablet" data-open-popup="confirm_phone_msg">
                                        <span class="cmp_sale__item-call__icon"><img src="assets/images/icons/call-calling.svg" alt=""></span>
                                        <span>Обратный звонок</span>
                                    </a>                                 
                                 {/if}
                            {/if}
                        {else}
                            <a class="cmp_sale__item-call show-tablet" data-open-popup="call_to_school">
                                <span class="cmp_sale__item-call__icon"><img src="assets/images/icons/call-calling.svg" alt=""></span>
                                <span>Заказать звонок</span>
                            </a>  
                        {/if}                            
                            
                            
  
                            
                            {if $countCourses && $type!='diff'}
                                {set $btnSale = 'Получить промокод'}
                                {if ('' | isloggedin : 'web')}
                                    {if $isEmployees && $confirm_phone} 
                                        {'!promocode' | snippet :[]}
                                        <a class="btn btn--purple btn--sm add-promocode" data-pageid="0" data-type="all-template" data-sale="1" data-from="{$from_user_id}" data-to="{$to_user_id}">{$btnSale}</a>
                                    {else}
                                        {if $isEmployees || !$confirm_phone}<a class="btn btn--purple btn--sm" data-open-popup="confirm_phone_msg">{$btnSale}</a>{/if}
                                    {/if}
                                {else}
                                    <a class="btn btn--purple btn--sm" data-open-popup="auth_sale">{$btnSale}</a>
                                {/if}            
                            {/if}                            
                            
                            
                            {if $list != '-'}
                                <a class="btn btn--bdpurple btn--sm" href="{1386 | url}?from_user={$from_user_id}{if trim($category_ids)!=''}{$category_ids}{/if}">Показать курсы</a>
                            {/if}                                        
                            
                        </div>
                    </div>
                </div>
