{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="schedule" data-placeholder="{$caption}" class="styler" {if $req==1}required{/if}>
<option value=""></option>
    {if $.get.schedule}
        {'!getValuesTV' | snippet: ['tvid' => '65', 'curr'=>'{$.get.schedule}']}
    {else}
        [[!getValuesTV? &tvid=`65`  &curr=`[[+fi.schedule]]`]]
    {/if} 
</select>
</div>