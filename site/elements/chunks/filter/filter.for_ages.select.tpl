{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="for_ages" id="for_ages" data-placeholder="{$caption}" class="styler" {if $req==1}required{/if}>
<option class="option-hide" value=""></option>
    {if $.get.for_ages}
        {'!getValuesTV' | snippet: ['tvid' => '59', 'curr'=>'{$.get.for_ages}']}
    {else}
        [[!getValuesTV?  &tvid = `59` &curr = `[[+fi.for_ages]]`]]
    {/if}
</select>
</div>

