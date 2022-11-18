{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<select name="course_sub_category_type" data-placeholder="Направление" class="{$styler}" id="sub_category_type-select" {if $req==1}required{/if}>
<option value=""></option>
    [[!getValuesTV?  &tvid = `61` &chained=`44` &curr = `[[+fi.course_sub_category_type]]`]] <!-- for programming -->
</select>