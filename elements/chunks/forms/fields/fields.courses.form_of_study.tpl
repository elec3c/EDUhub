{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}

<select name="form_of_study" data-placeholder="Форма обучения" class="{$styler}">
    <option value=""></option>
    [[!getValuesTV?  &tvid = `25` &curr = `[[+fi.form_of_study]]`]]
</select>