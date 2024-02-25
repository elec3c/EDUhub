{'!Partnership' | snippet :[]}
{insert 'file:chunks/partnership/partnership.data.prepare.tpl'}
<div class="sale__item">
    <div class="lk__wraplr sale__item-wrap section__lr">
        <div class="sale__item-col sale__item-photo">
            {include "file:chunks/courses/courses.block.photo.tpl" user_id=$from_user_id}
        </div>
        <div class="sale__item-col sale__item-info">
            {set $schoolsPageID = '!getSchoolsPageID' | snippet :['schools_id'=>$from_user_id]?:'#'}
            <h3 class="sale__item-title">{if $schoolsPageID != '#'}<a href="{$schoolsPageID | url}">{/if}{'!getSchoolsName' | snippet :['user_id'=>$from_user_id]?:'Школы не существует'}{if $schoolsPageID != '#'}</a>{/if}</h3>
        </div>
        <div class="sale__item-col sale__item-dop">
            <div class="sale__item-col sale__item-numb">
                <div class="sale__item-label">Скидка</div>
                <b style="color:green;">{$discount}{$discount_unit} ({$discount_for_what})</b><br>
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
                    -
                    {*set $created_timestamp = $created | date : "Y-m-d" |strtotime*}
                    {*set $data_to = $.php.strtotime("+28 days", $created_timestamp)*}
                    {*$data_to | date : "d.m.Y"*}
                </div>
            </div>
        {if $active and empty($deleted)} {* empty($deal) *}
            <div class="sale__item-col sale__item-remove">
                <a href="" class="a-promocode-remove" data-id="{$id}" data-type="{'template'}" data-pageid="{$page_id}">
                    <img src="/assets/images/icons/remove.svg" alt="">
                </a>
            </div>
        {else}
            <div class="sale__item-col sale__item-remove"></div>
        {/if}
        </div>
    </div>
