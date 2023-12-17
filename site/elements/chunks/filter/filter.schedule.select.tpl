{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="schedule" id="schedule" data-placeholder="{$caption}" class="styler" {if $req==1}required{/if}>
    <option class="option-hide" value=""></option>
    [[!getValuesTV? &tvid=`65`  &curr=`[[+fi.schedule]]`]]
</select>
</div>