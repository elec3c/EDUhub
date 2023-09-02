{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}    
<div class="clearfix" style="position: relative;">
    <select name="time" data-placeholder="Время {if $req==1}*{/if}" class="{$styler}" {if $req==1}required{/if}>
        <option value="">&nbsp;</option>
        [[!getValuesTV?  &tvid = `66` &curr = `[[+fi.time]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Время</div>
    {/if}
</div>