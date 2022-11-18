{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="form_of_study" data-placeholder="{$caption}" class="styler" {if $req==1}required{/if} id="form_of_study">
<option value=""></option>
	[[!getValuesTV? &tvid=`25` &curr=`[[+fi.form_of_study]]` &chained=`offline`]]
</select>
</div>

