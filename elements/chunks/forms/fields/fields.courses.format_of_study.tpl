{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                            
<select name="format_of_study" data-placeholder="Формат обучения" class="{$styler}">
    <option value=""></option>
    {'!getValuesTV' | snippet: ['tvid' => '36']}
</select>