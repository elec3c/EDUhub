{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                      
<div class="clearfix" style="position: relative;">
    <select name="schedule" data-placeholder="Расписание {if $req==1}*{/if}" class="{$styler}" {if $req==1}required{/if}>
        <option value="">&nbsp;</option>
        [[!getValuesTV?  &tvid = `65` &curr = `[[+fi.schedule]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Расписание</div>
    {/if}
</div>


