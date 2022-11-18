{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<select name="course_city" data-placeholder="Город" class="{$styler}" id="course_city" {if $req==1}required{/if}>
<option value=""></option>
    [[!getListCities? &name=`city` &option=`1` &curr = `[[+fi.course_city]]` &chained=`offline`]];
</select>