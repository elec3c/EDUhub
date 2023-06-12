{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}                
<div class="clearfix" style="position: relative;">
    <select name="course_type" data-placeholder="Особенности {if $req==1}*{/if}" class="{$styler}" id="type-select" {if $req==1}required{/if}> 
        <option value=""></option>
        [[!getValuesTV? &tvid = `53` &chained=`11` &curr = `[[+fi.course_type]]`]] <!-- for it -->
        [[!getValuesTV? &tvid = `54` &chained=`10` &curr = `[[+fi.course_type]]`]] <!-- for lang -->
        [[!getValuesTV? &tvid = `53` &chained=`520` &curr = `[[+fi.course_type]]`]]
        [[!getValuesTV? &tvid = `53` &chained=`521` &curr = `[[+fi.course_type]]`]] 
        [[!getValuesTV? &tvid = `53` &chained=`522` &curr = `[[+fi.course_type]]`]] 
        [[!getValuesTV? &tvid = `53` &chained=`523` &curr = `[[+fi.course_type]]`]] 
        [[!getValuesTV? &tvid = `53` &chained=`524` &curr = `[[+fi.course_type]]`]] 
        [[!getValuesTV? &tvid = `53` &chained=`623` &curr = `[[+fi.course_type]]`]] 
    </select>
    {if $_modx->resource.template == 11}    
    <div class="tool-tip slideIn bottom">Особенности</div>
    {/if}
</div>