{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item">
<select name="{$filter_key}" id="{$table}{$delimeter}{$filter}_0" class="styler" data-placeholder="{$caption}">
 <option value=""></option>
     {$rows}
</select>
</div>

