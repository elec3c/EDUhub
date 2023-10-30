{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<div class="clearfix" style="position: relative;">
    <select name="course_region" data-placeholder="Район {if $req==1}*{/if}" class="{$styler}" id="course_region" {if $req==1}required{/if}>
        <option class="option-hide" value="">&nbsp;</option>
        [[!getListCities? &name=`districts` &chained = `minsk` &city=`Минск` &option=`1` &curr = `[[+fi.course_region]]`]]
        [[!getListCities? &name=`districts` &chained = `brest` &city=`Брест` &option=`1` &curr = `[[+fi.course_region]]`]]
        [[!getListCities? &name=`districts` &chained = `grodno` &city=`Гродно` &option=`1` &curr = `[[+fi.course_region]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn top">Район</div>
    {/if}
</div>