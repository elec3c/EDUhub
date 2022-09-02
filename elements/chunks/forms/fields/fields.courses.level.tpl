{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<select name="for_levels" data-placeholder="Уровень" class="{$styler}" id="level-select">
    <option value=""></option>
    [[!getValuesTV? &tvid = `27` &chained=`11`]] <!-- for it -->
    [[!getValuesTV? &tvid = `46` &chained=`10`]] <!-- for lang -->
</select>