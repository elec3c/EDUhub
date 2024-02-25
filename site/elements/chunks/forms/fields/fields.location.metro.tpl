{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<div class="clearfix" style="position: relative;">
    <select name="course_metro" data-placeholder="Метро {if $req==1}*{/if}" class="{$styler}" id="course_metro" {if $req==1}required{/if}>
        <option class="option-hide" value="">&nbsp;</option>
        [[!getListCities? &name=`metro` &chained = `minsk` &city=`Минск` &option=`1` &curr = `[[+fi.course_metro]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn top">Метро</div>
    {/if}
</div>