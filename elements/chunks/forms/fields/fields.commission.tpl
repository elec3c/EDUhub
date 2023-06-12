{set $styler = 'styler styler--white'}
<div class="clearfix" style="position: relative;">
    <select name="commission" id="commission" data-placeholder="Комиссия {if $req==1}*{/if}" class="styler" {if $req==1}required{/if}>
        <option value=""></option>
        {if $format_of_study == "group"}
        [[!getValuesTV? &tvid = `56` &curr = `{$value?:""}`]]
        {elseif $format_of_study == "individual"}
        [[!getValuesTV? &tvid = `67` &curr = `{$value?:""}`]]
        {/if}
    </select>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Комиссия</div>
    {/if}
</div>

