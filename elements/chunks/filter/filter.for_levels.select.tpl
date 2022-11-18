{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item">
<select name="for_levels" data-placeholder="{$caption}" class="styler" id="level-select" {if $req==1}required{/if}>
<option value=""></option>
    {if $_modx->resource.id == 11 || $_modx->resource.parent == 11}
        [[!getValuesTV? &tvid = `27` &chained=`11` &curr=`[[+fi.for_levels]]`]] <!-- for it -->
    {elseif $_modx->resource.id == 10 || $_modx->resource.parent == 10}
        [[!getValuesTV? &tvid = `46` &chained=`10` &curr=`[[+fi.for_levels]]`]] <!-- for lang -->
    {else}
        [[!getValuesTV? &tvid = `27` &chained=`11` &curr=`[[+fi.for_levels]]`]] <!-- for it -->
        [[!getValuesTV? &tvid = `46` &chained=`10` &curr=`[[+fi.for_levels]]`]] <!-- for lang -->
    {/if}
</select>
</div>