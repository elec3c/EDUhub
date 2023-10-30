{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<div class="clearfix" style="position: relative;">
    <select name="course_sub_category_type" data-placeholder="Направление {if $req==1}*{/if}" class="{$styler}" id="sub_category_type-select" {if $req==1}required{/if}>
        <option value="">&nbsp;</option>
        [[!getValuesTV?  &tvid = `61` &chained=`44` &curr = `[[+fi.course_sub_category_type]]`]] <!-- for programming -->
        
        [[!getValuesTV?  &tvid = `121` &chained=`1348` &curr = `[[+fi.course_sub_category_type]]`]] <!-- for dancing -->
        [[!getValuesTV?  &tvid = `122` &chained=`1349` &curr = `[[+fi.course_sub_category_type]]`]]
        [[!getValuesTV?  &tvid = `123` &chained=`1351` &curr = `[[+fi.course_sub_category_type]]`]]
        [[!getValuesTV?  &tvid = `124` &chained=`1352` &curr = `[[+fi.course_sub_category_type]]`]]
        [[!getValuesTV?  &tvid = `125` &chained=`1353` &curr = `[[+fi.course_sub_category_type]]`]]
        [[!getValuesTV?  &tvid = `126` &chained=`1354` &curr = `[[+fi.course_sub_category_type]]`]]
        [[!getValuesTV?  &tvid = `127` &chained=`1355` &curr = `[[+fi.course_sub_category_type]]`]]
        [[!getValuesTV?  &tvid = `128` &chained=`1356` &curr = `[[+fi.course_sub_category_type]]`]]
        
        [[!getValuesTV?  &tvid = `131` &chained=`1364` &curr = `[[+fi.course_sub_category_type]]`]] <!-- for photo-video-audio -->
        
        [[!getValuesTV?  &tvid = `132` &chained=`1368` &curr = `[[+fi.course_sub_category_type]]`]] <!-- for sport -->
        [[!getValuesTV?  &tvid = `133` &chained=`1369` &curr = `[[+fi.course_sub_category_type]]`]]
        [[!getValuesTV?  &tvid = `134` &chained=`1372` &curr = `[[+fi.course_sub_category_type]]`]]
        
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Направление</div>
    {/if}
</div>