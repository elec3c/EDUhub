<div class="choose__inputs-item">
<select name="course_region" data-placeholder="Район" class="styler" id="course_region">
    <option class="option-hide" value=""></option>
    {if $.get.course_region}
        {'!getListCities' | snippet: ['name' => 'districts', 'chained'=>'minsk', 'city'=>'Минск', 'option'=>'1', 'curr'=>'{$.get.course_region}']}
        {'!getListCities' | snippet: ['name' => 'districts', 'chained'=>'brest', 'city'=>'Брест', 'option'=>'1', 'curr'=>'{$.get.course_region}']}
        {'!getListCities' | snippet: ['name' => 'districts', 'chained'=>'grodno', 'city'=>'Гродно', 'option'=>'1', 'curr'=>'{$.get.course_region}']}
    {else}
        [[!getListCities? &name=`districts` &chained = `minsk` &city=`Минск` &option=`1` &curr = `[[+fi.course_region]]`]];
        [[!getListCities? &name=`districts` &chained = `brest` &city=`Брест` &option=`1` &curr = `[[+fi.course_region]]`]];
        [[!getListCities? &name=`districts` &chained = `grodno` &city=`Гродно` &option=`1` &curr = `[[+fi.course_region]]`]];
    {/if}        
</select>
</div>