{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<select name="course_sub_category_type" data-placeholder="Тип курса" class="{$styler}" id="sub_category_type-select">
    <option value=""></option>
    [[!getValuesTV?  &tvid = `61` &chained=`44` &curr = `[[+fi.course_sub_category_type]]`]] <!-- for programming -->
</select>