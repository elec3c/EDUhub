<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Варианты посещений</div>
    </div>
    {set $data = $data['visitOptions']['data']['table']}
{*    <pre>*}
{*        {$data|print_r}*}
{*    </pre>*}
    {foreach $data as $row}
        {switch $row.period}
            {case 'fullday'}{* Полный день *}
                {set $checkFullday = true}
                {set $display1 = 'block'}
                {set $description1 = $row.description}
                {set $timeFrom1 = $row.timeFrom}
                {set $timeTo1 = $row.timeTo}
                {set $prices1 = $row.prices}
            {case 'beforeLunch'}{* До обеда *}
                {set $checkBeforeLunch = true}
                {set $display2 = 'block'}
                {set $description2 = $row.description}
                {set $timeFrom2 = $row.timeFrom}
                {set $timeTo2 = $row.timeTo}
                {set $prices2 = $row.prices}
            {case 'afterLunch'}{* После обеда *}
                {set $checkAfterLunch = true}
                {set $display3 = 'block'}
                {set $description3 = $row.description}
                {set $timeFrom3 = $row.timeFrom}
                {set $timeTo3 = $row.timeTo}
                {set $prices3 = $row.prices}
            {case 'oneday'}{* Один день *}
                {set $checkOneday = true}
                {set $display4 = 'block'}
                {set $description4 = $row.description}
                {set $timeFrom4 = $row.timeFrom}
                {set $timeTo4 = $row.timeTo}
                {set $prices4 = $row.prices}
        {/switch}
    {/foreach}
    <div class="cmp_create__blocks-body js-accord-body ">
        <div class="cmp_create__ibox cmp_create__imw">
            <label class="form__lcheck">
                <input type="checkbox" class="styler styler--camp js-cmp-create-visit-show" data-type="1" name="{$prefixForm}visit_options_fullday" {if $checkFullday}checked{/if}>
                <span>Полный день</span>
            </label>
            <label class="form__lcheck">
                <input type="checkbox" class="styler styler--camp js-cmp-create-visit-show" data-type="2" name="{$prefixForm}visit_options_before_lunch" {if $checkBeforeLunch}checked{/if}>
                <span>До обеда</span>
            </label>
            <label class="form__lcheck">
                <input type="checkbox" class="styler styler--camp js-cmp-create-visit-show" data-type="3" name="{$prefixForm}visit_options_after_lunch" {if $checkAfterLunch}checked{/if}>
                <span>После обеда</span>
            </label>
            <label class="form__lcheck">
                <input type="checkbox" class="styler styler--camp js-cmp-create-visit-show" data-type="4" name="{$prefixForm}visit_options_oneday" {if $checkOneday}checked{/if}>
                <span>На 1 день</span>
            </label>
        </div>
        {set $items = [
            '1' => [
                'label' => 'Полный день',
                'labelEn' => 'fullday',
                'display' => $display1 ?: 'none',
                'description' => $description1,
                'timeFrom' => $timeFrom1,
                'timeTo' => $timeTo1,
                'prices' => $prices1
            ],
            '2' => [
                'label' => 'До обеда',
                'labelEn' => 'beforeLunch',
                'display' => $display2 ?: 'none',
                'description' => $description2,
                'timeFrom' => $timeFrom2,
                'timeTo' => $timeTo2,
                'prices' => $prices2
            ],
            '3' => [
                'label' => 'После обеда',
                'labelEn' => 'afterLunch',
                'display' => $display3 ?: 'none',
                'description' => $description3,
                'timeFrom' => $timeFrom3,
                'timeTo' => $timeTo3,
                'prices' => $prices3
            ],
            '4' => [
                'label' => 'Один день',
                'labelEn' => 'oneday',
                'display' => $display4 ?: 'none',
                'description' => $description4,
                'timeFrom' => $timeFrom4,
                'timeTo' => $timeTo4,
                'prices' => $prices4
            ]
        ]}

