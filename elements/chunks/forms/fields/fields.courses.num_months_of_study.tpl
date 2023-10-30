<div class="clearfix" style="position: relative;">
    <input type="text" class="input" name="num_months_of_study" id="num_months_of_study" placeholder="Кол-во месяцев обучения {if $req==1}*{/if}" value="[[!+fi.num_months_of_study]]" {if $req==1}required{/if}>                
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Кол-во месяцев обучения</div>
    {/if}
</div>