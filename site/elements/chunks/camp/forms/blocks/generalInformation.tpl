<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Общая информация</div>
    </div>
    <div class="cmp_create__blocks-body js-accord-body">
        <div class="cmp_create__inform">
            <div class="cmp_create__inform-info">
                <div class="cmp_create__irow cmp_create__imw">
                    <div class="cmp_create__irow-label">Название лагеря</div>
                    <input name="{$prefixForm}title" class="input input--camp" placeholder="Введите название" value="{$campTitle}">
                    <span class="invalid-feedback" data-error="{$prefixForm}title"></span>
                </div>
                {* Получаем все возможные тематики из TV camp_subjects *}
                {set $subjects = '@FILE /snippets/camps/getTvCheckboxes.php' | snippet : [
                    'nameTv' => 'camp_subjects',
                ]}
                {set $subjectsSelected = $_modx->resource.camp_subjects | split} {* Массив выбранных тематик *}
                {if $subjects}
                    <div class="cmp_create__irow">
                        {foreach $subjects as $subject}
                            <label class="form__lcheck">
                                <input type="checkbox" class="styler styler--camp" name="{$prefixForm}subjects[]" value="{$subject['value']}" {if $subject['value'] in list $subjectsSelected} checked{/if}>
                                <span>{$subject['name']}</span>
                            </label>
                        {/foreach}
                        <span class="invalid-feedback" data-error="{$prefixForm}subjects"></span>
                    </div>
                {/if}
                {* min - минимальное значение TV, max - максимвальное значением ТV *}
                {set $minValueCampAges = '@FILE /snippets/camps/getTvCamps.php' | snippet : [
                    'nameTv' => 'camp_ages',
                    'value' => 'min'
                ]}
                {set $maxValueCampAges = '@FILE /snippets/camps/getTvCamps.php' | snippet : [
                    'nameTv' => 'camp_ages',
                    'value' => 'max'
                ]}
                {set $ages = [7,8,9,10,11,12,13]}
                <div class="cmp_create__irow cmp_create__inform-icols">
                    <div>
                        <div class="cmp_create__irow-label">Возраст</div>
                        <div class="cmp_create__ci">
                            <div>
                                <div class="cmp_create__ci-col">
                                    <div class="cmp_create__irow-label">От</div>
                                    <select class="styler styler--camp cmp_create__inpwsm" name="{$prefixForm}age_from" data-placeholder="выбрать">
                                        <option value=""></option>
                                        {foreach $ages as $age}
                                            <option value="{$age}" {if $age == $minValueCampAges}selected{/if}>{$age}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <span class="invalid-feedback" data-error="{$prefixForm}age_from"></span>
                            </div>
                            <div>
                                <div class="cmp_create__ci-col">
                                    <div class="cmp_create__irow-label">До</div>
                                    <select class="styler styler--camp cmp_create__inpwsm" name="{$prefixForm}age_to" data-placeholder="выбрать">
                                        <option value=""></option>
                                        {foreach $ages as $age}
                                            <option value="{$age}" {if $age == $maxValueCampAges}selected{/if}>{$age}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <span class="invalid-feedback" data-error="{$prefixForm}age_to"></span>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="cmp_create__irow-label">Количество детей в группе</div>
                        <input type="number" name="{$prefixForm}number_children_group" class="input input--camp cmp_create__inpwsm" placeholder="10" min="0" max="99" value="{$_modx->resource.campNumberChildrenGroup}">
                        <span class="invalid-feedback" data-error="{$prefixForm}number_children_group"></span>
                    </div>
                </div>
                <div class="cmp_create__irow cmp_create__imw">
                    <div class="cmp_create__irow-label">Слоган</div>
                    <input name="{$prefixForm}slogan" class="input input--camp" placeholder="Введите слоган" value="{$data['hero']['data']['description']}">
                    <span class="invalid-feedback" data-error="{$prefixForm}slogan"></span>
                </div>
                <div class="cmp_create__irow cmp_create__imw">
                    <div class="cmp_create__irow-label">Описание программы</div>
                    <textarea name="{$prefixForm}program_description" class="input input--camp" placeholder="Введите описание">{$data['program']['data']['description']}</textarea>
                    <span class="invalid-feedback" data-error="{$prefixForm}program_description"></span>
                </div>
            </div>

            <div class="cmp_create__inform-photo">
                <div class="cmp_create__irow-label">Добавить афишу</div>
                <label class="cmp_create__inform-photo__upload uploading">
                    <input type="file" name="{$prefixForm}main_photo[]" accept="image/jpg,image/jpeg,image/png">
                    <span class="uploading__open"></span>
                    <!-- <div class="uploading__change">Изменить фото</div> -->
                    {if $campImage}
                        <img src="{$data['hero']['data']['image'] | base64Image}" alt="">
                    {/if}
                </label>
                <div class="cmp_create__inform-photo__t">Изображение</div>
                <div class="text-error js-error-camp-image"></div>
            </div>
        </div>
    </div>
</div>