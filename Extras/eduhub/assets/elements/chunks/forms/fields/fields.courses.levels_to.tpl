{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}


{if $.get.edit}
    {set $for_levels_to = $.get.edit | resource : 'for_levels_to'}
{elseif $.get.copy}
    {set $for_levels_to = $.get.copy | resource : 'for_levels_to'}
{/if}

<div class="clearfix" style="position: relative;">
    <select name="for_levels_to" id="level-to-select" data-placeholder="Для уровня до {if $req==1}*{/if}" class="{$styler}" {if $req==1}required{/if}>
        <option value=""></option>
        {$_modx->runSnippet('getValuesTV', ['tvid'=>'27', 'chained'=>'11', 'curr'=>$for_levels_to])}
        {$_modx->runSnippet('getValuesTV', ['tvid'=>'46', 'chained'=>'10', 'curr'=>$for_levels_to])}
        {$_modx->runSnippet('getValuesTV', ['tvid'=>'27', 'chained'=>'520', 'curr'=>$for_levels_to])}
        {$_modx->runSnippet('getValuesTV', ['tvid'=>'27', 'chained'=>'521', 'curr'=>$for_levels_to])}
        {$_modx->runSnippet('getValuesTV', ['tvid'=>'27', 'chained'=>'522', 'curr'=>$for_levels_to])}
        {$_modx->runSnippet('getValuesTV', ['tvid'=>'27', 'chained'=>'523', 'curr'=>$for_levels_to])}
        {$_modx->runSnippet('getValuesTV', ['tvid'=>'27', 'chained'=>'524', 'curr'=>$for_levels_to])}
        {$_modx->runSnippet('getValuesTV', ['tvid'=>'27', 'chained'=>'623', 'curr'=>$for_levels_to])}
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Для уровня до</div>
    {/if}
</div>
