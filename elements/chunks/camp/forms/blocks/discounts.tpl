{set $discounts = $data['pricesAndDiscounts']['data']['discounts']}
<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Скидки</div>
    </div>
    <div class="cmp_create__blocks-body js-accord-body">
        <div class="cmp_create__imw cmp_create__fixed-discounts mb-10">
            <div class="cmp_create__irow">
                <div class="cmp_create__ci cmp_create__rowsale">
                    <div class="cmp_create__ci-wall">
                        <div class="cmp_create__irow-label">Кому</div>
                        <input type="text" name="" class="input input--camp" value="Сотрудникам компаний - партнеров" readonly>
                    </div>
                    <div>
                        <div class="cmp_create__irow-label">Размер (руб)</div>
                        <input type="text" name="{$prefixForm}staff_discount_price" class="input input--camp cmp_create__inpwsm" placeholder="0 руб" value="{$data['pricesAndDiscounts']['data']['staffDiscountPrice']}">
                    </div>
                </div>
            </div>
            <span class="invalid-feedback" data-error="{$prefixForm}staff_discount_price"></span>
            <div class="cmp_create__irow">
                <div class="cmp_create__ci cmp_create__rowsale">
                    <div class="cmp_create__ci-wall">
                        <div class="cmp_create__irow-label">Кому</div>
                        <input type="text" name="" class="input input--camp" value="Пользователям сайта" readonly>
                    </div>
                    <div>
                        <div class="cmp_create__irow-label">Размер (руб)</div>
                        <input type="text" name="{$prefixForm}users_discount_price" class="input input--camp cmp_create__inpwsm" placeholder="0 руб" value="{$data['pricesAndDiscounts']['data']['usersDiscountPrice']}">
                    </div>
                </div>
            </div>
            <span class="invalid-feedback" data-error="{$prefixForm}users_discount_price"></span>
        </div>
        <div class="cmp_create__ibox cmp_create__imw js-camp-inputs">
            <a href="#" class="cmp_create__ibox-label  js-camp-inputs-add">Добавить скидку</a>
            {if $discounts}
                {foreach $discounts as $key => $row}
                    <div class="cmp_create__irow  js-camp-inputs-row">
                        <a href="#" class="cmp_create__ibox-label {if $key === 0}hide{/if} js-camp-inputs-remove">Удалить скидку</a>
                        <div class="cmp_create__ci cmp_create__rowsale">
                            <div class="cmp_create__ci-wall">
                                <div class="cmp_create__irow-label">Кому</div>
                                <input type="text" name="{$prefixForm}discount_description[]" class="input input--camp" placeholder="" value="{$row.description}">
                            </div>
                            <div>
                                <div class="cmp_create__irow-label">Размер (руб)</div>
                                <input type="text" name="{$prefixForm}discount_price[]" class="input input--camp cmp_create__inpwsm" placeholder="0 руб" value="{$row.price}">
                            </div>
                        </div>
                    </div>
                {/foreach}
            {else}
                <div class="cmp_create__irow  js-camp-inputs-row">
                    <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить скидку</a>
                    <div class="cmp_create__ci cmp_create__rowsale">
                        <div class="cmp_create__ci-wall">
                            <div class="cmp_create__irow-label">Кому</div>
                            <input type="text" name="{$prefixForm}discount_description[]" class="input input--camp" placeholder="">
                        </div>
                        <div>
                            <div class="cmp_create__irow-label">Размер (руб)</div>
                            <input type="text" name="{$prefixForm}discount_price[]" class="input input--camp cmp_create__inpwsm" placeholder="0 руб">
                        </div>
                    </div>
                </div>
            {/if}
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Описание скидок</div>
                <textarea name="{$prefixForm}discount_description_main" class="input input--camp" placeholder="Введите описание">{$data['pricesAndDiscounts']['data']['description']}</textarea>
            </div>
        </div>
    </div>
</div>