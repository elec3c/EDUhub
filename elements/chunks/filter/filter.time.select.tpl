{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="time" data-placeholder="{$caption}" class="styler" {if $req==1}required{/if}>
<option value=""></option>
	[[!getValuesTV? &tvid=`66`  &curr=`[[+fi.time]]`]]
</select>
</div>