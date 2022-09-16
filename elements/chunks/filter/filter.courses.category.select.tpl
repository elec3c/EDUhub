<div class="choose__inputs-item">
{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<select name="course_category" class="styler" data-placeholder="{$caption}" id="category-select">
    <option value=""></option>
    [[!getValuesTV?  &tvid = `16` &curr = `[[+fi.course_category]]`]]
</select>
</div>