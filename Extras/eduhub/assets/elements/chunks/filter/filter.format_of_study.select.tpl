{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="format_of_study" data-placeholder="{$caption}" class="styler" {if $req==1}required{/if}>
<option value=""></option>
    {if $.get.format_of_study}
        {'!getValuesTV' | snippet: ['tvid' => '36', 'curr'=>'{$.get.format_of_study}']}
    {else}
        [[!getValuesTV?  &tvid = `36`  &curr = `[[+fi.format_of_study]]`]]
    {/if}
</select>
</div>