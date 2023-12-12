<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Подробная программа</div>
    </div>
    <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
        <div class="cmp_create__ibox cmp_create__imw">
            <div class="cmp_create__ibox-label">
                <a href="#" class="js-camp-inputs-add">Добавить пункт программы</a>
                <div class="cmp_create__ibox-lintro">Если не указать даты, то пункт программы будет отображаться без дат. Если указать только "Дата с", то пункт программы будет содержать только указанную дату</div>
            </div>
            {set $programs = $data['program']['data']['programs']}
            {if $programs}
                {foreach $programs as $idx => $program}
                    <div class="cmp_create__ibox js-camp-inputs-row">
                        <a href="#" class="cmp_create__ibox-label {if $idx == 0}hide{/if} js-camp-inputs-remove">Удалить пункт программы</a>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Описание</div>
                            <textarea name="{$prefixForm}program_description_arr[]" class="input input--camp" placeholder="Введите описание">{$program['description']}</textarea>
                        </div>
                        <div class="cmp_create__irow cmp_create__addprogr js-cmp-create-addprogr">
                            <label class="cmp_create__upload uploading">
                                <input type="file" name="{$prefixForm}program_photo[]" accept="image/*" class="js-cmp-create-addprogr-uploading">
                                <span class="uploading__open">Фото</span>
                                {if $program['image']}
                                    <img src="{$program['image'] | base64Image}" alt="">
                                {/if}
                                <!-- <div class="uploading__change">Изменить фото</div> -->
                            </label>
                            <div class="cmp_create__iaction cmp_create__addprogr-action hide js-cmp-create-addprogr-action">
                                <!-- <a href="#" class="link link--nound">Сохранить</a> -->
                                <a href="#" class="link link--nound js-cmp-create-addprogr-remove">Удалить</a>
                            </div>
                            <div class="cmp_create__addprogr-times">
                                <div class="cmp_create__irow-label">Длительность</div>
                                <div class="cmp_create__ci">
                                    <input type="text" name="{$prefixForm}program_date_start_arr[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата с" value="{$program['start_date'] | date : "d.m.Y"}">
                                    <input type="text" name="{$prefixForm}program_date_end_arr[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата по" value="{$program['end_date'] | date : "d.m.Y"}">
                                </div>
                            </div>
                        </div>
                        <div class="text-error js-error-program-image"></div>
                    </div>
                {/foreach}
            {else}
                <div class="cmp_create__ibox js-camp-inputs-row">
                    <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить пункт программы</a>
                    <div class="cmp_create__irow">
                        <div class="cmp_create__irow-label">Описание</div>
                        <textarea name="{$prefixForm}program_description_arr[]" class="input input--camp" placeholder="Введите описание"></textarea>
                    </div>
                    <div class="cmp_create__irow cmp_create__addprogr js-cmp-create-addprogr">
                        <label class="cmp_create__upload uploading">
                            <input type="file" name="{$prefixForm}program_photo[]" accept="image/*" class="js-cmp-create-addprogr-uploading">
                            <span class="uploading__open">Фото</span>
                            <!-- <div class="uploading__change">Изменить фото</div> -->
                        </label>
                        <div class="cmp_create__iaction cmp_create__addprogr-action hide js-cmp-create-addprogr-action">
                            <!-- <a href="#" class="link link--nound">Сохранить</a> -->
                            <a href="#" class="link link--nound js-cmp-create-addprogr-remove">Удалить</a>
                        </div>
                        <div class="cmp_create__addprogr-times">
                            <div class="cmp_create__irow-label">Длительность</div>
                            <div class="cmp_create__ci">
                                <input type="text" name="{$prefixForm}program_date_start_arr[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата с">
                                <input type="text" name="{$prefixForm}program_date_end_arr[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата по">
                            </div>
                        </div>
                    </div>
                    <div class="text-error js-error-program-image"></div>
                </div>
            {/if}
        </div>
    </div>
</div>