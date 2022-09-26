<div class="choose__inputs-item">
    <select name="course_metro" data-placeholder="Метро" class="styler" id="course_metro">
        <option value=""></option>
        [[!getValuesTV? &tvid = `42` &chained = `minsk` &curr = `[[+fi.course_metro]]`]]
    </select>
</div>
{if !('standard' | mobiledetect)}
</div>
{/if}