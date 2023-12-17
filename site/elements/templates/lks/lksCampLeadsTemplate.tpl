
{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
        {set $pid = $.get.pid?:0}
        {set $userId = $pid | resource :'userId'}
        {set $tplId = $pid | resource :'template'}
        
        {if (($userId > 0) && ($_modx->user.id==$userId))}
            {set $countLeads = '!getCountDataForCamp' | snippet :['user_id'=>$userId,'pid'=>$pid,'type'=>'leads']}
            <section class="cmp_create section__mg section__first">
            <div class="container">
                <div class="section__head section__head--cols mb--md">
                    <h2 class="section__title">{$_modx->resource.pagetitle}</h2>
                </div>
                
                <div class="lk__nav lk__nav--camp">
                    <ul>
                        <li class="active">Лиды</li>
                        <li><a href="{2048 | url}?pid={$pid}">Бронь</a></li>
                        <li><a href="{2100 | url}?pid={$pid}">Договоры</a></li>
                    </ul>
                </div>

                <div class="cmp_lkthead mb--sm">
                    <div class="cmp_lkthead__act">
                        <div class="cmp_lkthead__label">Лиды ({$countLeads})</div>
                        <div class="cmp_lkthead__buttons">
                            <button class="btn btn--sm btn--purple js-cmp-lktablesform-show">Добавить лид</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="container container--lg">
                <div class="cmp_lktables fs--sm">
                    <table class="js-lktables" data-type="leads">
                        <tr>
                            <th class="text--left w-all">ФИО родителя</th>
                            <th class="text--left w-all">Контакты</th>
                            <th class="text--left w-all">ФИО ребенка</th>
                            <th>Пол <br>  Возраст</th>
                            <th class="text--left w-all">Адрес</th>
                            <th>Кабинет</th>
                            <th>Смена</th>
                            <th>Группа</th>
                            <th>Время <br> занятий</th>
                            <th>Сумма <br> договора</th>
                            <th>Скидка</th>
                            <th>Примечание</th>
                            <th></th>
                        </tr>

                        <tr class="js-cmp-lktables-row row--hide"  data-type="leads">
                            <td class="js-cmp-lktables-fio"></td>
                            <td class="js-cmp-lktables-contacts"></td>
                            <td class="js-cmp-lktables-child"></td>
                            <td class="js-cmp-lktables-age"></td>
                            <td class="js-cmp-lktables-address"></td>
                            <td><input type="text" name="cabinet" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><input type="text" name="shift" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><input type="text" name="group" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><input type="text" name="time" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><input type="text" name="sum" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><input type="text" name="sale" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><div class="input__hhint">
                                    <input type="text" name="note" readonly class="input input--camp input--comment" value="" placeholder="">
                                    <div class="input__hhint-hint p-right"><div class="input__hhint-wrap js-cmp-lktables-note"></div></div>
                                </div>
                            </td>
                            <td>
                                <div class="cmp_lktables__act">
                                    <button class="cmp_lktables__act-open">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M7 12C7 13.1046 6.10457 14 5 14C3.89543 14 3 13.1046 3 12C3 10.8954 3.89543 10 5 10C6.10457 10 7 10.8954 7 12Z" fill="#C8C8E4"/>
                                            <path d="M14 12C14 13.1046 13.1046 14 12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12Z" fill="#C8C8E4"/>
                                            <path d="M21 12C21 13.1046 20.1046 14 19 14C17.8954 14 17 13.1046 17 12C17 10.8954 17.8954 10 19 10C20.1046 10 21 10.8954 21 12Z" fill="#C8C8E4"/>
                                            </svg>
                                    </button>
                                    <div class="cmp_lktables__act-menu">
                                        <ul>
                                            <li class="active">Договор заключен</li>
                                            <li><a href="" class="js-cmp-lktables-row-change">Редактировать</a></li>
                                            <li><a href="" class="js-cmp-lktables-row-clone">Создать копию</a></li>
                                            <li><a href="" class="js-cmp-lktables-row-delete">Удалить</a></li>
                                        </ul>
                                    </div>   
                                </div>
                            </td>
                        </tr>



                        <div id="pdopage">
                            <div class="rows">
                                {'!pdoPage' | snippet :[
                                    'ajaxMode'=>'default',
                                    'idx'=>5,
                                    'class'=>'EduCampLeads',
                                    'tvPrefix'=>'',
                                    'processTVs'=>'1',
                                    'limit'=>'1000',                            
                                    'loadModels'=>'camp',
                                    'where'=>[                              
                                        'EduCampLeads.user_id' => $_modx->user.id,
                                        'EduCampLeads.pid' => $pid,
                                        'EduCampLeads.src_id' => 1,
                                        'EduCampLeads.status' => 0
                                    ],                                    
                                    'select'=>[
                                        'EduCampLeads'=>'*'
                                    ]
                                    'sortby'=>[
                                        'EduCampLeads.id'=>'DESC',
                                    ]
                                    'tpl'=>'@FILE chunks/lk/lk.camp.leads.block.tpl'
                                ]?:'<p class="section__intro">Ничего не найдено</p>'}
                            </div>
                            <div class="section__buttons">
                                {$_modx->getPlaceholder('page.nav')}
                            </div>
                        </div>
                        
                    </table>
                </div>  
                <form method="post" action="" class="cmp_lktablesform js-cmp-lktablesform" data-form="new" data-action="create" data-user="{$_modx->user.id}" data-type="leads" style="display: none;">
                    
                    <input type="hidden" name="pid" value="{$pid}"/>
                    <input type="hidden" name="src_id" value="1"/>
                    
                    <div class="cmp_lktablesform__inner">
                        <div class="cmp_lktablesform__icol icol--first">
                            <div class="form__label">ФИО родителя</div>
                            <input type="text" name="name" class="input input--camp  w--md" placeholder="ФИО родителя" data-required>
                        </div>
                        <div class="cmp_lktablesform__icol icol--first">
                            <div class="form__label">Телефон</div>
                            <input type="tel" name="phone" class="input input--camp  w--md phone-mask" placeholder="Телефон" data-required>
                        </div>
                        <div class="cmp_lktablesform__icol icol--first">
                            <div class="form__label">E-mail</div>
                            <input type="text" name="email" class="input input--camp  w--md" placeholder="E-mail">
                        </div>
                        <div class="cmp_lktablesform__icol icol--first">
                            <div class="form__label">Telegram</div>
                            <input type="text" name="tg" class="input input--camp  w--md" placeholder="Telegram">
                        </div>
                        <div class="cmp_lktablesform__icol icol--first">
                            <div class="form__label">ФИО ребенка</div>
                            <input type="text" name="name_child" class="input input--camp  w--md" placeholder="ФИО ребенка">
                        </div>
                        <div class="cmp_lktablesform__icol icol--first">
                            <div class="form__label">Возраст</div>
                            <input type="text" name="age" class="input input--camp  w--sm" placeholder="0">
                        </div>
                        <div class="cmp_lktablesform__icol icol--first">
                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="m" checked><span>муж.</span></label>
                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="w"><span>жен.</span></label>
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Адрес</div>
                            <select class="styler styler--camp w--md" name="address" data-placeholder="Адрес" data-required>
                                <option value=""></option>
                                <option value="Адрес 1">Адрес 1</option>
                                <option value="Адрес 2">Адрес 2</option>
                                <option value="Адрес 3">Адрес 3</option>
                            </select>
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Кабинет</div>
                            <input type="text" name="cabinet" class="input input--camp w--sm" placeholder="1">
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Смена</div>
                            <input type="text" name="shift" class="input input--camp w--sm" placeholder="1">
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Группа</div>
                            <select class="styler styler--camp w--md" name="group" data-placeholder="Группа">
                                <option value=""></option>
                                <option value="1">Группа 1</option>
                                <option value="2">Группа 2</option>
                                <option value="3">Группа 3</option>
                            </select>
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Время занятий</div>
                            <div class="cmp_lktablesform__icol-inputs">
                                <input type="text" name="time_from" class="input input--camp w--sm" placeholder="9">
                                <input type="text" name="time_to" class="input input--camp w--sm" placeholder="12">
                            </div>
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Сумма <br>договора</div>
                            <input type="text" name="sum" class="input input--camp w--sm" placeholder="0">
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Скидка</div>
                            <input type="text" name="sale" class="input input--camp w--sm" placeholder="0">
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">К оплате</div>
                            <input type="text" name="to_pay" class="input input--camp w--sm" placeholder="0">
                        </div>
                        <div class="cmp_lktablesform__icol icol--note">
                            <div class="form__label">Примечание</div>
                            <input type="text" name="note" class="input input--camp w--md" placeholder="Примечание">
                        </div>

                    </div>
                    <div class="cmp_lktablesform__buttons">
                        <button class="btn btn--purple btn--sm" type="submit">Сохранить</button>
                    </div>
                </form>
                
            </div>
        </section><!--  -->
        {else}
            <div class="container">
            {if ($userId > 0) && ($tplId in [27,33])}
                <p>Вы не являетесь владельцем лагеря!</p>
            {else}
                <p>Ошибочка вышла!</p>
            {/if}
            </div>
        {/if}

{/block}
