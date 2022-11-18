{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                
                <select name="num_people_in_group" data-placeholder="Количество человек в группе" class="{$styler}" {if $req==1}required{/if}>
<option value=""></option>
                    [[!getValuesTV?  &tvid = `26` &curr = `[[+fi.num_people_in_group]]`]]
                </select>