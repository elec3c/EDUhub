{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<select name="for_ages_from" data-placeholder="Для возраста от" class="{$styler}" id="for_ages_from">
    <option  value=""></option>
    {foreach 2..100 as $value}
        <option value="{$value}" >{$value}</option>
    {/foreach}
</select>