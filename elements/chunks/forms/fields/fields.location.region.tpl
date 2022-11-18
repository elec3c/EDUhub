{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<select name="course_region" data-placeholder="Район" class="{$styler}" id="course_region" {if $req==1}required{/if}>
<option value=""></option>
    [[!getListCities? &name=`districts` &chained = `minsk` &city=`Минск` &option=`1` &curr = `[[+fi.course_region]]`]];
    [[!getListCities? &name=`districts` &chained = `brest` &city=`Брест` &option=`1` &curr = `[[+fi.course_region]]`]];
    [[!getListCities? &name=`districts` &chained = `grodno` &city=`Гродно` &option=`1` &curr = `[[+fi.course_region]]`]];
    
    [[-!getValuesTV? &tvid = `48` &chained = `minsk` &curr = `[[+fi.course_region]]`]]
    [[-!getValuesTV? &tvid = `49` &chained = `brest` &curr = `[[+fi.course_region]]`]]
    [[-!getValuesTV? &tvid = `50` &chained = `grodno` &curr = `[[+fi.course_region]]`]]
</select>