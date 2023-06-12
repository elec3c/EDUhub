<div class="clearfix" style="position: relative;">
    <input type="text" class="input" name="lesson_duration" placeholder="Длительность занятия в мин. {if $req==1}*{/if}" value="[[+fi.lesson_duration]]" {if $req==1}required{/if}>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Длительность занятия в мин.</div>
    {/if}
</div>