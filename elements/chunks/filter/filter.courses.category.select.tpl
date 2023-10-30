<div class="choose__inputs-item">
{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<select name="course_category" class="styler" data-placeholder="{$caption}" id="category-select">
    <option class="option-hide" value=""></option>
    {if $.get.course_category}
        {'!getValuesTV' | snippet: ['tvid' => '16', 'curr'=>'{$.get.course_category}']}
    {else}
        [[!getValuesTV?  &tvid = `16` &curr = `[[+fi.course_category]]`]]
    {/if}
</select>
</div> 