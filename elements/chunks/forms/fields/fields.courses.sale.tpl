<div class="clearfix" style="position: relative;">
    <input type="text" class="input" name="sale" placeholder="Размер скидки в рублях {if $req==1}*{/if}" {if $.get.edit > 0}value="[[!+fi.sale]]"{else}value="10"{/if} {if $req==1}required{/if}>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Размер скидки в рублях </div>
    {/if}
</div>
