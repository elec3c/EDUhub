{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item">
<select name="for_levels" data-placeholder="{$caption}" class="styler" id="level-select" {if $req==1}required{/if}>
<option value=""></option>
    {if $_modx->resource.id == 11 || $_modx->resource.parent == 11}
        {if $.get.for_levels}
            {'!getValuesTV' | snippet: ['tvid' => '27', 'chained'=>'11', 'curr'=>'{$.get.for_levels}']}
        {else}
            [[!getValuesTV? &tvid = `27` &chained=`11` &curr=`[[+fi.for_levels]]`]]
        {/if}    
    {elseif $_modx->resource.id == 10 || $_modx->resource.parent == 10}
        {if $.get.for_levels}
            {'!getValuesTV' | snippet: ['tvid' => '46', 'chained'=>'10', 'curr'=>'{$.get.for_levels}']}
        {else}
            [[!getValuesTV? &tvid = `46` &chained=`10` &curr=`[[+fi.for_levels]]`]]
        {/if}    
    {elseif $_modx->resource.id == 520 || $_modx->resource.parent == 520}
        {if $.get.for_levels}
            {'!getValuesTV' | snippet: ['tvid' => '27', 'chained'=>'520', 'curr'=>'{$.get.for_levels}']}
        {else}
            [[!getValuesTV? &tvid = `27` &chained=`520` &curr=`[[+fi.for_levels]]`]]
        {/if}    
    {elseif $_modx->resource.id == 521 || $_modx->resource.parent == 521}        
        {if $.get.for_levels}
            {'!getValuesTV' | snippet: ['tvid' => '27', 'chained'=>'623', 'curr'=>'{$.get.for_levels}']}
        {else}
            [[!getValuesTV? &tvid = `27` &chained=`623` &curr=`[[+fi.for_levels]]`]]
        {/if}    
        [[!getValuesTV? &tvid = `27` &chained=`521` &curr=`[[+fi.for_levels]]`]] 
    {elseif $_modx->resource.id == 522 || $_modx->resource.parent == 522}        
        {if $.get.for_levels}
            {'!getValuesTV' | snippet: ['tvid' => '27', 'chained'=>'522', 'curr'=>'{$.get.for_levels}']}
        {else}
            [[!getValuesTV? &tvid = `27` &chained=`522` &curr=`[[+fi.for_levels]]`]]
        {/if}    
    {elseif $_modx->resource.id == 523 || $_modx->resource.parent == 523}        
        {if $.get.for_levels}
            {'!getValuesTV' | snippet: ['tvid' => '27', 'chained'=>'623', 'curr'=>'{$.get.for_levels}']}
        {else}
            [[!getValuesTV? &tvid = `27` &chained=`623` &curr=`[[+fi.for_levels]]`]]
        {/if}    
        [[!getValuesTV? &tvid = `27` &chained=`523` &curr=`[[+fi.for_levels]]`]] 
    {elseif $_modx->resource.id == 524 || $_modx->resource.parent == 524}        
        {if $.get.for_levels}
            {'!getValuesTV' | snippet: ['tvid' => '27', 'chained'=>'524', 'curr'=>'{$.get.for_levels}']}
        {else}
            [[!getValuesTV? &tvid = `27` &chained=`524` &curr=`[[+fi.for_levels]]`]]
        {/if}    
    {elseif $_modx->resource.id == 623 || $_modx->resource.parent == 623}        
        {if $.get.for_levels}
            {'!getValuesTV' | snippet: ['tvid' => '27', 'chained'=>'623', 'curr'=>'{$.get.for_levels}']}
        {else}
            [[!getValuesTV? &tvid = `27` &chained=`623` &curr=`[[+fi.for_levels]]`]]
        {/if}    
    {else}
            [[!getValuesTV? &tvid = `27` &chained=`11` &curr=`[[+fi.for_levels]]`]]
            [[!getValuesTV? &tvid = `46` &chained=`10` &curr=`[[+fi.for_levels]]`]]        
            [[!getValuesTV? &tvid = `27` &chained=`520` &curr=`[[+fi.for_levels]]`]]        
            [[!getValuesTV? &tvid = `27` &chained=`623` &curr=`[[+fi.for_levels]]`]]        
            [[!getValuesTV? &tvid = `27` &chained=`521` &curr=`[[+fi.for_levels]]`]] 
            [[!getValuesTV? &tvid = `27` &chained=`522` &curr=`[[+fi.for_levels]]`]]    
    {/if}
</select>
</div>