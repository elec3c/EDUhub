{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<select name="course_metro" data-placeholder="Метро" class="{$styler}" id="course_metro">
    <option value=""></option>
    [[!getValuesTV? &tvid = `42` &chained = `minsk` &curr = `[[+fi.course_metro]]`]]
</select>