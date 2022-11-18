{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<select name="course_category" data-placeholder="Категория курса" class="{$styler}" id="category-select" {if $req==1}required{/if}>
<option value=""></option>
    [[!getValuesTV?  &tvid = `16` &curr = `[[+fi.course_category]]`]]
</select>