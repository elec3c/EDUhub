<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Продолжительность лагеря</div>
    </div>
    <div class="cmp_create__blocks-body js-accord-body  js-camp-inputs">
{*        <a href="#" class="cmp_create__ibox-label  js-camp-inputs-add">Добавить смену</a>*}
        <div class="cmp_create__ibox js-camp-inputs-row">
{*            <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить смену</a>*}
            <div class="cmp_create__irow cmp_create__imw cmp_create__addshift ">
{*                <div>*}
{*                    <div class="cmp_create__irow-label">Номер</div>*}
{*                    <input type="text" name="shift_numb[]" class="input input--camp cmp_create__inpwsm" placeholder="№">*}
{*                </div>*}
                {if $.get['edit'] === 'true'}
                    {if $_modx->resource.camp_date_from}
                        {set $durationDateFrom = $_modx->resource.camp_date_from | date : "d.m.Y"}
                    {/if}
                    {if $_modx->resource.camp_date_to}
                        {set $durationDateTo = $_modx->resource.camp_date_to | date : "d.m.Y"}
                    {/if}
                {/if}
                <div class="cmp_create__times">
                    <div class="cmp_create__irow-label">Длительность</div>
                    <div class="cmp_create__ci">
                        <div>
                            <input type="text" name="{$prefixForm}duration_camp_from" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата с" value="{$durationDateFrom}">
                            <span class="invalid-feedback" data-error="{$prefixForm}duration_camp_from"></span>
                        </div>
                        <div>
                            <input type="text" name="{$prefixForm}duration_camp_to" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата по" value="{$durationDateTo}">
                            <span class="invalid-feedback" data-error="{$prefixForm}duration_camp_to"></span>
                        </div>
                    </div>
                </div>

                {set $weekdays = ['Пн.','Вт.','Ср.','Чт.','Пт.','Сб.','Вс.']}
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Дни занятий</div>
                    <div class="cmp_create__ci">
                        <div>
                            <div class="cmp_create__ci-col">
                                <div class="cmp_create__irow-label">С</div>
                                <select class="styler styler--camp cmp_create__inpwsm" name="{$prefixForm}duration_weekdays_from" data-placeholder="выбрать">
                                    <option value=""></option>
                                    {foreach $weekdays as $weekday}
                                        <option value="{$weekday}"{if $weekday === $data['hero']['data']['weekDaysFrom']} selected{/if}>{$weekday}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <span class="invalid-feedback" data-error="{$prefixForm}duration_weekdays_from"></span>
                        </div>
                        <div>
                            <div class="cmp_create__ci-col">
                                <div class="cmp_create__irow-label">До</div>
                                <select class="styler styler--camp cmp_create__inpwsm" name="{$prefixForm}duration_weekdays_to" data-placeholder="выбрать">
                                    <option value=""></option>
                                    {foreach $weekdays as $weekday}
                                        <option value="{$weekday}"{if $weekday === $data['hero']['data']['weekDaysTo']} selected{/if}>{$weekday}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <span class="invalid-feedback" data-error="{$prefixForm}duration_weekdays_to"></span>
                        </div>
                    </div>
                </div>

                {set $times = ['9:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00']}
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Время занятий</div>
                    <div class="cmp_create__ci">
                        <div>
                            <div class="cmp_create__ci-col">
                                <div class="cmp_create__irow-label">С</div>
                                <select class="styler styler--camp cmp_create__inpwsm" name="{$prefixForm}duration_time_from" data-placeholder="выбрать">
                                    <option value=""></option>
                                    {foreach $times as $time}
                                        <option value="{$time}"{if $time === $data['hero']['data']['classTimeFrom']} selected{/if}>{$time}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <span class="invalid-feedback" data-error="{$prefixForm}duration_time_from"></span>
                        </div>
                        <div>
                            <div class="cmp_create__ci-col">
                                <div class="cmp_create__irow-label">До</div>
                                <select class="styler styler--camp cmp_create__inpwsm" name="{$prefixForm}duration_time_to" data-placeholder="выбрать">
                                    <option value=""></option>
                                    {foreach $times as $time}
                                        <option value="{$time}"{if $time === $data['hero']['data']['classTimeTo']} selected{/if}>{$time}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <span class="invalid-feedback" data-error="{$prefixForm}duration_time_to"></span>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>
</div>