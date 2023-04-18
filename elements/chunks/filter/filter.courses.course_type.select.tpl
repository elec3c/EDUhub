{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item"> 
<select name="course_type" data-placeholder="{$caption}" class="styler" id="type-select" {if $req==1}required{/if}>
<option value=""></option>
    {if $_modx->resource.id == 11 || $_modx->resource.parent == 11}
        {if $.get.course_type}
            {'!getValuesTV' | snippet: ['tvid'=>'53', 'chained'=>'11', 'curr'=>'{$.get.course_type}']}
        {else}
            [[!getValuesTV? &tvid = `53` &chained=`11` &curr=`[[+fi.course_type]]`]] <!-- for it -->
        {/if}    
    
        
    {elseif $_modx->resource.id == 10 || $_modx->resource.parent == 10}
        {if $.get.course_type}
            {'!getValuesTV' | snippet: ['tvid'=>'54', 'chained'=>'10', 'curr'=>'{$.get.course_type}']}
        {else}
            [[!getValuesTV? &tvid = `54` &chained=`10` &curr=`[[+fi.course_type]]`]] <!-- for lang -->
        {/if}
    {else}
        {if $.get.course_type}
            {'!getValuesTV' | snippet: ['tvid'=>'53', 'chained'=>'11', 'curr'=>'{$.get.course_type}']}
            {'!getValuesTV' | snippet: ['tvid'=>'54', 'chained'=>'10', 'curr'=>'{$.get.course_type}']}
        {else}
            [[!getValuesTV? &tvid = `53` &chained=`11` &curr=`[[+fi.course_type]]`]] <!-- for it -->
            [[!getValuesTV? &tvid = `54` &chained=`10` &curr=`[[+fi.course_type]]`]] <!-- for lang -->
        {/if}    

    {/if}
</select>
</div>