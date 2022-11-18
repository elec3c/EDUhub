{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                            
<select name="format_of_study" data-placeholder="Формат обучения" class="{$styler}" {if $req==1}required{/if}>
<option value=""></option>
    [[!getValuesTV?  &tvid = `36` &curr = `[[!+fi.format_of_study]]`]]
</select>