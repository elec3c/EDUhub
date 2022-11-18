{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="for_ages" data-placeholder="{$caption}" class="styler" {if $req==1}required{/if}>
<option value=""></option>
	[[!getValuesTV? &tvid=`59` &curr=`[[+fi.for_ages]]`]]
</select>
</div>

