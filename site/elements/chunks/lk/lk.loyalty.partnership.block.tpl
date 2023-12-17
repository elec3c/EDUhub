{insert 'file:chunks/partnership/partnership.data.prepare.tpl'}

{set $countCourses = '!getCountCourses' | snippet : ['user_id' => $from_user_id]}
{set $list = $sales_list}

{set $phone1 = $_modx->user.id | user:'mobilephone'}
{set $phone2 = $_modx->user.id | user:'phone'}
{set $confirm_phone = ( ($.php.preg_replace("/[^\+0-9]/", "", $phone1) == $.php.preg_replace("/[^\+0-9]/", "", $phone2)) ? ($phone2) : (0) )}

{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}
                
{set $isEmployees = (($my_company_id > 0) && ($isCorporate))?1:0}


<div class="ssrequest__item lk__wraplr section__lr js-item">
    <div class="ssrequest__item-4cols">
        <div class="ssrequest__item-4col">
            <div><div class="ssrequest__item-label">Школа</div></div>
            {if intval($schools_id)}
                <div><a href="{$schools_id | url}" class="link">{$from_user_id | user : 'fullname'}</a></div>
            {/if}
            <div style="align:left;margin-top:5px;">
            {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$from_user_id w='100' h='100'}
            </div>
        </div>
        
        
        <div class="ssrequest__item-4col col--category col--cw2">
            <div class="ssrequest__item-rowc2">
                    <div><div class="ssrequest__item-label">Курсы</div></div>
                    <div class="hide-tablet-sm"><div class="ssrequest__item-label">Размер скидки / ед.изм</div></div>
            </div>
            {if $type != 'diff'}
            <div class="ssrequest__item-rowc2">
                {if $curr_direction[0]!=''}
                    {set $category_ids = '&course_category_id='~implode(',',$curr_direction)}
                {else}
                    {set $category_ids = ''}
                {/if}
                {if  $_modx->resource.id in [1397,1121,1126,1136]}
                    <div>{if $countCourses}
                            <a style="text-decoration:underline;" href="{1386 | url}?from_user={$from_user_id}{if trim($category_ids)!=''}{$category_ids}{/if}">Любой курс</a>
                         {else}
                             Нет курсов
                         {/if}
                    </div>
                {else}
                    <div>Любой курс</div>
                {/if}

                <div>{$discount}{$discount_unit} ({$discount_for_what})</div>
            </div>
            {else}
                {$list}
            {/if} 
        </div>
            
        <div class="ssrequest__item-rowc">
            <div class="ssrequest__item-label">Примечание</div>
            {if $type=='diff'}{$query['detail_diff']}{else}{$query['detail']}{/if}
            
            
            
            <p>
            
            {if $countCourses && $type!='diff' && $_modx->user.id==549}
                {set $btnSale = 'Получить промокод'}
                {if ('' | isloggedin : 'web')}
                    {if $isEmployees && $confirm_phone} 
                        {'!promocode' | snippet :[]}
                        <a class="btn add-promocode" style="margin-top:10px;height:32px;" data-pageid="0" data-type="all-template" data-sale="1" data-from="{$from_user_id}" data-to="{$to_user_id}">{$btnSale}</a>
                    {else}
                        {if $isEmployees || !$confirm_phone}<a class="btn" style="margin-top:10px;height:32px;" data-open-popup="confirm_phone_msg">{$btnSale}</a>{/if}
                    {/if}
                {else}
                    <a class="btn" style="margin-top:10px;height:32px;" data-open-popup="auth_sale">{$btnSale}</a>
                {/if}            
                
            {/if}
            
            
            
            {if $list != '-'}
                <a class="btn" style="margin-top:10px;height:32px;" href="{1386 | url}?from_user={$from_user_id}{if trim($category_ids)!=''}{$category_ids}{/if}">Показать курсы</a>
            {/if}            
            
            </p>
            
        </div>
                
        </div>
</div>