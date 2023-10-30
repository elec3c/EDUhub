{insert 'file:chunks/partnership/partnership.data.prepare.tpl'}


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
                <div>Любой курс</div>
                <div>{$discount}{$discount_unit} ({$discount_for_what})</div>
            </div>
            {else}
                {$sales_list}
            {/if}
        </div>
            
        <div class="ssrequest__item-rowc">
            <div class="ssrequest__item-label">Примечание</div>
            {if $type=='diff'}{$query['detail_diff']}{else}{$query['detail']}{/if}
        </div>
                
        </div>
</div>