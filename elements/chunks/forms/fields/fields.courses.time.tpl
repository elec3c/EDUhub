{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                            
<select name="time" data-placeholder="Время" class="{$styler}">
    <option value=""></option>
    [[!getValuesTV?  &tvid = `66` &curr = `[[+fi.time]]`]]
</select>