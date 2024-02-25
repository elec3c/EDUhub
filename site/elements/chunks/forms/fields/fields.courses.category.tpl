{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<div class="clearfix" style="position: relative;">
    <select name="course_category" data-placeholder="Категория курса {if $req==1}*{/if}" class="{$styler}" id="category-select" {if $req==1}required{/if} {if $disable==1}readonly{/if}>
        <option class="option-hide" value="">&nbsp;</option>
        [[!getValuesTV?  &tvid = `16` &curr = `[[+fi.course_category]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Категория курса</div>
    {/if}
</div>
        