{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}    
<div class="clearfix" style="position: relative;">
    <select name="form_of_payment" data-placeholder="Форма оплаты {if $req==1}*{/if}" class="{$styler}" {if $req==1}required{/if}>
        <option value=""></option>
        [[!getValuesTV?  &tvid = `85` &curr = `[[+fi.form_of_payment]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Форма оплаты</div>
    {/if}
</div>