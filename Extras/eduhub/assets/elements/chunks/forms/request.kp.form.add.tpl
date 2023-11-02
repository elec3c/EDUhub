            <form class="rkp__form" action="[[~[[*id]]]]" enctype="multipart/form-data" method="POST" id="requestKpFormAdd">
                
                    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
                    <input type="hidden" name="nospam:blank" />
                    <input type="hidden" name="uid" value="[[!+fi.id]]" />
                    <input type="hidden" name="type" value="{$.get.type}" />
                    <input type="hidden" name="user_id" value="{$_modx->user.id}" />                
                
                    <div class="rkp__box">
                        <div class="rkp__box-title">1. Какая категория курса вас интересуют?</div>
                        {if $.get.edit}
                            {include 'file:chunks/forms/fields/fields.request.courses.category.tpl' req=1 disable=1}                        
                        {else}
                            {include 'file:chunks/forms/fields/fields.request.courses.category.tpl' req=1 disable=0}                        
                        {/if}
                    </div>
                    
                    <div class="rkp__box">
                        <div class="rkp__box-title">2. Какая подкатегория курса вас интересует?</div>
                        {include 'file:chunks/forms/fields/fields.courses.sub_category.tpl' req=0}
                    </div>

                    <div class="rkp__box">
                        <div class="rkp__box-title">3. Укажите название тендера</div>
                        <div class="input__label">Этот пункт будет виден только вам</div>
                        {include 'file:chunks/forms/fields/fields.request.title.tpl' req=0}
                    </div>
                    
                    <div class="rkp__box">
                        <div class="rkp__box-title">4. Пожелания к курсу</div>
                        <div class="input__label">Укажите ваши пожелания к курсу</div>
                        {include 'file:chunks/forms/fields/fields.request.detail.tpl' req=0}
                    </div>
                    
                    <div class="rkp__box">
                        <div class="rkp__box-title">5. Форма обучения</div>
                        <div class="rkp__box-row">
                            <div class="input__label">Какая форма обучения вам подходит больше?</div>
                            {include 'file:chunks/forms/fields/fields.request.form_of_study.tpl' req=0}
                        </div>
                        <div class="rkp__box-title">6. Формат обучения</div>
                        <div class="rkp__box-row">
                            <div class="input__label">Какой формат обучения вам подходит больше?</div>
                            {include 'file:chunks/forms/fields/fields.request.format_of_study.tpl' req=0}
                        </div>                        
                        <div class="rkp__box-row">
                            <div class="input__label">Предподчительное время занятий</div>
                            {include 'file:chunks/forms/fields/fields.request.time.tpl' req=0}
                        </div>
                        <div class="rkp__box-row">
                            <div class="input__label">Предполагаемое количество обучающихся</div>
                            {include 'file:chunks/forms/fields/fields.request.num_people_in_group.tpl' req=0}
                        </div>
                        
                        <div class="rkp__box-row">
                            <div class="input__label">Форма оплаты</div>
                             {include 'file:chunks/forms/fields/fields.request.form_of_payment.tpl' req=0}               
                        </div>
                    </div>

                    <div class="rkp__box">
                        <div class="input__label">Сопроводительное письмо</div>
                        <div class="input__row">
                            {include 'file:chunks/forms/fields/fields.request.covering_letter.tpl' req=0}
                        </div>
                        <div class="input__sign">Не допускается в тексте указывать контактые данные, название организации, точный адрес и другую информацию, которая может идентифицировать заказчика</div>
                    </div>
                    
                    <div class="rkp__box">
                        <div class="rkp__box-row">
                            <div class="input__label">Дата окончания приема коммерческих предложений</div>
                            {include 'file:chunks/forms/fields/fields.request.date_expiration.tpl' req=1}
                        </div>
                        <div class="rkp__box-row">
                            <div class="input__label">Дедлайн по принятию решения</div>
                            {include 'file:chunks/forms/fields/fields.request.date_deadline.tpl' req=1}
                        </div>
                        <div class="rkp__box-row">
                            <div class="rkp__box-title">7. Доступ к информации о компании</div>
                            <label class="form__polit">
                                <input type="checkbox" name="show_title" class="styler styler--transparent" {if !$.get.edit}checked{else}[[!+fi.show_title:is=`1`:then=`checked`:else=``]]{/if}>
                                <span>Показать название компании</span>
                            </label><br>                                                                    
                            <label class="form__polit">
                                <input type="checkbox" name="show_phone" class="styler styler--transparent" {if !$.get.edit}checked{else}[[!+fi.show_phone:is=`1`:then=`checked`:else=``]]{/if}>
                                <span>Показать номер телефона</span>
                            </label><br>
                            <label class="form__polit">
                                <input type="checkbox" name="show_email" class="styler styler--transparent" {if !$.get.edit}checked{else}[[!+fi.show_email:is=`1`:then=`checked`:else=``]]{/if}>
                                <span>Показать e-mail</span>                                
                            </label><br>
                        </div>                    
                        <br>
                        <div class="rkp__box-row">
                            <label class="form__polit">
                                <input type="checkbox" name="polit" class="styler styler--transparent" {if $.get.edit}checked{/if} required>
                                <span>Согласен с условиями <a href="{370 | url}" target="_blank">Пользовательского соглашения</a></span>
                            </label>
                        </div>
                    </div>
                    
                    <div class="rkp__box rkp__buttons">
                        <!--<input type="file" name="file" class="styler" data-placeholder="Прикрепить файл">-->
                        <button class="btn" type="submit">{$btn?:"Отправить"}</button>
                        <a href="{803 | url}" class="btn btn--more">Вернуться к списку тендеров</a>
                    </div>
                </form>
                
                
                
        <br>
        {if ($.get.edit && ($.get.delete is empty))}
            {'!ufForm' | snippet : [
                'tplForm'=>'uf.form.tender.tpl',
                'class'=>'modResource',
                'list'=>'tender',
                'parent'=>$.get.edit,
                'dropzone'=>'{"maxFilesize":4,"maxFiles":5,"acceptedFiles":".jpg, .jpeg, .gif, .png, .txt,  .doc, .docx, .xls, .xlsx, .pdf","template":"edit"}'
            ]}

        {else}
            Файлы для тендера можно будет загрузить после его создания<br>
        {/if}                
                