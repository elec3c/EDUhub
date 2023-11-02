<div class="clearfix" style="position: relative;">
    <input type="text" class="input" name="course_group_title" placeholder="Название курса {if $req==1}*{/if}" value="[[+fi.course_group_title]]" {if $req==1}required{/if}>
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Название курса</div>
    {/if}
</div>
    