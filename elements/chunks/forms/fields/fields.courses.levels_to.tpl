{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<select name="for_levels_to" id="level-to-select" data-placeholder="Для уровня до" class="{$styler}" >
    <option  value=""></option>

    [[!getValuesTV? &tvid = `28` &chained=`11`   &curr = `[[+fi.for_levels_from]]`]]
    [[!getValuesTV? &tvid = `47` &chained=`10`   &curr = `[[+fi.for_levels_from]]`]]

</select>