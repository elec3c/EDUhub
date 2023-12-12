{foreach $values.table as $row}
    {switch $row.period}
        {case 'beforeLunch'}
            {set $title = 'Первая половина дня'}
        {case 'afterLunch'}
            {set $title = 'Вторая половина дня'}
        {case 'fullday'}
            {set $title = 'Полный день'}
        {case 'oneday'}
            {set $title = 'Один день'}
    {/switch}
    <div class="cmp_prices__item-row">
        <div class="cmp_prices__item-label">
            <span>{$title} <span class="nowrap">({$row.timeFrom} - {$row.timeTo})</span></span>
        </div>
{*        {$row.prices|print_r}*}
        {foreach $row.prices as $item}
            {set $currentDate = '' | date : "d.m.y"}
            {set $expirationDate = $item.expirationDate | date : "d.m.y" }
            {* Если дата скидки не истекла *}
            {if $expirationDate | strtotime >= $currentDate | strtotime}
                {if $item.price && $item.discountedPrice}
                    <div class="cmp_prices__item-values">
                        <div class="cmp_prices__item-old">{$item.price}</div>
                        <div class="cmp_prices__item-val">
                            <div class="cmp_prices__item-current">{$item.discountedPrice} руб</div>
                            {if $item.expirationDate}
                                <div class="cmp_prices__item-date">до {$expirationDate}</div>
                            {/if}
                        </div>
                    </div>
                {else}
                    <div class="cmp_prices__item-values">
                        <div class="cmp_prices__item-val">
                            <div class="cmp_prices__item-current">{$item.price} руб</div>
                            {if $item.expirationDate}
                                <div class="cmp_prices__item-date">до {$expirationDate}</div>
                            {/if}
                        </div>
                    </div>
                {/if}
            {/if}
        {/foreach}
    </div>
{/foreach}

{*<div class="cmp_prices__item-row">*}
{*    <div class="cmp_prices__item-label"><span>Первая половина дня <span class="nowrap">(08:00 - 13:00)</span></span></div>*}
{*    <div class="cmp_prices__item-values">*}
{*        <div class="cmp_prices__item-old">600</div>*}
{*        <div class="cmp_prices__item-val">*}
{*            <div class="cmp_prices__item-current">250 руб</div>*}
{*            <div class="cmp_prices__item-date"></div>*}
{*        </div>*}
{*    </div>*}
{*</div>*}
{*<div class="cmp_prices__item-row">*}
{*    <div class="cmp_prices__item-label"><span>Вторая половина дня <span class="nowrap">(13:30 - 18:00)</span></span></div>*}
{*    <div class="cmp_prices__item-values">*}
{*        <div class="cmp_prices__item-old">600</div>*}
{*        <div class="cmp_prices__item-val">*}
{*            <div class="cmp_prices__item-current">250 руб</div>*}
{*            <div class="cmp_prices__item-date"></div>*}
{*        </div>*}
{*    </div>*}
{*</div>*}
{*<div class="cmp_prices__item-row">*}
{*    <div class="cmp_prices__item-label"><span>Один день</span></div>*}
{*    <div class="cmp_prices__item-values">*}
{*        <div class="cmp_prices__item-val">*}
{*            <div class="cmp_prices__item-current">100 руб</div>*}
{*        </div>*}
{*    </div>*}
{*</div>*}