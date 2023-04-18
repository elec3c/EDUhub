{set $user_id = $_pls['tv.scools_owner']}
{if $user_id > 0}
    {set $fullname = $user_id | user:'fullname'}
    {set $show_user = $user_id | user:'show_user'}
    
    {set $scope = $user_id | user:'scope'}
    {set $count_employees = $user_id | user:'count_employees'}
{/if}


{if $show_user}
<div class="ssrequest__item pd0 lk__wraplr section__lr js-item">
                        <div class="ssrequest__item-head">
                            <div class="ssrequest__item-col">
                                <div class="ssrequest__item-label show-tablet">Компании, открытые <br> для предложений <br class="hide-tablet-sm">о партнерстве</div>
                                {$fullname}
                            </div>
                            <div class="ssrequest__item-col">
                                <div class="ssrequest__item-label show-tablet">Сфера дейтельности</div>
                                {$scope | resource:'pagetitle'}
                            </div>
                            <div class="ssrequest__item-col">
                                <div class="ssrequest__item-label show-tablet">Количество сотрудников компании</div>
                                {$count_employees}
                            </div>
                            <div class="ssrequest__item-col ssrequest__item-col--status">
                                <div class="ssrequest__item-label show-tablet">Статус</div>
                                предложение не отправлено
                            </div>
                            <div class="ssrequest__item-col ssrequest__item-col--buttons">
                                <button class="btn js-toggle-proposal w-all">Добавить предложение</button>
                            </div>
                        </div>

                        <form method="post" action="" class="ssrequest__item-body js-body">
                            <input name="controll" class="no-display" type="text"> 

                            <div class="ssrequest__item-irow ssrequest__item-cols ssrequest__item-cols--3">
                                <div class="ssrequest__item-icol ssrequest__item-icol--date">
                                    <div class="ssrequest__item-label">Дата</div>
                                    15/02/2023
                                </div>
                                <div class="ssrequest__item-icol">
                                    <div class="ssrequest__item-label">Направления</div>
                                    <div class="checkselect checkselect--white  check-select" data-placeholder="Все">
                                        <input type="hidden" name="course_metro" class="check-select-value">
                                        <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Все</div>
                                        <div class="checkselect__dropdown check-select-dropdown">
                                            <div class="checkselect__list">
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value="all"><span>Все</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>IT</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Языковые</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Маркетинг</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Бизнес</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Финансы</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Продажи</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Управление персоналом</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Дизайн и графика</span></label>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                                <div class="ssrequest__item-icol ssrequest__item-icol--course">
                                    <div class="ssrequest__item-label">Выбрать курсы</div>
                                    <div class="checkselect checkselect--white  check-select" data-placeholder="Выбрать все">
                                        <input type="hidden" name="course_metro" class="check-select-value">
                                        <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Выбрать все</div>
                                        <div class="checkselect__dropdown check-select-dropdown">
                                            <div class="checkselect__list">
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value="all"><span>Выбрать все</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>IT</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Языковые</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Маркетинг</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Бизнес</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Финансы</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Продажи</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Управление персоналом</span></label>
                                                <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Дизайн и графика</span></label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="ssrequest__item-irow ssrequest__item-cols">
                                <div class="ssrequest__item-icol">
                                    <div class="ssrequest__item-label">Размер скидки / ед. изм</div>
                                    <input type="text" class="input input--white" placeholder="Введите числовое значение">
                                </div>
                                <div class="ssrequest__item-icol">
                                    <div class="ssrequest__item-label ssrequest__item-label--empty">&nbsp;</div>
                                    <select name="" class="styler styler--white">
                                        <option value="Публичная оферта">Ед. измерения скидки</option>
                                        <option value="Бумажный носитель">Ед. измерения скидки</option>
                                    </select>
                                </div>
                                <div class="ssrequest__item-icol">
                                    <div class="ssrequest__item-label">На что дается скидка</div>
                                    <select name="" class="styler styler--white">
                                        <option value="Стоимость курса">Стоимость курса</option>
                                        <option value="Стоимость курса">Стоимость курса</option>
                                    </select>
                                </div>
                                <div class="ssrequest__item-icol">
                                    <div class="ssrequest__item-label">Выберите способ подписания договора</div>
                                    <select name="" class="styler styler--white">
                                        <option value="Публичная оферта">Публичная оферта</option>
                                        <option value="Бумажный носитель">Бумажный носитель</option>
                                    </select>
                                </div>
                            </div>
                            <div class="ssrequest__item-irow">
                                <textarea name="note" class="input input--white height-input" placeholder="Примечание"></textarea>
                            </div>

                            <div class="ssrequest__item-buttons">
                                <button class="btn btn--purple">Отправить</button>
                                <button class="btn btn--bdrred">Удалить строку</button>
                            </div>
                        </form>
                    </div><!--ssrequest__item-->
{/if}                    