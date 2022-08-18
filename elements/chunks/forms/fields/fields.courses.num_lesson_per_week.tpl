{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                
                <select name="num_lesson_per_week" data-placeholder="Кол-во занятий в неделю" class="{$styler}">
                    <option value=""></option>
                    [[!getValuesTV?  &tvid = `20` &curr = `[[+fi.num_lesson_per_week]]`]]
                </select>