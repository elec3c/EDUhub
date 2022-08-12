                <form action="">
                    <div class="cadd__block">
                        <div class="cadd__label">Категория курса</div>
                        <div class="cadd__inputs cadd__in1">
                            <div class="cadd__input">
                                <select name="category" data-placeholder="Категория курса" class="styler">
                                    <option value=""></option>
                                    <option value="Python">Python</option>
                                    <option value="Java">Java</option>
                                    <option value="JavaScript">JavaScript</option>
                                    <option value="C++">C++</option>
                                </select>
                            </div>
                            <div class="cadd__input">
                                <select name="sub_category" data-placeholder="Подкатегория курса" class="styler">
                                    <option value=""></option>
                                    <option value="Python">Python</option>
                                    <option value="Java">Java</option>
                                    <option value="JavaScript">JavaScript</option>
                                    <option value="C++">C++</option>
                                </select>
                            </div>
                            <div class="cadd__input">
                                <select name="sub_category" data-placeholder="Вид курса" class="styler">
                                    <option value=""></option>
                                    <option value="Python">Python</option>
                                    <option value="Java">Java</option>
                                    <option value="JavaScript">JavaScript</option>
                                    <option value="C++">C++</option>
                                </select>
                            </div>
                        </div>

                    </div>

                    <div class="cadd__block">
                        <div class="cadd__label">Продолжительность</div>
                        <div class="cadd__inputs cadd__in2">
                            <div class="cadd__input cadd__input--date">
                                <input type="text" placeholder="Дата от" class="input input--date datepicker-input">
                            </div>
                            <div class="cadd__input cadd__input--date">
                                <input type="text" placeholder="Дата до" class="input input--date datepicker-input">
                            </div>
                            <div class="cadd__input">
                                <select name="time" data-placeholder="Длительность курса" class="styler">
                                    <option value=""></option>
                                    <option value="10-14">100 ч</option>
                                    <option value="15-20">150 ч</option>
                                </select>
                            </div>
                            <div class="cadd__input">
                                <select name="time" data-placeholder="Кол-во занятий в неделю" class="styler">
                                    <option value=""></option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                </select>
                            </div>
                            <div class="cadd__input">
                                <select name="time" data-placeholder="Длительность занятия" class="styler">
                                    <option value=""></option>
                                    <option value="30 мин">30 мин</option>
                                    <option value="45 мин">45 мин</option>
                                    <option value="60 мин">60 мин</option>
                                    <option value="90 мин">90 мин</option>
                                    <option value="120 мин">120 мин</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    
                    <div class="cadd__block">
                        <div class="cadd__label">Детали</div>
                        <div class="cadd__inputs cadd__in3">                        
                            <div class="cadd__input w-1">
                                <select name="form" data-placeholder="Форма обучения" class="styler">
                                    <option value=""></option>
                                    <option value="очное">очное</option>
                                    <option value="онлайн">онлайн</option>
                                </select>
                            </div>
                            <div class="cadd__input w-320 w-2">
                                <select name="people_group" data-placeholder="Количество человек в группе" class="styler">
                                    <option value=""></option>
                                    <option value="8-10">8-10</option>
                                    <option value="10-15">10-15</option>
                                    <option value="15-20">15-20</option>
                                    <option value="20-25">20-25</option>
                                    <option value="25-30">25-30</option>
                                </select>
                            </div>
                        </div>
                        <div class="cadd__inputs cadd__in3">
                            <div class="cadd__input">
                                <select name="level_from" data-placeholder="Для уровня от" class="styler">
                                    <option value=""></option>
                                    <option value="Python">Python</option>
                                    <option value="Java">Java</option>
                                    <option value="JavaScript">JavaScript</option>
                                    <option value="C++">C++</option>
                                </select>
                            </div>
                            <div class="cadd__input">
                                <select name="level_to" data-placeholder="Для уровня до" class="styler">
                                    <option value=""></option>
                                    <option value="Python">Python</option>
                                    <option value="Java">Java</option>
                                    <option value="JavaScript">JavaScript</option>
                                    <option value="C++">C++</option>
                                </select>
                            </div>
                            <div class="cadd__input w-210">
                                <select name="age_from" data-placeholder="Для возраста от" class="styler">
                                    <option value=""></option>
                                    <option value="14-17">14-17</option>
                                    <option value="18-25">18-25</option>
                                    <option value="25-35">25-35</option>
                                </select>
                            </div>
                            <div class="cadd__input w-210">
                                <select name="age_to" data-placeholder="Для возраста до" class="styler">
                                    <option value=""></option>
                                    <option value="14-17">14-17</option>
                                    <option value="18-25">18-25</option>
                                    <option value="25-35">25-35</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    
                    <div class="cadd__block">
                        <div class="cadd__label">Стоимость и скидки</div>
                        <div class="cadd__inputs cadd__in4">
                            <div class="cadd__input">
                                <input type="text" class="input" name="price_course" placeholder="Стоимость курса">
                            </div>
                            <div class="cadd__input">
                                <input type="text" class="input" name="price_lesson" placeholder="Стоимость занятия">
                            </div>
                            <div class="cadd__input w-210">
                                <input type="text" class="input" name="sale" placeholder="Размер скидки">
                            </div>
                        </div>        
                    </div>
                    
                    <div class="cadd__block">
                        <div class="cadd__label">Месторасположение</div>
                        <div class="cadd__inputs cadd__in5">
                            <div class="cadd__input">
                                <select name="city" data-placeholder="Город" class="styler">
                                    <option value=""></option>
                                    <option value="Брест">Брест</option>
                                    <option value="Минск">Минск</option>
                                    <option value="Москва">Москва</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="cadd__block">
                        <div class="cadd__label cadd__label--m">Район</div>
                        
                            <label class="form__lcheck"><input type="checkbox" class="styler" name="Фрунзенский"><span>Фрунзенский</span></label>
                            <label class="form__lcheck"><input type="checkbox" class="styler" name="Советский"><span>Советский</span></label>
                            <label class="form__lcheck"><input type="checkbox" class="styler" name="Первомайский"><span>Первомайский</span></label>
                            <label class="form__lcheck"><input type="checkbox" class="styler" name="Центральный"><span>Центральный</span></label>
                    </div>

                    <div class="cadd__block">
                        <div class="cadd__label cadd__label--m">Метро</div>
                        <label class="form__lcheck"><input type="checkbox" class="styler" name="Октябрьская"><span>Октябрьская</span></label>
                        <label class="form__lcheck"><input type="checkbox" class="styler" name="Первомайская"><span>Первомайская</span></label>
                        <label class="form__lcheck"><input type="checkbox" class="styler" name="Каменная горка"><span>Каменная горка</span></label>
                        <label class="form__lcheck"><input type="checkbox" class="styler" name="Кунцевщина"><span>Кунцевщина</span></label>

                    </div>

                    <div class="cadd__button">
                        <div class="btn w-all">Опубликовать</div>
                    </div>
                </form>