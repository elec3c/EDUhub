{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<select name="course_sub_category" data-placeholder="Подкатегория курса" class="{$styler}" id="sub_category-select">
<option value=""></option>
    [[!getList? &id=`11` &option=`1` &chained=`11` &curr=`[[+fi.course_sub_category]]`]]
    [[!getList? &id=`10` &option=`1` &chained=`10` &curr=`[[+fi.course_sub_category]]`]]
</select>