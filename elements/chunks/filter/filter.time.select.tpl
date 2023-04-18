{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="time" data-placeholder="{$caption}" class="styler" {if $req==1}required{/if}>
<option value=""></option>
    {if $.get.time}
        {'!getValuesTV' | snippet: ['tvid' => '66', 'curr'=>'{$.get.time}']}
    {else}
        [[!getValuesTV? &tvid=`66`  &curr=`[[+fi.time]]`]]
    {/if}
</select>
</div>