{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}    


<div class="choose__inputs-item">
    <label for="mse2_tv|course_continue_0" class="form__lcheck">
        <input type="checkbox" name="course_continue" id="mse2_tv|course_continue_0" value="1" class="styler" {if $.get.course_continue == 1}checked{/if}><span>Показать действующие группы с набором</span>
    </label>
</div>


