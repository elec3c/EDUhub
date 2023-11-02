<div class="clearfix" style="position: relative;">        
    <div class="cadd__inputs">
        <textarea name="introtext" rows="4" cols="50" placeholder="Описание курса {if $req==1}*{/if}" class="input tmp-disabled" {if $req==1}required{/if}>[[!+fi.introtext]]</textarea>
    </div>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Описание курса</div>
    {/if}
</div>