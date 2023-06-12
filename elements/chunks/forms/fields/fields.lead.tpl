{set $styler = 'styler styler--white'}
<div class="clearfix" style="position: relative;">
    <select name="lead" id="lead" data-placeholder="Лиды {if $req==1}*{/if}" class="styler" {if $req==1}required{/if}>
        <option value=""></option>
        [[!getValuesTV? &tvid = `58` &curr = `{$value}`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Лиды</div>
    {/if}
</div>

