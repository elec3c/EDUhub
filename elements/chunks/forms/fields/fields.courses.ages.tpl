{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}

<select name="for_ages" data-placeholder="Возраст" class="{$styler}" {if $req==1}required{/if}>
<option value=""></option>
    [[!getValuesTV?  &tvid = `59` &curr = `[[+fi.for_ages]]`]]
</select>

