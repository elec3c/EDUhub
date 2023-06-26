{set $from_user_id = $.get.user_id? : $_modx->user.id}

{set $discount = $query['discount']}

{set $a_agreement = '!getValuesTV' | snippet : ['tvid'=>'115', 'arr'=>1]}
{set $agreement = $a_agreement[$query['agreement']]}

{set $a_discount_unit = '!getValuesTV' | snippet : ['tvid'=>'118', 'arr'=>1]}
{set $discount_unit = $a_discount_unit[$query['discount_unit']]}

{set $a_discount_for_what = '!getValuesTV' | snippet : ['tvid'=>'119', 'arr'=>1]}
{set $discount_for_what = $a_discount_for_what[$query['discount_for_what']]}


{if $type == 'diff'}


{if is_array($query['sales'])}
    {set $sales = $query['sales']}
{else}
    {set $sales = []} 
{/if}

{set $sales_list = '!pdoResources' | snippet : [
    'parents'=>'61',
    'depth'=>0,
    'limit'=>0,
    'includeTVs'=>'course_group_title, course_owner',
    'sales'=>$sales,
    'a_discount_for_what'=>$a_discount_for_what,
    'a_discount_unit'=>$a_discount_unit,
        
        'tpl'=>'@CODE 
        
                        {set $discount = $sales[$id][\'discount\']}
                        {set $discount_unit = $a_discount_unit[$sales[$id][\'discount_unit\']]}
                        {set $discount_for_what = $a_discount_for_what[$sales[$id][\'discount_for_what\']]}
                        
                        {if intval($discount) && !empty($discount_unit) && !empty($discount_for_what)}
                            <option value="{$id}">{$_pls[\'tv.course_group_title\']?:$pagetitle}&nbsp;{$discount}&nbsp;{$discount_unit}&nbsp;({$discount_for_what})</option>                                        
                        {/if}
                                
                ',
        'tplWrapper'=>'@INLINE <select name="template">{$output}</select>',
                                'where'=>["course_owner"=>$from_user_id]
                                
                            ]?:'-'}

{/if}



{set $r = '!getValuesTV' | snippet : ['tvid'=>'114', 'arr'=>1]}
{set $scope = $r[$to_user_id|user:'scope']}

{set $count_employees = $to_user_id|user:'count_employees'}



{'!Partnership' | snippet :[]}
{insert 'file:chunks/partnership/partnership.status.color.tpl'}



<div class="cgcourse rollup-box">
    <div class="cghead leads__header lk__wraplr section__lr">
        <div class="title">
            {if $status_id in [0,1,2]}
            <a href="{1183 | url}?partnership_id={$id}">{if $date_create}{$date_create|date_format:"%d.%m.%Y"}&nbsp;{$to_user_id|user:'fullname'}{/if} ({if $scope}{$scope}, {/if}{$count_employees}&nbsp;{$count_employees | declension : 'сотрудник|сотрудника|сотрудников'})&nbsp;[<b style={"color:"~$color}>{$prefix}</b>]</a>
            {else}
            <a href="{1183 | url}?partnership_id={$id}">{if $date_start}{$date_start|date_format:"%d.%m.%Y"}&nbsp;{$to_user_id|user:'fullname'}{/if} ({if $scope}{$scope}, {/if}{$count_employees}&nbsp;{$count_employees | declension : 'сотрудник|сотрудника|сотрудников'})&nbsp;[<b style={"color:"~$color}>{$prefix}</b>]</a>
            {/if}
        </div>
        <a href="#" class="link__more rollup-toggle" style="display:block;">
            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
        </a>
    </div>
    <div class="rollup-tab">

        <div class="ssrequest__item lk__wraplr section__lr js-item">
            {*<div class="ssrequest__item-4cols">
                <div class="ssrequest__item-4col col--company">
                    <div class="ssrequest__item-label">Компания</div>
                    {$to_user_id|user:'fullname'}<br>Сотрудников - {$to_user_id|user:'count_employees'}<br>Сфера - {$scope}
                </div>
                <div class="ssrequest__item-4col">
                    <div class="ssrequest__item-label">Дата создания</div>
                    {$date_create|date_format:"%d/%m/%Y"}
                    
                    
                    {if $date_start && ($status_id in [3,5])}
                        <div class="ssrequest__item-label">Дата заключения договора</div>
                        {$date_start|date_format:"%d/%m/%Y"}
                    {/if}
                    {if $date_stop && ($status_id in [6,7])}
                        <div class="ssrequest__item-label">Дата расторжения договора</div>
                        {$date_stop|date_format:"%d/%m/%Y"}
                    {/if}                    
                    
                </div>

                <div class="ssrequest__item-4col">
                    <div class="ssrequest__item-label">Статус</div>
                    <b style={"color:"~$color}>{$status}</b>
                </div>
            </div>*}
            <div class="ssrequest__item-4cols">
                <div class="ssrequest__item-4col col--category">
                    <div class="ssrequest__item-label">Список курсов</div>
                    {if $type=='diff'}
                    <ul>
                        {set $couses_list = '!pdoResources' | snippet : [
                            'parents'=>'61',
                            'returnIds'=>'1',
                            'depth'=>0,
                            'limit'=>0,
                            'includeTVs'=>'course_group_title, course_owner',
                            'where'=>["course_owner"=>$from_user_id]
                        ]}
                        {set $courses_all = explode(',', $couses_list)}
                        {foreach $courses_all as $k=>$v}
                            {set $title = $v | resource : 'pagetitle'}
                            {if intval($v) && $title}
                                <li>{$title |truncate:60:" ..."}</li>
                            {/if}
                        {/foreach}
                    </ul>
                    {else}
                         Любой курс школы
                    {/if}
                </div>
                <div class="ssrequest__item-4col">
                    <div class="ssrequest__item-label">Размер скидки / ед.изм</div>
                    {if $type != 'diff'}
                    {$discount}{$discount_unit}
                    <div class="ssrequest__item-label">На что дается скидка</div>
                    {$discount_for_what}
                    {else}
                        {$sales_list}
                    {/if}
                </div>
                <div class="ssrequest__item-4col">
                    <div class="ssrequest__item-label">Форма подписания договора</div>
                    {$agreement}
                </div>
                <div class="ssrequest__item-4col col--note">
                    <div class="ssrequest__item-label">Примечание</div>
                    <div class="ssrequest__item-note">{if $type=='diff'}{$query['detail_diff']}{else}{$query['detail']}{/if}</div>
                </div>
            </div>
            {if $status_id in [0,1,2,3,4,5,6,7,9]}
            <div class="ssrequest__item-rcbuttons">
                {include 'file:chunks/partnership/partnership.contact.btn.tpl' user_id=$to_user_id responsible='partnership' title='Контактное лицо'}
                
                {if $status_id in [1]}
                    <button class="btn btn--purple f-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="5" data-agreement="{$query['agreement']}"><span>Подтвердить <span class="nowrap">подписание договора</span></span></button>
                {elseif $status_id in [3]}
                    <button class="btn btn--purple f-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="5" data-agreement="{$query['agreement']}"><span>Компания подтвердила <span class="nowrap">подписание договора</span></span></button>                
                {elseif $status_id in [5]}
                    <button class="btn btn--bdrred reject-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="7">Расторгнуть</button>
                {/if}                
                {if $status_id in [0,1,2,3,4,5]}
                <a class="btn btn--bdrred delete-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="9">Удалить</a>
                {/if}
                {if $status_id in [6,7,9]}
                <a class="btn btn--bdrred clear-partnership" data-id="{$id}">Удалить безвозвратно</a>
                {/if}                
            </div>
            {/if}
            {if $status_id in [9]}
            <div class="ssrequest__item-rcbuttons">
                <a class="btn btn--bdrred delete-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="0">Восстановить</a>
            </div>
            {/if}
        </div><!--ssrequest__item-->
    </div>
</div>                    