{if $_modx->resource.id!=1}<div class="choose__inputs-item">{/if}
<div class="clearfix" style="position: relative;">
    <input type="text" name="data_continue" placeholder="Дата окончания набора {if $req==1}*{/if}" class="input{if $_modx->resource.id==1} input--white{/if} input--date datepicker-input" value="[[+fi.data_continue]]" {*{if $req==1}required{/if}*}>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Дата окончания набора</div>
    {/if}
</div>        
{if $_modx->resource.id!=1}</div>{/if}        
