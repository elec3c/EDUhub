{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}                
<select name="course_type" data-placeholder="Тип" class="{$styler}" id="type-select">
    <option value=""></option>
    [[!getValuesTV? &tvid = `53` &chained=`11` &curr = `[[+fi.course_type]]`]] <!-- for it -->
    [[!getValuesTV? &tvid = `54` &chained=`10` &curr = `[[+fi.course_type]]`]] <!-- for lang -->
</select>