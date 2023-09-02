{set $from_user_id = $.get.user_id? : $_modx->user.id}
{'!Partnership' | snippet :[]}
{insert 'file:chunks/partnership/partnership.data.prepare.tpl'}
{insert 'file:chunks/partnership/partnership.status.color.tpl'}
<div class="cgcourse rollup-box">
    <div class="cghead leads__header lk__wraplr section__lr">
        <div class="title">
            <a href="{1183 | url}?partnership_id={$id}">
                {if $status_id in [5,51]}
                    {if $date_start}<span style="color:green;">{$date_start|date_format:"%d.%m.%Y"}</span> / {$to_user_id|user:'fullname'}{/if} ({if $scope}{$scope}, {/if}{$count_employees}&nbsp;{$count_employees | declension : 'сотрудник|сотрудника|сотрудников'})&nbsp;<b style={"color:"~$color}>[{$prefix}]</b>{if $agreement}&nbsp;({$agreement}){/if}
                {elseif $status_id in [6,71]}                        
                    {if $date_stop}<span style="color:red;">{$date_stop|date_format:"%d.%m.%Y"}</span>  / {$to_user_id|user:'fullname'}{/if} ({if $scope}{$scope}, {/if}{$count_employees}&nbsp;{$count_employees | declension : 'сотрудник|сотрудника|сотрудников'})&nbsp;<b style={"color:"~$color}>[{$prefix}]</b>{if $agreement}&nbsp;({$agreement}){/if}
                {else}
                    <b>{if $date_create}{$date_create|date_format:"%d.%m.%Y"}</b> / {$to_user_id|user:'fullname'}{/if} ({if $scope}{$scope}, {/if}{$count_employees}&nbsp;{$count_employees | declension : 'сотрудник|сотрудника|сотрудников'})&nbsp;<b style={"color:"~$color}>[{$prefix}]</b>{if $agreement}&nbsp;({$agreement}){/if}
                {/if}
            </a>
        </div>
        <a href="#" class="link__more rollup-toggle" style="display:block;">
            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
        </a>
    </div>
    <div class="rollup-tab">

        <div class="ssrequest__item lk__wraplr section__lr js-item">
            
            {insert 'file:chunks/partnership/partnership.info.tpl'}
            
            {if $status_id in [0,1,2,3,4,5,6,7,8,9]}
            <div class="ssrequest__item-rcbuttons">
                {include 'file:chunks/partnership/partnership.contact.btn.tpl' user_id=$to_user_id responsible='partnership' title='Контактное лицо'}
                

                {if ($status_id in [1]) && (trim($query['agreement']) == 'agreement_paper')}
                        <button class="btn btn--purple f-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="8" data-agreement="{$query['agreement']}"><span>Подтвердить <span class="nowrap">подписание договора</span></span></button>
                {elseif $status_id in [1]}
                    <button class="btn btn--purple f-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="5" data-agreement="{$query['agreement']}"><span>Подтвердить <span class="nowrap">подписание договора</span></span></button>
                {elseif $status_id in [3]}
                    <button class="btn btn--purple f-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="5" data-agreement="{$query['agreement']}"><span>Подтвердить <span class="nowrap">подписание договора</span></span></button>                
                {elseif $status_id in [8]}                    
                    <button class="btn btn--more"><span>Договор подписан Вами</span></button>                                                        
                {elseif $status_id in [5]}
                    <button class="btn btn--bdrred reject-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="7">Расторгнуть</button>
                {/if}
                {if $status_id in [0]}
                <a class="btn btn--bdrgreen edit-partnership" href="{1180 | url}?edit={$id}">Редактировать</a>
                {/if}            
                {if $status_id in [0,1,2,3,4]}
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