{*        <pre>{$items|print_r}</pre>*}
        {set $times = ['9:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00']}
        {foreach $items as $key => $item}
            <div class="cmp_create__ibox cmp_create__imw js-camp-inputs js-cmp-create-visit-item" data-type="{$key}" style="display: {$item.display};">
                <div class="cmp_create__ibox-label">{$item.label}</div>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Время</div>
                    <div class="cmp_create__ci">
                        <div class="cmp_create__ci-col">
                            <div class="cmp_create__irow-label">От</div>
                            <select class="styler styler--camp cmp_create__inpwsm" name="{$prefixForm}visit_options_time_from_{$key}" data-placeholder="выбрать">
                                <option value=""></option>
                                {foreach $times as $time}
                                    <option value="{$time}"{if $time === $item.timeFrom} selected{/if}>{$time}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="cmp_create__ci-col">
                            <div class="cmp_create__irow-label">До</div>
                            <select class="styler styler--camp cmp_create__inpwsm" name="{$prefixForm}visit_options_time_to_{$key}" data-placeholder="выбрать">
                                <option value=""></option>
                                {foreach $times as $time}
                                    <option value="{$time}"{if $time === $item.timeTo} selected{/if}>{$time}</option>
                                {/foreach}
                            </select>
                        </div>
                    </div>
                </div>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Описание</div>
                    <textarea name="{$prefixForm}visit_options_description_{$key}" class="input input--camp" placeholder="Введите описание">{$item.description}</textarea>
                </div>
                {if $item.prices}
                    {foreach $item.prices as $key => $row}
                        <div class="cmp_create__irow cmp_create__addprice js-camp-inputs-row">
                            <div class="cmp_create__addprice-inputs cmp_create__ci">
                                <div>
                                    <div class="cmp_create__irow-label">Цена </div>
                                    <input type="text" name="{$prefixForm}visit_options_price_arr_{$item.labelEn}[]" class="input input--camp cmp_create__inpwsm" placeholder="0 руб" value="{$row.price}">
                                </div>
                                <div>
                                    <div class="cmp_create__irow-label">Новая цена</div>
                                    <input type="text" name="{$prefixForm}visit_options_new_price_arr_{$item.labelEn}[]" class="input input--camp cmp_create__inpwsm" placeholder="0 руб" value="{$row.discountedPrice}">
                                </div>
                                <div>
                                    <div class="cmp_create__irow-label">Действует до</div>
                                    <input type="text" name="{$prefixForm}visit_options_date_arr_{$item.labelEn}[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата до" value="{$row.expirationDate | date : "d.m.Y"}">
                                </div>
                            </div>
                            <div class="cmp_create__addprice-action">
                                <a href="#" class="link link--nound js-camp-inputs-add {if $key !== 0}hide{/if}">Добавить цену</a>
                                <a href="#" class="link link--nound js-camp-inputs-remove {if $key === 0}hide{/if}">Удалить цену</a>
                            </div>
                        </div>
                    {/foreach}
                {else}
                    <div class="cmp_create__irow cmp_create__addprice js-camp-inputs-row">
                        <div class="cmp_create__addprice-inputs cmp_create__ci">
                            <div>
                                <div class="cmp_create__irow-label">Цена</div>
                                <input type="text" name="{$prefixForm}visit_options_price_arr_{$item.labelEn}[]" class="input input--camp cmp_create__inpwsm" placeholder="0 руб">
                            </div>
                            <div>
                                <div class="cmp_create__irow-label">Новая цена</div>
                                <input type="text" name="{$prefixForm}visit_options_new_price_arr_{$item.labelEn}[]" class="input input--camp cmp_create__inpwsm" placeholder="0 руб">
                            </div>
                            <div>
                                <div class="cmp_create__irow-label">Действует до</div>
                                <input type="text" name="{$prefixForm}visit_options_date_arr_{$item.labelEn}[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата до">
                            </div>
                        </div>
                        <div class="cmp_create__addprice-action">
                            <a href="#" class="link link--nound js-camp-inputs-add">Добавить цену</a>
                            <a href="#" class="link link--nound hide js-camp-inputs-remove">Удалить цену</a>
                        </div>
                    </div>
                {/if}
            </div>
        {/foreach}
    </div>
</div>