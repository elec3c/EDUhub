{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="format_of_study" data-placeholder="{$caption}" class="styler" {if $req==1}required{/if}>
<option value=""></option>
	[[!getValuesTV? &tvid=`36` &curr=`[[+fi.format_of_study]]`]]
</select>
</div>