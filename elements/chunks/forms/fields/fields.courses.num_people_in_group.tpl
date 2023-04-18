<div class="clearfix" style="position: relative;">
    <input type="text" class="input" id="num_people_in_group" name="num_people_in_group" placeholder="Максимальное кол-во чел. в группе {if $req==1}*{/if}" value="[[!+fi.num_people_in_group]]" {if $req==1}required{/if}> 
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Максимальное кол-во чел. в группе</div>
    {/if}
</div>               