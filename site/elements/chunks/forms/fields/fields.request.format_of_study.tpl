{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                            
<div class="clearfix" style="position: relative;">
    <select name="format_of_study" id="format_of_study" data-placeholder="Формат обучения {if $req==1}*{/if}" class="{$styler}" {if $req==1}required{/if}>
        <option class="option-hide" value=""></option>
        [[!getValuesTV?  &tvid = `89` &curr = `[[!+fi.format_of_study]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Формат обучения</div>
    {/if}
</div>