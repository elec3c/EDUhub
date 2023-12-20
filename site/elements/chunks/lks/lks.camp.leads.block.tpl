                        <tr class="js-cmp-lktables-row" data-id="{$id}" data-user="{$user_id}">
                            <td class="js-cmp-lktables-fio">{$name}</td>
                            <td class="js-cmp-lktables-contacts">
                                <span class="nowrap">{$phone}</span> <br>
                                {$email} {if $tg}<br>{$tg}{/if}
                            </td>
                            <td class="js-cmp-lktables-child">
                                {$name_child}
                            </td>
                            <td class="js-cmp-lktables-age">
                                {if $gender=='m'}муж <br>{elseif $gender=='w'}жен<br>{/if}
                                {if $age} {$age} лет{/if}
                            </td>
                            <td class="js-cmp-lktables-address">{$address}</td>
                            <td><input type="text" name="cabinet" readonly class="input input--camp input--w-smx" value="{$cabinet}" placeholder=""></td>
                            <td><input type="text" name="shift" readonly class="input input--camp input--w-smx" value="{$shift}" placeholder=""></td>
                            <td><input type="text" name="group" readonly class="input input--camp input--w-smx" value="{$group}" placeholder=""></td>
                            <td><input type="text" name="time" readonly class="input input--camp input--w-smx" value="{$time_from}-{$time_to}" placeholder=""></td>
                            <td><input type="text" name="sum" readonly class="input input--camp input--w-smx" value="{$sum}" placeholder=""></td>
                            <td><input type="text" name="sale" readonly class="input input--camp input--w-smx" value="{$sale}" placeholder=""></td>
                            <td><div class="input__hhint">
                                    <input type="text" name="note" readonly class="input input--camp input--comment" value="{$note}" placeholder="">
                                    <div class="input__hhint-hint p-right"><div class="input__hhint-wrap js-cmp-lktables-note">{$note}</div></div>
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
                                            {if $status == 1}
                                            <li class="active"><img src="assets/images/icons/document-gray.svg" alt=""><span>Договор заключен</span></li>
                                            {else}
                                            <li><a href="#" class="js-cmp-lktables-row-change_status" data-status="1"><img src="assets/images/icons/document-gray.svg" alt=""><span>Заключить договор</span></a></li>
                                            {/if}
                                            <li><a href="#" class="js-cmp-lktables-row-change"><img src="assets/images/icons/edit-gray.svg" alt=""><span>Редактировать</span></a></li>
                                            <li><a href="#" class="js-cmp-lktables-row-delete"><img src="assets/images/icons/delete-gray.svg" alt=""><span>Удалить</span></a></li>
                                            <li><a href="#" class="js-cmp-lktables-row-clone"><img src="assets/images/icons/move-gray.svg" alt=""><span>Создать копию</span></a></li>
                                        </ul>
                                    </div>   
   
                                </div>
                            </td>
                        </tr>
                        <tr class="cmp_lktables__rowform js-cmp-lktables-row-form row--hide"  data-type="leads">
                            <td colspan="13">
                                <form method="post" action="" class="cmp_lktablesform js-cmp-lktablesform" data-action="edit" data-form="change" data-type="leads" data-id="{$id}" data-user="{$user_id}">
                                    <div class="cmp_lktablesform__inner">
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">ФИО родителя</div>
                                            <input type="text" name="name" class="input input--camp  w--md" value="{$name}" placeholder="ФИО родителя" data-required>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Телефон</div>
                                            <input type="tel" name="phone" class="input input--camp  w--md phone-mask" value="{$phone}" placeholder="Телефон" data-required>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">E-mail</div>
                                            <input type="text" name="email" class="input input--camp  w--md" value="{$email}" placeholder="E-mail">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Telegram</div>
                                            <input type="text" name="tg" class="input input--camp  w--md" value="{$tg}" placeholder="Telegram">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">ФИО ребенка</div>
                                            <input type="text" name="name_child" class="input input--camp  w--md" value="{$name_child}" placeholder="ФИО ребенка">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Возраст</div>
                                            <input type="text" name="age" class="input input--camp  w--sm" value="{$age}" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="m" {if $gender=='m'}checked{/if}><span>муж.</span></label>
                                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="w" {if $gender=='w'}checked{/if}><span>жен.</span></label>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Адрес</div>
                                            <select class="styler styler--camp w--md" name="address" data-placeholder="Адрес" data-required>
                                                <option value=""></option>
                                                <option value="г.Минск ул. Уручская,19" selected>г.Минск ул. Уручская,19</option>
                                                <option value="Адрес 2">Адрес 2</option>
                                                <option value="Адрес 3">Адрес 3</option>
                                            </select>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Кабинет</div>
                                            <input type="text" name="cabinet" class="input input--camp w--sm" value="{$cabinet}" placeholder="1">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Смена</div>
                                            <input type="text" name="shift" class="input input--camp w--sm" value="{$shift}" placeholder="1">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Группа</div>
                                            <select class="styler styler--camp w--md" name="group" data-placeholder="Группа">
                                                <option value=""></option>
                                                <option value="15" selected>Группа 15</option>
                                                <option value="2">Группа 2</option>
                                                <option value="3">Группа 3</option>
                                            </select>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Время занятий</div>
                                            <div class="cmp_lktablesform__icol-inputs">
                                                <input type="text" name="time_from" class="input input--camp w--sm" value="{$time_from}" placeholder="9">
                                                <input type="text" name="time_to" class="input input--camp w--sm" value="{$time_to}" placeholder="12">
                                            </div>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Сумма <br>договора</div>
                                            <input type="text" name="sum" class="input input--camp w--sm" value="{$sum}" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Скидка</div>
                                            <input type="text" name="sale" class="input input--camp w--sm" value="{$sale}" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">К оплате</div>
                                            <input type="text" name="to_pay" class="input input--camp w--sm" value="{$to_pay}" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--note">
                                            <div class="form__label">Примечание</div>
                                            <input type="text" name="note" class="input input--camp w--md" value="{$note}" placeholder="Примечание">
                                        </div>

                                    </div>
                                    <div class="cmp_lktablesform__buttons">
                                        <button class="btn btn--purple btn--sm" type="submit">Сохранить</button>
                                    </div>
                                </form>
                            </td>
                        </tr>