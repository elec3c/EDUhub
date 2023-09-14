{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<div class="clearfix" style="position: relative;">
    <select name="for_ages" data-placeholder="Возраст {if $req==1}*{/if}" class="{$styler}" {if $req==1}required{/if}>
        <option value="">&nbsp;</option>
        [[!getValuesTV?  &tvid = `59` &curr = `[[+fi.for_ages]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Возраст</div>
    {/if}
</div>

