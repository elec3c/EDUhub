{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
{set $res_id = $.get.edit?:$.get.copy}
{set $curr = $res_id | resource : 'for_ages_from'}
<div class="clearfix" style="position: relative;">
    <select name="for_ages_from" data-placeholder="Для возраста от {if $req==1}*{/if}" class="{$styler}" id="for_ages_from" {if $req==1}required{/if}> 
        <option class="option-hide" value="">пусто</option>
        {foreach 2..100 as $value}
        <option value="{$value}" {if $value==$curr}selected{/if}>{$value}</option>
        {/foreach}
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn top">Для возраста от</div>
    {/if}
</div>