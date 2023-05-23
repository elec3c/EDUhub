{set $from_user_id = $.get.user_id? : $_modx->user.id}

{set $agreement_paper = $to_user_id | user:'agreement_paper'}
{set $agreement_public_offer = $to_user_id | user:'agreement_public_offer'}
{if $agreement_paper && $agreement_public_offer}
    {set $agreement = 'любой способ подписания'}
{elseif $agreement_paper}
    {set $agreement = 'бумажный носитель'}
{elseif $agreement_public_offer}
    {set $agreement = 'публичная оферта EDUHub'}
{/if}

{set $discount = $query['discount']}

{set $r = '!getValuesTV' | snippet : ['tvid'=>'117', 'arr'=>1]}
{set $discount_unit = $r[$query['discount_unit']]}
{set $r = '!getValuesTV' | snippet : ['tvid'=>'116', 'arr'=>1]}
{set $discount_for_what = $r[$query['discount_for_what']]}


{set $r = '!getValuesTV' | snippet : ['tvid'=>'114', 'arr'=>1]}
{set $scope = $r[$to_user_id|user:'scope']}



{'!Partnership' | snippet :[]}
{insert 'file:chunks/partnership/partnership.status.color.tpl'}



<div class="cgcourse rollup-box">
    <div class="cghead leads__header lk__wraplr section__lr">
        <div class="cgtitle">
            <a href="{1174 | url}?partnership_id={$id}">Заявка №&nbsp;{$id}&nbsp; / {$from_user_id | user : 'fullname'} / [<b style={"color:"~$color}>{$prefix}</b>]</a>
        </div>
        <a href="#" class="link__more rollup-toggle" style="display:block;">
            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
        </a>
    </div>
    <div class="rollup-tab">

        <div class="ssrequest__item lk__wraplr section__lr js-item">
            <div class="ssrequest__item-4cols">
                <div class="ssrequest__item-4col col--company">
                    <div class="ssrequest__item-label">Компания</div>
                    {$to_user_id|user:'fullname'}<br>Сотрудников - {$to_user_id|user:'count_employees'}<br>Сфера - {$scope}
                </div>
                <div class="ssrequest__item-4col">
                    <div class="ssrequest__item-label">Дата создания</div>
                    {$date_create|date_format:"%d/%m/%Y"}
                    {if $date_start && ($status_id in [3,5])}
                        <div class="ssrequest__item-label">Дата заключени договора</div>
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
            </div>
            <div class="ssrequest__item-4cols">
                <div class="ssrequest__item-4col col--category">
                    <div class="ssrequest__item-label">Список курсов</div>
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
                </div>
                <div class="ssrequest__item-4col">
                    <div class="ssrequest__item-label">Размер скидки / ед.изм</div>
                    {$discount}{$discount_unit}
                    <div class="ssrequest__item-label">На что дается скидка</div>
                    {$discount_for_what}
                </div>
                <div class="ssrequest__item-4col">
                    <div class="ssrequest__item-label">Форма подписания договора</div>
                    {$agreement}
                </div>
                <div class="ssrequest__item-4col col--note">
                    <div class="ssrequest__item-label">Примечание</div>
                    <div class="ssrequest__item-note">{$detail}</div>
                </div>
            </div>
            {if $status_id in [0,1,2,3,4,5,6,7,9]}
            <div class="ssrequest__item-rcbuttons">
                {include 'file:chunks/partnership/partnership.contact.btn.tpl' user_id=$to_user_id responsible='partnership' title='Контактное лицо'}
                
                {if $status_id in [1]}
                <button class="btn btn--purple f-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="5"><span>Подтвердить <span class="nowrap">подписание договора</span></span></button>
                {elseif $status_id in [3,5]}
                    <button class="btn btn--bdrred reject-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="7">Расторгнуть</button>
                {/if}                
                {if $status_id in [0,1,2,3,4,5]}
                <a class="btn btn--bdrred delete-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="9">Удалить</a>
                {/if}
                {if $status_id in [6,7,9]}
                <a href="{1169 | url}?delete={$id}" class="btn btn--bdrred">Удалить безвозвратно</a>
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