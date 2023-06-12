{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<div class="clearfix" style="position: relative;">
    <select name="for_levels" data-placeholder="Уровень {if $req==1}*{/if}" class="{$styler}" id="level-select" {if $req==1}required{/if}>
        <option value=""></option>
        [[!getValuesTV? &tvid = `27` &chained=`11`]] <!-- for it -->
        [[!getValuesTV? &tvid = `46` &chained=`10`]] <!-- for lang -->
        [[!getValuesTV? &tvid = `27` &chained=`520`]] 
        [[!getValuesTV? &tvid = `27` &chained=`521`]] 
        [[!getValuesTV? &tvid = `27` &chained=`522`]] 
        [[!getValuesTV? &tvid = `27` &chained=`523`]] 
        [[!getValuesTV? &tvid = `27` &chained=`524`]] 
        [[!getValuesTV? &tvid = `27` &chained=`623`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Уровень</div>
    {/if}
</div>