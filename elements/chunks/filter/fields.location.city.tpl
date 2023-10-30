<div class="choose__inputs-item">
<select name="course_city" data-placeholder="Город" class="styler" id="course_city">
    <option class="option-hide" value=""></option>
    [[!getListCities? &name=`city` &option=`1` &chained=`offline` &curr = `[[+fi.course_city]]`]];
    [[-!getValuesTV?  &tvid = `40` &chained = `minsk` &curr = `[[+fi.course_city]]`]]
</select>
</div>