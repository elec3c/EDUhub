<div class="clearfix" style="position: relative;">
    <input type="text" class="input" id="price_lesson" name="price_lesson" placeholder="Стоимость занятия в руб. {if $req==1}*{/if}" value="[[!+fi.price_lesson]]" {if $req==1}required{/if}>
    {if $_modx->resource.template == 11}        
    <div class="tool-tip slideIn bottom">Стоимость занятия в руб.</div>
    {/if}
</div>