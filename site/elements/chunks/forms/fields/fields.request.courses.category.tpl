{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
<div class="clearfix" style="position: relative;">
    <select name="course_category{if $disable==1}1{/if}" data-placeholder="Категория курса {if $req==1}*{/if}" class="{$styler}" id="category-select" {if $req==1}required{/if} {if $disable==1}disabled{/if}>
        <option class="option-hide" value=""></option>
        [[!getValuesTV?  &tvid = `16` &curr = `[[+fi.course_category]]`]]
    </select>
    {if $disable==1}
        <input name="course_category" type="hidden" value="[[+fi.course_category]]" id="category-select">
    {/if}
    {if $_modx->resource.id == 804 && $.get.edit}
    <div class="tool-tip slideIn bottom">Для смены категории, удалите текущий тендер и запустить новый.</div>
    {/if}
</div>
        