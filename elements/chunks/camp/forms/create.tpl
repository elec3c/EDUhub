<section class="cmp_create section__mg--sm js-accord-all">
    
    <div class="container">
        <a href="{$_modx->resource.id | url}?edit=true&id=2022">редактировать</a>
        
        {if $.get['edit'] === 'true' && $.get['id']}
            {set $idCamp = $.get['id']}
            {set $data = '!getDataCamp' | snippet : [
                'id' => $idCamp
            ]}
          {*
          <pre>
              {$data | print_r}
              {$data['hero'] | print_r}
          </pre>
          *}
        {/if}
        <div class="section__head section__head--cols mb--md">
            <h2 class="section__title">Создание лагеря</h2>
            <div class="section__head-right">
                <a href="#" class="link link--nound cmp_create__toggle js-accord-toggle-all">
                    <span class="t_opened">Развернуть все</span>
                    <span class="t_closed">Свернуть все</span>
                </a>
            </div>
        </div>
        {set $prefixForm = 'cc_'}

        <form action="" method="post" class="cmp_create__form" enctype="multipart/form-data">
            <input name="controll" class="no-display" type="text">

            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Общая информация</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body">
                    <div class="cmp_create__inform">
                        <div class="cmp_create__inform-info">
                            <div class="cmp_create__irow cmp_create__imw">
                                <div class="cmp_create__irow-label">Название лагеря</div>
                                <input name="{$prefixForm}title" class="input input--camp" placeholder="Введите название" value="{$idCamp | resource  : 'pagetitle'}">
                                <span class="invalid-feedback" data-error="{$prefixForm}title"></span>
                            </div>
                            <div class="cmp_create__irow">
                                <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="Языковой"><span>Языковой</span></label>
                                <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="IT"><span>IT</span></label>
                                <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="Дизайн"><span>Дизайн</span></label>
                                <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="Танцы"><span>Танцы</span></label>
                                <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="Спорт"><span>Спорт</span></label>
                                <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="Блогерство"><span>Блогерство</span></label>
                            </div>

                            <div class="cmp_create__irow cmp_create__inform-icols">
                                <div>
                                    <div class="cmp_create__irow-label">Возраст</div>
                                    <div class="cmp_create__ci">
                                        <div class="cmp_create__ci-col">
                                            <div class="cmp_create__irow-label">От</div>
                                            <select class="styler styler--camp cmp_create__inpwsm" name="age_from" data-placeholder="выбрать">
                                                <option value=""></option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                            </select>
                                        </div>
                                        <div class="cmp_create__ci-col">
                                            <div class="cmp_create__irow-label">До</div>
                                            <select class="styler styler--camp cmp_create__inpwsm" name="age_to" data-placeholder="выбрать">
                                                <option value=""></option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                                <option value="13">13</option>
                                            </select>
                                        </div>    
                                    </div>
                                </div>  
                                <div>
                                    <div class="cmp_create__irow-label">Количество детей в группе</div>
                                    <input type="text" name="count" class="input input--camp cmp_create__inpwsm" placeholder="10">
                                </div>  
                            </div>
                            <div class="cmp_create__irow cmp_create__imw">
                                <div class="cmp_create__irow-label">Слоган</div>
                                <input name="{$prefixForm}slogan" class="input input--camp" placeholder="Введите слоган" value="{$data['hero']['data']['description']}">
                                <span class="invalid-feedback" data-error="{$prefixForm}slogan"></span>
                            </div>
                            <div class="cmp_create__irow cmp_create__imw">
                                <div class="cmp_create__irow-label">Описание программы</div>
                                <textarea name="{$prefixForm}programm_description" class="input input--camp" placeholder="Введите описание">{$data['programm']['data']['description']}</textarea>
                                <span class="invalid-feedback" data-error="{$prefixForm}programm_description"></span>
                            </div>
                        </div>

                        <div class="cmp_create__inform-photo">
                            <div class="cmp_create__irow-label">Добавить афишу</div>
                            <label class="cmp_create__inform-photo__upload uploading">
                                <input type="file" name="{$prefixForm}main_photo" accept="image/jpg,image/jpeg,image/png">
                                <span class="uploading__open"></span>
                                <!-- <div class="uploading__change">Изменить фото</div> -->
                            </label>
                            <div class="cmp_create__inform-photo__t">Изображение</div>
                            <span class="invalid-feedback" data-error="{$prefixForm}main_photo"></span>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Подробная программа</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
                    <div class="cmp_create__ibox cmp_create__imw">
                        <div class="cmp_create__ibox-label"><a href="#" class="js-camp-inputs-add">Добавить пункт программы</a> 
                            <div class="cmp_create__ibox-lintro">Если не указать даты, то пункт программы будет отображаться без дат. Если указать только "Дата с", то пункт программы будет содержать только указанную дату</div>
                        </div>
                        {set $programms = $data['programm']['data']['programms']}
                        {if $programms}
                            {foreach $programms as $programm}
                                <div class="cmp_create__ibox js-camp-inputs-row">
                                    <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить пункт программы</a> 
                                    <div class="cmp_create__irow">
                                        <div class="cmp_create__irow-label">Описание</div>
                                        <textarea name="{$prefixForm}programm_description_arr[]" class="input input--camp" placeholder="Введите описание">{$programm['description']}</textarea>
                                    </div>
                                    <div class="cmp_create__irow cmp_create__addprogr">
                                        <label class="cmp_create__upload uploading">
                                            <input type="file" name="{$prefixForm}programm_photo[]" accept="image/*">
                                            <span class="uploading__open">Фото</span>
                                            <!-- <div class="uploading__change">Изменить фото</div> -->
                                        </label>
                                        <div class="cmp_create__addprogr-times">
                                            <div class="cmp_create__irow-label">Длительность</div>
                                            <div class="cmp_create__ci">
                                                <input type="text" name="{$prefixForm}programm_date_start_arr[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата с" value="{$programm['start_date'] | date : "d.m.Y"}">
                                                <input type="text" name="{$prefixForm}programm_date_end_arr[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата по" value="{$programm['end_date'] | date : "d.m.Y"}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cmp_create__iaction">
                                        <a href="#" class="link link--nound">Сохранить</a>
                                        <a href="#" class="link link--nound">Удалить</a>
                                    </div>
                                </div>
                            {/foreach}
                        {else}
                            <div class="cmp_create__ibox js-camp-inputs-row">
                                <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить пункт программы</a> 
                                <div class="cmp_create__irow">
                                    <div class="cmp_create__irow-label">Описание</div>
                                    <textarea name="{$prefixForm}programm_description_arr[]" class="input input--camp" placeholder="Введите описание"></textarea>
                                </div>
                                <div class="cmp_create__irow cmp_create__addprogr">
                                    <label class="cmp_create__upload uploading">
                                        <input type="file" name="{$prefixForm}programm_photo[]" accept="image/*">
                                        <span class="uploading__open">Фото</span>
                                        <!-- <div class="uploading__change">Изменить фото</div> -->
                                    </label>
                                    <div class="cmp_create__addprogr-times">
                                        <div class="cmp_create__irow-label">Длительность</div>
                                        <div class="cmp_create__ci">
                                            <input type="text" name="{$prefixForm}programm_date_start_arr[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата с">
                                            <input type="text" name="{$prefixForm}programm_date_end_arr[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата по">
                                        </div>
                                    </div>
                                </div>
                                <div class="cmp_create__iaction">
                                    <a href="#" class="link link--nound">Сохранить</a>
                                    <a href="#" class="link link--nound">Удалить</a>
                                </div>
                            </div>
                        {/if}
                    </div>
                </div>
            </div>
            
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Варианты посещений</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body ">

                    <div class="cmp_create__ibox cmp_create__imw">
                        <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="Полный день"><span>Полный день</span></label>
                        <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="До обеда"><span>До обеда</span></label>
                        <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="После обеда"><span>После обеда</span></label>
                        <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="На 1 день"><span>На 1 день</span></label>
                    </div>
                    <div class="cmp_create__ibox cmp_create__imw js-camp-inputs">
                        <div class="cmp_create__ibox-label">Полный день</div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Время</div>
                            <div class="cmp_create__ci">
                                <div class="cmp_create__ci-col">
                                    <div class="cmp_create__irow-label">От</div>
                                    <select class="styler styler--camp cmp_create__inpwsm" name="var_time_from_1" data-placeholder="выбрать">
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
                                    <select class="styler styler--camp cmp_create__inpwsm" name="var_time_to_1" data-placeholder="выбрать">
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
                        </div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Описание</div>
                            <textarea name="var_descr_1" class="input input--camp" placeholder="Введите описание"></textarea>
                        </div>
                        
                        <div class="cmp_create__irow cmp_create__addprice js-camp-inputs-row">
                            <div class="cmp_create__addprice-inputs cmp_create__ci">
                                <div>
                                    <div class="cmp_create__irow-label">Цена</div>
                                    <input type="text" name="var_price_from_1[]" class="input input--camp cmp_create__inpwsm" placeholder="о руб">
                                </div>
                                <div>
                                    <div class="cmp_create__irow-label">Действует до</div>
                                    <input type="text" name="var_date_from_1[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата до">
                                </div>
                            </div>

                            <div class="cmp_create__addprice-action">
                                <a href="#" class="link link--nound js-camp-inputs-add">Добавить цену</a>
                                <a href="#" class="link link--nound hide js-camp-inputs-remove">Удалить цену</a>
                            </div>
                        </div>
                        
                    </div>

                    <div class="cmp_create__ibox cmp_create__imw js-camp-inputs">
                        <div class="cmp_create__ibox-label">До обеда</div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Время</div>
                            <div class="cmp_create__ci">
                                <div class="cmp_create__ci-col">
                                    <div class="cmp_create__irow-label">От</div>
                                    <select class="styler styler--camp cmp_create__inpwsm" name="var_time_from_2" data-placeholder="выбрать">
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
                                    <select class="styler styler--camp cmp_create__inpwsm" name="var_time_to_2" data-placeholder="выбрать">
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
                        </div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Описание</div>
                            <textarea name="var_descr_2" class="input input--camp" placeholder="Введите описание"></textarea>
                        </div>
                        <div class="cmp_create__irow cmp_create__addprice js-camp-inputs-row">
                            <div class="cmp_create__addprice-inputs cmp_create__ci">
                                <div>
                                    <div class="cmp_create__irow-label">Цена</div>
                                    <input type="text" name="var_price_from_2[]" class="input input--camp cmp_create__inpwsm" placeholder="о руб">
                                </div>
                                <div>
                                    <div class="cmp_create__irow-label">Действует до</div>
                                    <input type="text" name="var_date_from_2[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата до">
                                </div>
                            </div>

                            <div class="cmp_create__addprice-action">
                                <a href="#" class="link link--nound js-camp-inputs-add">Добавить цену</a>
                                <a href="#" class="link link--nound hide js-camp-inputs-remove">Удалить цену</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="cmp_create__ibox cmp_create__imw js-camp-inputs">
                        <div class="cmp_create__ibox-label">После обеда</div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Время</div>
                            <div class="cmp_create__ci">
                                <div class="cmp_create__ci-col">
                                    <div class="cmp_create__irow-label">От</div>
                                    <select class="styler styler--camp cmp_create__inpwsm" name="var_time_from_3" data-placeholder="выбрать">
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
                                    <select class="styler styler--camp cmp_create__inpwsm" name="var_time_to_3" data-placeholder="выбрать">
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
                        </div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Описание</div>
                            <textarea name="var_descr_3" class="input input--camp" placeholder="Введите описание"></textarea>
                        </div>
                        <div class="cmp_create__irow cmp_create__addprice js-camp-inputs-row">
                            <div class="cmp_create__addprice-inputs cmp_create__ci">
                                <div>
                                    <div class="cmp_create__irow-label">Цена</div>
                                    <input type="text" name="var_price_from_3[]" class="input input--camp cmp_create__inpwsm" placeholder="о руб">
                                </div>
                                <div>
                                    <div class="cmp_create__irow-label">Действует до</div>
                                    <input type="text" name="var_date_from_3[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата до">
                                </div>
                            </div>

                            <div class="cmp_create__addprice-action">
                                <a href="#" class="link link--nound js-camp-inputs-add">Добавить цену</a>
                                <a href="#" class="link link--nound hide js-camp-inputs-remove">Удалить цену</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Скидки</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body">
                    <div class="cmp_create__ibox cmp_create__imw js-camp-inputs">
                        <a href="#" class="cmp_create__ibox-label  js-camp-inputs-add">Добавить скидку</a>
                        
                        <div class="cmp_create__irow">
                            <div class="cmp_create__ci cmp_create__rowsale">
                                <div class="cmp_create__ci-wall">
                                    <div class="cmp_create__irow-label">Кому</div>
                                    <input type="text" name="sale_whom_from[]" class="input input--camp" placeholder="">
                                </div>
                                <div>
                                    <div class="cmp_create__irow-label">Размер (руб)</div>
                                    <input type="text" name="sale_val_from[]" class="input input--camp cmp_create__inpwsm" placeholder="0 руб">
                                </div>
                            </div>
                        </div>
                        <div class="cmp_create__irow  js-camp-inputs-row">
                            <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить скидку</a>
                            <div class="cmp_create__ci cmp_create__rowsale">
                                <div class="cmp_create__ci-wall">
                                    <div class="cmp_create__irow-label">Кому</div>
                                    <input type="text" name="sale_whom_from[]" class="input input--camp" placeholder="">
                                </div>
                                <div>
                                    <div class="cmp_create__irow-label">Размер (руб)</div>
                                    <input type="text" name="sale_val_from[]" class="input input--camp cmp_create__inpwsm" placeholder="0 руб">
                                </div>
                            </div>
                        </div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Описание скидок</div>
                            <textarea name="sale_descr" class="input input--camp" placeholder="Введите описание"></textarea>
                        </div>
                    </div>    
                </div>
            </div>
            
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Условия, питание</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body">
                    <div class="cmp_create__addfood">
                        <div class="cmp_create__addfood-col">
                            <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="кондиционер"><span>кондиционер</span></label>
                            <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="0 руб. PARKING"><span>0 руб. PARKING</span></label>
                            <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="free Wi - Fi"><span>free Wi - Fi</span></label>

                        </div>
                        <div class="cmp_create__addfood-col">
                            <div class="cmp_create__irow-label">Питание</div>
                            <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="1 раз"><span>1 раз</span></label>
                            <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="2х разовое"><span>2х разовое</span></label>
                            <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="3х разовое"><span>3х разовое</span></label>
                            <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="4х разовое"><span>4х разовое</span></label>
                            <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="5 разовое"><span>5 разовое</span></label>
                            <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="6 разовое"><span>6 разовое</span></label>
                            
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Адрес</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
                    <div class="cmp_create__ibox cmp_create__address js-camp-inputs-row">
                        <div class="cmp_create__address-inputs">
                            <a href="#" class="cmp_create__ibox-label  js-camp-inputs-add">Добавить адрес</a>
                            <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить адрес</a>
                            <div class="js-camp-inputs">
                                <div class="cmp_create__irow">
                                    <div class="cmp_create__irow-label">Город*</div>
                                    <input name="city" class="input input--camp" placeholder="">
                                </div>
                                <div class="cmp_create__irow">
                                    <div class="cmp_create__irow-label">Адрес*</div>
                                    <input name="address" class="input input--camp" placeholder="">
                                </div>
                                <div class="cmp_create__irow">
                                    <div class="cmp_create__irow-label">Метро</div>
                                    <input name="metro" class="input input--camp" placeholder="">
                                </div>
                                <div class="cmp_create__irow js-camp-inputs-row">
                                    <div class="cmp_create__irow-label hcols">Кабинет
                                        <a href="#" class="cmp_create__ibox-label js-camp-inputs-add">Добавить кабинет</a>
                                        <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить кабинет</a>
                                    </div>
                                    <input name="cabinet" class="input input--camp" placeholder="">
                                </div>
                                <div class="cmp_create__irow">
                                    <div class="cmp_create__irow-label">Координаты</div>
                                    <input name="coord" class="input input--camp" placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="cmp_create__address-map">
                            <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A0ccf15922a72e333374995651c227f53e8272cc89ec2098a7f4104d0b483712a&amp;width=100%25&amp;height=400&amp;lang=ru_RU"></script>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Смена</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body  js-camp-inputs">
                    <a href="#" class="cmp_create__ibox-label  js-camp-inputs-add">Добавить смену</a>
                    <div class="cmp_create__ibox js-camp-inputs-row">
                        <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить смену</a>
                        <div class="cmp_create__irow cmp_create__imw cmp_create__addshift ">
                            <div>
                                <div class="cmp_create__irow-label">Номер</div>
                                <input type="text" name="shift_numb[]" class="input input--camp cmp_create__inpwsm" placeholder="№">
                            </div>
                            <div class="cmp_create__times">
                                <div class="cmp_create__irow-label">Длительность</div>
                                <div class="cmp_create__ci">
                                    <input type="text" name="shift_date_from[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата с">
                                    <input type="text" name="shift_date_to[]" class="input input--camp input--date cmp_create__inpwsm datepicker-input" placeholder="Дата по">
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>
            </div>
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Преимущества</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body  js-camp-inputs">
                    <a href="#" class="cmp_create__ibox-label  js-camp-inputs-add">Добавить преимущество</a>
                    
                    <div class="cmp_create__ibox cmp_create__imw  js-camp-inputs-row">
                        <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить преимущество</a>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Заголовок</div>
                            <input name="{$prefixForm}advantage_title[]" class="input input--camp" placeholder="Введите заголовок">
                        </div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Описание</div>
                            <textarea name="{$prefixForm}advantage_description[]" class="input input--camp" placeholder="Введите описание"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Распорядок дня</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body  js-camp-inputs">
                    <a href="#" class="cmp_create__ibox-label  js-camp-inputs-add">Добавить пункт распорядка</a>

                    <div class="cmp_create__ibox cmp_create__imw  js-camp-inputs-row">
                        <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить пункт распорядка</a>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Заголовок</div>
                            <input name="schedule_title[]" class="input input--camp" placeholder="Введите заголовок">
                        </div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Описание</div>
                            <textarea name="schedule_descr[]" class="input input--camp" placeholder="Введите описание"></textarea>
                        </div>
                        <div class="cmp_create__irow">
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
                        </div>
                    </div>
                </div>
            </div>

            
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Фотогалерея</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
                    <a href="#" class="cmp_create__ibox-label js-camp-inputs-add">Добавить фото</a>
                    
                    <div class="cmp_create__ibox cmp_create__imw js-camp-inputs-row">
                        <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить фото</a>
                        <div class="cmp_create__irow-label">Загрузить 2 - 4 фото</div>
                        <label class="cmp_create__upload uploading">
                            <input type="file" name="gallery_photo[]" accept="image/*">
                            <span class="uploading__open">Фото</span>
                            <!-- <div class="uploading__change">Изменить фото</div> -->
                        </label>
                        <div class="cmp_create__iaction gap--md">
                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gallery_action" value="save" data-value="save" checked><span>Сохранить</span></label>
                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gallery_action" value="delete" data-value="delete"><span>Удалить</span></label>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Отзывы</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
                    <a href="#" class="cmp_create__ibox-label js-camp-inputs-add">Добавить отзыв</a>
                    
                    <div class="cmp_create__ibox cmp_create__imw js-camp-inputs-row">
                        <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить отзыв</a>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Имя пользователя</div>
                            <input name="review_title[]" class="input input--camp" placeholder="Введите имя">
                        </div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Отзыв</div>
                            <textarea name="review_descr[]" class="input input--camp" placeholder="Введите отзыв"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Часто задаваемые вопросы</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
                    <a href="#" class="cmp_create__ibox-label js-camp-inputs-add">Добавить вопрос</a>
                    
                    <div class="cmp_create__ibox cmp_create__imw js-camp-inputs-row">
                        <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить вопрос</a>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Вопрос</div>
                            <input name="quest_title[]" class="input input--camp" placeholder="Введите вопрос">
                        </div>
                        <div class="cmp_create__irow">
                            <div class="cmp_create__irow-label">Ответ</div>
                            <textarea name="quest_descr[]" class="input input--camp" placeholder="Введите ответ"></textarea>
                        </div>
                    </div>
                </div>
            </div>

            <div class="cmp_create__buttons">
                <button class="btn btn--purple btn--sm" type="submit">Опубликовать</button>
                <button class="cmp_create__sdraft btn btn--bdpurple btn--sm" type="button">Сохранить черновик</button>
            </div>
        </form>
    </div>
</section>