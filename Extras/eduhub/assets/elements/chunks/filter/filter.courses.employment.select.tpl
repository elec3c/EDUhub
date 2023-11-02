{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item">
<select name="employment" data-placeholder="{$caption}" class="styler" id="employment-select">
<option value=""></option>
    {if $.get.employment}
        {'!getValuesTV' | snippet: ['tvid' => '69', 'chained'=>'11', 'curr'=>'{$.get.employment}']}
    {else}
        [[!getValuesTV?  &tvid = `69` &chained=`11` &curr = `[[+fi.employment]]`]]
    {/if}
    
</select>
</div>