{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<select name="course_city" data-placeholder="Город" class="{$styler}" id="course_city">
<option value=""></option>
    [[!getValuesTV?  &tvid = `40` &chained = `minsk` &curr = `[[+fi.course_city]]`]]
</select>