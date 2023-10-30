<div class="clearfix" style="position: relative;">
    <input type="text" class="input" name="price_course_month" id="price_course_month" placeholder="Стоимость курса в месяц в руб. {if $req==1}*{/if}" value="[[!+fi.price_course_month]]" {if $req==1}required{/if}>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Стоимость курса в месяц в руб.</div>
    {/if}
</div>