{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                
                <select name="lesson_duration" data-placeholder="Длительность занятия" class="{$styler}">
                    <option value=""></option>
                    [[!getValuesTV?  &tvid = `21` &curr = `[[+fi.lesson_duration]]`]]
                </select>