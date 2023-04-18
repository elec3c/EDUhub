{if $_modx->resource.id!=1}<div class="choose__inputs-item">{/if}
<div class="clearfix" style="position: relative;">
    <input type="text" name="data_from" placeholder="Дата с {if $req==1}*{/if}" class="input{if $_modx->resource.id==1} input--white{/if} input--date datepicker-input" value="[[+fi.data_from]]" {*{if $req==1}required{/if}*}>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Дата с</div>
    {/if}
</div>        
{if $_modx->resource.id!=1}</div>{/if}        
