<div class="cmp_prices__item-row">
    <div class="cmp_prices__item-label"><span>Стоимость смены</span></div>
    <div class="cmp_prices__item-values">
        <div class="cmp_prices__item-val">
            <div class="cmp_prices__item-current">{$values['fullprice']} руб</div>
        </div>
    </div>
</div>
{foreach $values['table'] as $row}
    <div class="cmp_prices__item-row">
        <div class="cmp_prices__item-label"><span>Стоимость до {$row['date_to'] | date : "d.m.y"}</span></div>
        <div class="cmp_prices__item-values">
            <div class="cmp_prices__item-old">{$values['fullprice']}</div>
            <div class="cmp_prices__item-val">
                <div class="cmp_prices__item-current">{$row['price']} руб</div>
                <div class="cmp_prices__item-date"></div>
            </div>
        </div>
    </div>
{/foreach}