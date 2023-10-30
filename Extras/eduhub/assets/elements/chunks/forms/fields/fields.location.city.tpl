{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<div class="clearfix" style="position: relative;">
    <select name="course_city" data-placeholder="Город {if $req==1}*{/if}" class="{$styler}" id="course_city" {if $req==1}required{/if}>
        <option value=""></option>
        [[!getListCities? &name=`city` &option=`1` &curr = `[[+fi.course_city]]` &chained=`offline`]];
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Город</div>
    {/if}
</div>