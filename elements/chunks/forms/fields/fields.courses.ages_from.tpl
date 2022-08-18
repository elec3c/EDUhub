{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                
                <select name="for_ages_from" data-placeholder="Для возраста от" class="{$styler}">
                    <option value=""></option>
                    [[!getValuesTV?  &tvid = `29` &curr = `[[+fi.for_ages_from]]`]]
                </select>