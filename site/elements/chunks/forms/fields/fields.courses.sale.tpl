<div class="clearfix" style="position: relative;">
    <input type="text" class="input" name="sale" placeholder="Размер скидки в руб. {if $req==1}*{/if}" {if $.get.edit > 0}value="[[!+fi.sale]]"{else}value="10"{/if} {if $req==1}required{/if} {if $border==1}style="border:1px solid red;"{/if}>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Размер скидки в руб. </div>
    {/if}
</div>
