{set $dataBlock = $data['accommodationConditions']['data']}
{set $dataPb = '!getDataCamp' | snippet : [
    'id' => $_modx->resource.id,
    'constructorId' => 3,
]}
<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Условия размещения</div>
    </div>
    <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
        <div class="cmp_create__ibox cmp_create__imw js-camp-inputs-row">
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Название объекта</div>
                <input name="{$prefixForm}name_object" class="input input--camp" placeholder="Введите название" value="{$dataBlock['nameObject']}">
            </div>
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Описание места раземещения детей</div>
                <textarea name="{$prefixForm}description_place" class="input input--camp" placeholder="Введите описание ">{$dataBlock['descriptionPlace']}</textarea>
            </div>
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Область</div>
                {set $regions = ['Брестская область','Витебская область','Гомельская область','Гродненская область','Минская область','Могилевская область']}
                <select class="styler styler--camp" name="{$prefixForm}region" data-placeholder="выбрать">
                    <option value=""></option>
                    {foreach $regions as $region}
                        <option value="{$region}" {if $region === $_modx->resource.camp_region}selected{/if}>{$region}</option>
                    {/foreach}
                </select>
            </div>
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Адрес от областного центра</div>
                <textarea name="{$prefixForm}outcall_address" class="input input--camp" placeholder="">{$_modx->resource.camp_outcall_address}</textarea>
            </div>
            <div class="cmp_create__irow cmp_create__imw--sm">
                <div class="cmp_create__irow-label">Расстояние (км)</div>
                <input type="number" name="{$prefixForm}distance" class="input input--camp" placeholder="" min="0" value="{$_modx->resource.camp_distance}">
            </div>
            <div class="cmp_create__irow cmp_create__imw--sm">
                <div class="cmp_create__irow-label">Координаты</div>
                <input name="coord" class="input input--camp" placeholder="">
            </div>
            <div class="cmp_create__irow cmp_create__imw--sm">
                <div class="cmp_create__irow-label">Сайт</div>
                <input name="{$prefixForm}website_link" class="input input--camp" placeholder="" value="{$dataBlock['websiteLink']}">
            </div>
            <div class="cmp_create__ci cmp_create__irow">
                <div class="cmp_create__ci-wall">
                    <div class="cmp_create__irow-label">Трансфер от</div>
                    <input type="text" name="{$prefixForm}transfer_location" class="input input--camp" placeholder="Адрес" value="{$dataPb['hero']['data']['transferLocation']}">
                </div>
                <div>
                    {set $times = ["9:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00"]}
                    <div class="cmp_create__irow-label">Время</div>
                    <select class="styler styler--camp cmp_create__inpwsm" name="{$prefixForm}transfer_time" data-placeholder="выбрать">
                        <option value=""></option>
                        {foreach $times as $item}
                            <option value="{$item}" {if $dataPb['hero']['data']['transferTime'] == $item}selected{/if}>{$item}</option>
                        {/foreach}
                    </select>
                </div>
            </div>
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Питание</div>
                {insert 'file:chunks/camp/data/meals.tpl'}{*Массив значений - Питание - return $mealsArray*}
                {foreach $mealsArray as $key => $item}
                    <label class="form__lcheck">
                        <input type="radio" class="styler styler--camp" name="{$prefixForm}meals" value="{$key}" {if $_modx->resource.camp_meals == $key} checked{/if}>
                        <span>{$item}</span>
                    </label>
                {/foreach}
                <span class="invalid-feedback" data-error="{$prefixForm}meals"></span>
            </div>

            {set $rooms = '@FILE /snippets/camps/getTvCheckboxes.php' | snippet : [
                'nameTv' => 'camp_rooms',
            ]}
            {set $roomsSelected = $_modx->resource.camp_rooms | split}
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Размещение в номерах</div>
                {foreach $rooms as $room}
                    <label class="form__lcheck">
                        <input type="checkbox" class="styler styler--camp" name="{$prefixForm}outcall_rooms[]" value="{$room['value']}" {if $room['value'] in list $roomsSelected} checked{/if}>
                        <span>{$room['name']}</span>
                    </label>
                {/foreach}
            </div>

            {set $wc = '@FILE /snippets/camps/getTvCheckboxes.php' | snippet : [
                'nameTv' => 'camp_wc',
            ]}
            {set $wcSelected = $_modx->resource.camp_wc | split}
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Санузел, душ</div>
                {foreach $wc as $item}
                    <label class="form__lcheck">
                        <input type="checkbox" class="styler styler--camp" name="{$prefixForm}outcall_wc[]" value="{$item['value']}" {if $item['value'] in list $wcSelected} checked{/if}>
                        <span>{$item['name']}</span>
                    </label>
                {/foreach}
            </div>
            {insert 'file:chunks/camp/data/pool.tpl'}{*return $poolArray*}
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Бассейн</div>
                {foreach $poolArray as $key => $item}
                    <label class="form__lcheck">
                        <input type="radio" class="styler styler--camp" name="{$prefixForm}pool" value="{$key}" {if $key == $_modx->resource.camp_pool }checked{/if}{if !$_modx->resource.camp_pool && $item == 0}{/if}>
                        <span>{$item}</span>
                    </label>
                {/foreach}
{*                <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="" value="Нет"><span>Нет</span></label>*}
{*                <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="" value="Включен в стоимость"><span>Включен в стоимость</span></label>*}
{*                <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="" value="За дополнительную оплату"><span>За дополнительную оплату</span></label>*}
            </div>
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Wi - fi</div>
                {set $wifiArray = [
                    '0' => 'Нет',
                    '1' => 'Да',
                ]}
                {foreach $wifiArray as $key => $item}
                    <label class="form__lcheck">
                        <input type="radio" class="styler styler--camp" name="{$prefixForm}freeWiFi" value="{$key}" {if $key == $_modx->resource.camp_wifi }checked{/if}{if !$_modx->resource.camp_wifi && $item == 0}{/if}>
                        <span>{$item}</span>
                    </label>
                {/foreach}
            </div>
        </div>
    </div>
</div>