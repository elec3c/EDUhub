<div class="replen__item">
    <div class="replen__item-col replen__item-number">{$user_id}</div>
    <div class="replen__item-col replen__item-number">{$unp}</div>
    <div class="replen__item-col replen__item-date">
        <div class="replen__item-label show-tablet-sm">Дата пополнения</div>
        {$date | date_format:'%d.%m.%Y'}
    </div>
    <div class="replen__item-col replen__item-price">
        <div class="replen__item-label show-tablet-sm">Сумма</div>
        {$sum} руб.
    </div>
</div>