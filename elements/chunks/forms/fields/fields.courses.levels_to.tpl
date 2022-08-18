{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
                <select name="for_levels_to" data-placeholder="Для уровня до" class="{$styler}">
                    <option value=""></option>
                    [[!getValuesTV?  &tvid = `28` &curr = `[[+fi.for_levels_to]]`]]
                </select>