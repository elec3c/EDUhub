<div class="clearfix" style="position: relative;">
    <input type="text" class="input" name="price_course" id="price_course" placeholder="Стоимость курса в руб. {if $req==1}*{/if}" value="[[!+fi.price_course]]" {if $req==1}required{/if}>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Стоимость курса в руб.</div>
    {/if}
</div>