{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                
<div class="clearfix" style="position: relative;">
    <select name="num_lesson_per_week" data-placeholder="Кол-во занятий в неделю {if $req==1}*{/if}" class="{$styler}" {if $req==1}required{/if}>
        <option value=""></option>
        [[!getValuesTV?  &tvid = `20` &curr = `[[+fi.num_lesson_per_week]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Кол-во занятий в неделю</div>
    {/if}
</div>