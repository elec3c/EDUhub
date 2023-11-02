{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                            
<select id="employment-select" name="employment" data-placeholder="Трудоустройство" class="{$styler}" {if $req==1}required{/if}>
    <option class="option-hide" value=""></option>
    [[!getValuesTV?  &tvid = `69` &chained=`11` &curr = `[[+fi.employment]]`]]
</select>