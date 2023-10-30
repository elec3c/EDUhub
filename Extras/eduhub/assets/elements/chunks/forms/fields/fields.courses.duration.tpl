<div class="clearfix" style="position: relative;">
    <input type="text" class="input" name="course_duration" placeholder="Длительность курса в часах {if $req==1}*{/if}" value="[[+fi.course_duration]]" {if $req==1}required{/if}>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Длительность курса в часах</div>
    {/if}
</div>