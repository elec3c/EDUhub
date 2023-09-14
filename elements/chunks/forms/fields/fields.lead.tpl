{set $styler = 'styler styler--white'}
<div class="clearfix" style="position: relative;">
    <select name="lead" id="lead{$prefix}" data-placeholder="Свободные места {if $req==1}*{/if}" class="{$styler}" {if $req==1}required{/if}>
        <option value=""></option>
        [[!getValuesTV? &tvid = `58` &curr = `{$value?:1}`]]
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn top">Свободные места</div>
    {/if}
</div>

