{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}

<div class="clearfix" style="position: relative;">
    <select name="form_of_study" data-placeholder="Форма обучения {if $req==1}*{/if}" class="{$styler}" id="form_of_study" {if $req==1}required{/if}>
        <option value=""></option>
        [[!getValuesTV?  &tvid = `87` &curr = `[[!+fi.form_of_study]]`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Форма обучения</div>
    {/if}
</div>