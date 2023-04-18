{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}

<div class="clearfix" style="position: relative;">
    <select name="course_sub_category" data-placeholder="Подкатегория курса {if $req==1}*{/if}" class="{$styler}" id="sub_category-select" {if $req==1}required{/if}>
        <option value=""></option>
        [[!getList? &id=`11` &option=`1` &chained=`11` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`10` &option=`1` &chained=`10` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`520` &option=`1` &chained=`520` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`521` &option=`1` &chained=`521` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`522` &option=`1` &chained=`522` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`523` &option=`1` &chained=`523` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`524` &option=`1` &chained=`524` &curr=`[[+fi.course_sub_category]]`]]    
        [[!getList? &id=`623` &option=`1` &chained=`623` &curr=`[[+fi.course_sub_category]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Подкатегория курса</div>
    {/if}
</div>