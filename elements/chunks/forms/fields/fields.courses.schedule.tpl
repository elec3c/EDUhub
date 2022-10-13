{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                            
<select name="schedule" data-placeholder="Расписание" class="{$styler}">
    <option value=""></option>
    [[!getValuesTV?  &tvid = `65` &curr = `[[+fi.schedule]]`]]
</select>