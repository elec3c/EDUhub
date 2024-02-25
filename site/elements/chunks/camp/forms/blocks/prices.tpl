{set $pricesOutcall = $data['pricesOutcall']['data']['table']}
<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Стоимость</div>
    </div>

    <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
        <a href="#" class="cmp_create__ibox-label  js-camp-inputs-add">Добавить цену</a>
        <div class="cmp_create__ibox cmp_create__imw">
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Полная стоимость</div>
                <input type="number" name="{$prefixForm}outcall_fullprice" class="input input--camp" placeholder="" value="{$data['pricesOutcall']['data']['fullprice']}">
            </div>
            <span class="invalid-feedback" data-error="{$prefixForm}outcall_fullprice"></span>
        </div>
        {if $pricesOutcall}
            {foreach $pricesOutcall as $idx => $item}
                <div class="cmp_create__ibox js-camp-inputs-row">
                    <a href="#" class="cmp_create__ibox-label {if $idx == 0}hide{/if} js-camp-inputs-remove">Удалить цену</a>
                    <div class="cmp_create__irow cmp_create__addprice">
                        <div class="cmp_create__addprice-inputs cmp_create__ci">
                            <div>
                                <div class="cmp_create__irow-label">Цена</div>
                                <input type="text" name="{$prefixForm}outcall_price[]" class="input input--camp cmp_create__inpwsm" placeholder="0 руб" value="{$item['price']}">
                            </div>
                            <div>
                                <div class="cmp_create__irow-label">Действует до</div>
                                <input type="text" name="{$prefixForm}outcall_price_date_to[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата до" value="{$item['date_to'] | date : "d.m.Y"}">
                            </div>
                        </div>
                    </div>
                </div>
            {/foreach}
        {else}
            <div class="cmp_create__ibox js-camp-inputs-row">
                <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить цену</a>
                <div class="cmp_create__irow cmp_create__addprice">
                    <div class="cmp_create__addprice-inputs cmp_create__ci">
                        <div>
                            <div class="cmp_create__irow-label">Цена</div>
                            <input type="text" name="{$prefixForm}outcall_price[]" class="input input--camp cmp_create__inpwsm" placeholder="0 руб">
                        </div>
                        <div>
                            <div class="cmp_create__irow-label">Действует до</div>
                            <input type="text" name="{$prefixForm}outcall_price_date_to[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата до">
                        </div>
                    </div>
                </div>
            </div>
        {/if}
    </div>
</div>