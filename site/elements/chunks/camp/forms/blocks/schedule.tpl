<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Распорядок дня</div>
    </div>
    <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
        <a href="#" class="cmp_create__ibox-label  js-camp-inputs-add">Добавить пункт распорядка</a>
        {set $schedule = $data['schedule']['data']['schedule']}
        {if $schedule}
            {foreach $schedule as $idx => $item}
                <div class="cmp_create__ibox cmp_create__imw  js-camp-inputs-row">
                    <a href="#" class="cmp_create__ibox-label {if $idx == 0}hide{/if} js-camp-inputs-remove">Удалить пункт распорядка</a>
                    <div class="cmp_create__irow">
                        <div class="cmp_create__irow-label">Заголовок</div>
                        <input name="{$prefixForm}schedule_title[]" class="input input--camp" placeholder="Введите заголовок" value="{$item['title']}">
                    </div>
                    <div class="cmp_create__irow">
                        <div class="cmp_create__irow-label">Описание</div>
                        <textarea name="{$prefixForm}schedule_description[]" class="input input--camp" placeholder="Введите описание">{$item['description']}</textarea>
                    </div>
                </div>
            {/foreach}
        {else}
            <div class="cmp_create__ibox cmp_create__imw  js-camp-inputs-row">
                <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить пункт распорядка</a>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Заголовок</div>
                    <input name="{$prefixForm}schedule_title[]" class="input input--camp" placeholder="Введите заголовок">
                </div>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Описание</div>
                    <textarea name="{$prefixForm}schedule_description[]" class="input input--camp" placeholder="Введите описание"></textarea>
                </div>
            </div>
        {/if}
    </div>
</div>
{*<div class="cmp_create__irow">
    <div class="cmp_create__irow-label">Время</div>
    <div class="cmp_create__ci">
        <div class="cmp_create__ci-col">
            <div class="cmp_create__irow-label">От</div>
            <select class="styler styler--camp cmp_create__inpwsm" name="schedule_time_from[]" data-placeholder="выбрать">
                <option value=""></option>
                <option value="9:00">9:00</option>
                <option value="10:00">10:00</option>
                <option value="11:00">11:00</option>
                <option value="12:00">12:00</option>
                <option value="13:00">13:00</option>
                <option value="14:00">14:00</option>
                <option value="15:00">15:00</option>
                <option value="16:00">16:00</option>
                <option value="17:00">17:00</option>
                <option value="18:00">18:00</option>
            </select>
        </div>
        <div class="cmp_create__ci-col">
            <div class="cmp_create__irow-label">До</div>
            <select class="styler styler--camp cmp_create__inpwsm" name="schedule_time_to[]" data-placeholder="выбрать">
                <option value=""></option>
                <option value="9:00">9:00</option>
                <option value="10:00">10:00</option>
                <option value="11:00">11:00</option>
                <option value="12:00">12:00</option>
                <option value="13:00">13:00</option>
                <option value="14:00">14:00</option>
                <option value="15:00">15:00</option>
                <option value="16:00">16:00</option>
                <option value="17:00">17:00</option>
                <option value="18:00">18:00</option>
            </select>
        </div>
    </div>
</div>*}