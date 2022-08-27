{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<select name="for_levels_from" id="level-from-select" data-placeholder="Для уровня от" class="{$styler}">
    <option value=""></option>
    [[!getValuesTV? &tvid = `27` &chained=`11` &curr = `[[+fi.for_levels_from]]`]] <!-- for it -->
    [[!getValuesTV? &tvid = `46` &chained=`10` &curr = `[[+fi.for_levels_from]]`]] <!-- for lang -->
</select>

