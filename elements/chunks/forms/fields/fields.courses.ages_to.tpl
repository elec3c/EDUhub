{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}

{set $res_id = $.get.edit?:$.get.copy}
{set $curr = $res_id | resource : 'for_ages_to'}
<div class="clearfix" style="position: relative;">
    <select name="for_ages_to" data-placeholder="Для возраста до {if $req==1}*{/if}" class="{$styler}" id="for_ages_to" {if $req==1}required{/if}>
        <option value=""></option>
        {foreach 2..100 as $value}
        {set $chained = ''}
        {foreach 2..$value as $count}
            {set $chained = $chained ~ $count ~ ' '}
        {/foreach}
        <option value="{$value}" data-chained="{$chained}" {if $value==$curr}selected{/if}>{$value}</option>
        {/foreach}
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Для возраста до</div>
    {/if}
</dvi>