{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item">
<select name="course_sub_category_type" data-placeholder="{$caption}" class="styler" id="sub_category_type-select">
    <option value=""></option>
    [[!getValuesTV?  &tvid = `61` &chained=`44` &curr = `[[+fi.course_sub_category_type]]`]] 
</select>
</div>