{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
                <select name="for_levels_from" data-placeholder="Для уровня от" class="{$styler}">
                    <option value=""></option>
                    [[!getValuesTV?  &tvid = `27` &curr = `[[+fi.for_levels_from]]`]]
                </select>