{switch $filter}
    {case 'camp_ages'}
        {set $titleSelect = 'Возраст'}
{/switch}
<div class="cmp_filters__item" id="mse2_{$table}{$delimeter}{$filter}">
    <div class="cmp_filters__item-title">{$titleSelect}</div>
    <div class="cmp_filters__item-content">
        <select class="styler styler--camp" data-placeholder="выбрать" name="{$filter_key}" id="{$table}{$delimeter}{$filter}_0">
            <option value="" selected>Не выбрано</option>
            {$rows}
        </select>
    </div>
</div>