{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="form_of_study" data-placeholder="{$caption}" class="styler" {if $req==1}required{/if} id="form_of_study">
<option class="option-hide" value=""></option>
    {if $.get.form_of_study}
        {'!getValuesTV' | snippet: ['tvid' => '25', 'chained'=>'offline', 'curr'=>'{$.get.form_of_study}']}
    {else}
        [[!getValuesTV?  &tvid = `25` &chained=`offline` &curr = `[[+fi.form_of_study]]`]]
    {/if}
</select>
</div>

