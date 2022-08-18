{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                
                <select name="for_ages_to" data-placeholder="Для возраста до" class="{$styler}">
                    <option value=""></option>
                    [[!getValuesTV?  &tvid = `30` &curr = `[[+fi.for_ages_to]]`]]
                </select>