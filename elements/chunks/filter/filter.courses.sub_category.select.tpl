{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item">
<select name="course_sub_category" data-placeholder="{$caption}" class="styler" id="sub_category-select">
<option value=""></option>
{if $_modx->resource.id == 11} 
    [[!getList? &id=`11` &option=`1` &chained=`11` &curr=`[[+fi.course_sub_category]]`]]
{elseif $_modx->resource.id == 10}
    [[!getList? &id=`10` &option=`1` &chained=`10` &curr=`[[+fi.course_sub_category]]`]]
{else}
    [[!getList? &id=`11` &option=`1` &chained=`11` &curr=`[[+fi.course_sub_category]]`]]
    [[!getList? &id=`10` &option=`1` &chained=`10` &curr=`[[+fi.course_sub_category]]`]]
{/if}
</select>
</div>