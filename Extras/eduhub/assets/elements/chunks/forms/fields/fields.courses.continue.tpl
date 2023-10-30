{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}    
        

{if $.get.edit > 0}
{set $course_continue  = $.get.edit | resource: 'course_continue'}
{else}
{set $course_continue = 0}
{/if}

<div class="clearfix" style="position: relative;">
    <label class="form__lcheck"><input type="checkbox" class="{$styler}" name="course_continue" {if $course_continue == 1}checked{/if}>
    {if $hide!=1}
        <span>Продолжить набор в группу после старта группы</span>
    {else}
        <span>Показать действующие группы с набором</span>
    {/if}
    </label>
{if $hide!=1}
    {include 'file:chunks/forms/fields/fields.courses.data_continue.tpl' req=0}
{/if}
</div>