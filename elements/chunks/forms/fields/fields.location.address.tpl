{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}

<select name="course_address" placeholder="Местоположение проведения  курсов" class="{$styler}" id="course_address" {if $req==1}required{/if}>
<option value=""></option>
    {if $_modx->resource.template == 11}
        [[!getListCities? &name=`address` &option=`1` &index=`1` &curr = `[[+fi.course_address]]` &school=`[[+modx.user.id]]`]];
    {else}
        [[!getListCities? &name=`address` &option=`1` &index=`1` &curr = `[[+fi.course_address]]` &school=`0`]];
    {/if}
    [[-!getValuesTV? &tvid = `42` &chained = `minsk` &curr = `[[+fi.course_metro]]`]]
</select>