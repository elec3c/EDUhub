{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item">
<select name="course_sub_category_type" data-placeholder="{$caption}" class="styler" id="sub_category_type-select">
    <option value=""></option>
    {if $.get.course_sub_category_type}
        {'!getValuesTV' | snippet: ['tvid' => '61', 'chained'=>'44', 'curr'=>'{$.get.course_sub_category_type}']}
    {else}
        [[!getValuesTV?  &tvid = `61` &chained=`44` &curr = `[[+fi.course_sub_category_type]]`]]
    {/if}    
</select>
</div>