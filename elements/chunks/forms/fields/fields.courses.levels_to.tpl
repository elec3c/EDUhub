{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<select name="for_levels_to" id="level-to-select" data-placeholder="Для уровня до" class="{$styler}" {if $req==1}required{/if}>
<option value=""></option>
    [[!getValuesTV? &tvid = `27` &chained=`11` &curr = `[[+fi.for_levels_to]]`]] <!-- for it -->
    [[!getValuesTV? &tvid = `46` &chained=`10` &curr = `[[+fi.for_levels_to]]`]] <!-- for lang -->
</select>