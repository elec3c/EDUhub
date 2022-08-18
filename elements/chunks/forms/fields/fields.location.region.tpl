{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                
                <select name="course_region" data-placeholder="Район" class="{$styler}" 
                    id="region-select">
                    [[!getValuesTV?  &tvid = `41` &chained = `minsk` &curr = `[[+fi.course_region]]`]]
                </select>