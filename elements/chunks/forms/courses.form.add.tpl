<form action="[[~[[*id]]]]" enctype="multipart/form-data" method="post">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="resource_id" value="[[+fi.id]]" />
    <input id="parent" type="hidden" name="parent" value="65" />
    <input type="hidden" name="pagetitle" value="[[+fi.pagetitle]]"/>
    

    <!--<div class="label">Название</div>
    [[+fi.error.pagetitle]]
    <input class="field" type="text" name="pagetitle" value="[[+fi.pagetitle]]" />
    <h3>Подробное описание</h3>
    [[+fi.error.content]]
    <textarea class="textinput" cols="70" name="content" rows="10">[[+fi.content]]</textarea>-->
    
    <div class="cadd__block">
        <div class="cadd__label">Категория курса</div>
            <div class="cadd__inputs cadd__in1">
                <div class="cadd__input">
                    <select name="category" id="type" data-placeholder="Категория курса" class="styler">
                        <option value=""></option>
                        <option value="11">IT</option>
                        <option value="10">Языковые</option>
                    </select>
                </div>
                <div class="cadd__input">
                    <select name="sub_category" id="cat" data-placeholder="Подкатегория курса" class="styler">
                        <option  data-chained="11" value=""></option>
                        <option  data-chained="11" value="Python">Python</option>
                        <option   data-chained="11" value="Java">Java</option>
                        <option   data-chained="11" value="JavaScript">JavaScript</option>
                        <option   data-chained="11" value="C++">C++</option>
                        <option   data-chained="10" value="C++">Английский</option>
                        <option   data-chained="10" value="C++">Немецкий</option>
                        <option   data-chained="10" value="C++">Китайский</option>
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
                            <div class="cadd__input">
                                <select name="area" data-placeholder="Район" class="styler">
                                    <option value=""></option>
                                    <option value="Фрунзенский">Фрунзенский</option>
                                    <option value="Советский">Советский</option>
                                    <option value="Первомайский">Первомайский</option>
                                </select>
                            </div>
                            <div class="cadd__input">
                                <select name="metro" data-placeholder="Метро" class="styler">
                                    <option value=""></option>
                                    <option value="Октябрьская">Октябрьская</option>
                                    <option value="Первомайская">Первомайская</option>
                                    <option value="Каменная горка">Каменная горка</option>
                                </select>
                            </div>
                        </div>

                    </div>

    <!--<input class="add-button" type="submit" value="Добавить курс" />-->
                    <div class="cadd__button">
                        <div class="btn w-all">Опубликовать</div>
                    </div>
</form>    