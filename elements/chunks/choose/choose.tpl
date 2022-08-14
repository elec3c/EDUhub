<section class="choose section__mg" id="choose">
    <div class="container">
        <div class="choose_how section__lr section__mgb">
            <div class="choose_how__wrap">
                <div class="choose_how__head">
                    {if $_modx->resource.choose_title}
                        <h3 class="choose_how__title">{$_modx->resource.choose_title}</h3>
                    {/if}
                    {if $_modx->resource.choose_text}
                        <p class="choose_how__subtitle">{$_modx->resource.choose_text}</p>
                    {/if}
                </div>
                <div class="choose_how__border"></div>
                <div class="choose_how__items">
                    {if $_modx->resource.choose}
                        {set $rows = json_decode($_modx->resource.choose, true)}
                        {set $color = ["","light-yellow","light-green"]}
                        {foreach $rows as $idx => $row}
                            {if $idx != 0 && $color[$idx]}
                                {set $class = "choose_how__item "~$color[$idx]}
                            {else}
                                {set $class = "choose_how__item"}
                            {/if}
                            <div class="{$class}">
                                <div class="choose_how__item-icon"><img src="/assets/images/{$row.image}" alt="{$row.title}">
                                </div>
                                <p>{if $row.title}<b>{$row.title}</b> <br>{/if}{if $row.text}{$row.text}{/if}</p>
                            </div>
                        {/foreach}
                    {/if}
                </div>
            </div>
        </div>
        <!--choose_how-->
    </div>

    <div class="choose__bg choose__wrap">
        <div class="container">

            <form action="" class="hide-tablet-sm">
                <div class="choose__block">
                    <div class="choose__block-title">Я ищу</div>
                    <div class="choose__inputs">

                        <div class="choose__inputs-item w-270">
                            <select name="category" data-placeholder="Категория курса" class="styler styler--white"
                                id="category-select">
                                <option value=""></option>
                                {'!pdoResources' | snippet : [
                                    'parents'=>'85'
                                    'depth'=>0,
                                    'tpl'=>'@CODE <option value="{$alias}">{$menutitle}</option>{$wrapper}',
                                ]}
                            </select>
                        </div>
                        <div class="choose__inputs-item w-320">
                            <select name="sub_category" data-placeholder="Подкатегория курса"
                                class="styler styler--white" id="sub_category-select">
                                <option value=""></option>
                                {'!pdoResources' | snippet : [
                                        'parents'=>'10'
                                        'depth'=>0,
                                        'tpl'=>'@CODE <option data-chained="language-courses" value="{$alias}">{$menutitle}
                                </option>{$wrapper}',
                                ]}
                                {'!pdoResources' | snippet : [
                                        'parents'=>'11'
                                        'depth'=>0,
                                        'tpl'=>'@CODE <option data-chained="it-courses" value="{$alias}">{$menutitle}
                                </option>{$wrapper}',
                                ]}
                            </select>
                        </div>
                        <div class="choose__inputs-item w-250">
                            <select name="type" data-placeholder="Тип" class="styler styler--white"
                                id="type-select">
                                <option value=""></option>
                                <option value="casual" data-chained="language-courses it-courses">Обычные</option>
                                <option value="intensive" data-chained="language-courses it-courses">Интенсив</option>
                                <option value="business" data-chained="language-courses">Деловой</option>
                                <option value="for-it" data-chained="language-courses">Для IT</option>
                            </select>
                        </div>

                        <div class="choose__inputs-item w-250">
                        <select name="type" data-placeholder="Уровень" class="styler styler--white"
                                id="level-select">
                                <option value=""></option>
                                <option value="zero" data-chained="language-courses it-courses">Начальный</option>
                                <option value="junior" data-chained="it-courses">Junior</option>
                                <option value="middle" data-chained="it-courses">Middle</option>
                                <option value="senior" data-chained="it-courses">Senior</option>
                                <option value="a1" data-chained="language-courses">A1</option>
                                <option value="a2" data-chained="language-courses">A2</option>
                                <option value="b1" data-chained="language-courses">B1</option>
                                <option value="b2" data-chained="language-courses">B2</option>
                                <option value="c1" data-chained="language-courses">C1</option>
                                <option value="c2" data-chained="language-courses">C2</option>
                            </select>
                        </div>
                        <div class="choose__inputs-item w-200">
                            <select name="age" data-placeholder="Возраст" class="styler styler--white">
                                <option value=""></option>
                                <option value="3-7">3-7</option>
                                <option value="7-11">7-11</option>
                                <option value="11-17">11-17</option>
                                <option value="18+">18+</option>
                            </select>
                        </div>
                        <div class="choose__inputs-item w-230">
                            <select name="form" data-placeholder="Форма обучения" class="styler styler--white">
                                <option value=""></option>
                                <option value="offline">Офлайн</option>
                                <option value="online">Онлайн</option>
                            </select>
                        </div>
                        <div class="choose__inputs-item w-270 w-230-tablet">
                            <select name="format" data-placeholder="Формат обучения" class="styler styler--white">
                                <option value=""></option>
                                <option value="group">Групповые</option>
                                <option value="individual">Индивидуальные</option>
                            </select>
                        </div>
                        <div class="choose__inputs-item w-200">
                            <select name="time" data-placeholder="Время обучения" class="styler styler--white">
                                <option value=""></option>
                                <option value="10-14">10-14</option>
                                <option value="15-20">15-20</option>
                            </select>
                        </div>
                        <div class="choose__inputs-item w-230">
                            <select name="days" data-placeholder="Дни занятий" class="styler styler--white">
                                <option value=""></option>
                                <option value="пн-пт">пн-пт</option>
                                <option value="сб-вс">сб-вс</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="choose__block">
                    <div class="choose__block-title">Место и желаемая дата начала обучения</div>
                    <div class="choose__inputs">
                        <div class="choose__inputs-item w-230">
                            <select name="city" data-placeholder="Город" class="styler styler--white">
                                <option value=""></option>
                                <option value="minsk">Минск</option>
                                <option value="brest">Брест</option>
                                <option value="gomel">Гомель</option>
                                <option value="grodno">Гродно</option>
                                <option value="vitebsk">Витебск</option>
                                <option value="mogelev">Могелёв</option>
                            </select>
                        </div>
                        <div class="choose__inputs-item w-270">
                            <select name="region" data-placeholder="Район" class="styler styler--white">
                                <option value=""></option>
                                <option value="Район 1">Район 1</option>
                                <option value="Район 2">Район 2</option>
                                <option value="Район 3">Район 3</option>
                            </select>
                        </div>
                        <div class="choose__inputs-item w-270">
                            <select name="metro" data-placeholder="Метро" class="styler styler--white">
                                <option value=""></option>
                                <option value="Молодёжная">Молодёжная</option>
                                <option value="Немига">Немига</option>
                                <option value="Пушкинская">Пушкинская</option>
                            </select>
                        </div>
                        <div class="choose__inputs-item w-210">
                            <input type="text" placeholder="Дата с"
                                class="input input--white input--date datepicker-input">
                        </div>
                        <div class="choose__inputs-item choose__inputs-button">
                            <button class="btn w-all">ПОИСК</button>
                        </div>
                    </div>
                </div>
            </form>


            <form action="" class="show-tablet-sm choose-filters">

                <div class="choose__block-title">Я ищу</div>

                <div class="choose__inputs-item w-300">
                    <select name="direction" data-placeholder="Направление" class="styler styler--white">
                        <option value=""></option>
                        <option value="Python">Python</option>
                        <option value="Java">Java</option>
                        <option value="JavaScript">JavaScript</option>
                        <option value="C++">C++</option>
                        <option value="Разработка для iOS">Разработка для iOS</option>
                        <option value="Рекрутинг в IT">Рекрутинг в IT</option>
                        <option value="Бизнес-анализ">Бизнес-анализ</option>
                        <option value="Project Manager">Project Manager</option>
                        <option value="Тестировщики">Тестировщики</option>
                        <option value="Python">Python</option>
                        <option value="Java">Java</option>
                        <option value="JavaScript">JavaScript</option>
                        <option value="C++">C++</option>
                        <option value="Разработка для iOS">Разработка для iOS</option>
                        <option value="Рекрутинг в IT">Рекрутинг в IT</option>
                        <option value="Бизнес-анализ">Бизнес-анализ</option>
                        <option value="Project Manager">Project Manager</option>
                        <option value="Тестировщики">Тестировщики</option>
                        <option value="Python">Python</option>
                        <option value="Java">Java</option>
                        <option value="JavaScript">JavaScript</option>
                        <option value="C++">C++</option>
                        <option value="Разработка для iOS">Разработка для iOS</option>
                        <option value="Рекрутинг в IT">Рекрутинг в IT</option>
                        <option value="Бизнес-анализ">Бизнес-анализ</option>
                        <option value="Project Manager">Project Manager</option>
                        <option value="Тестировщики">Тестировщики</option>
                    </select>
                </div>
                <div class="choose__inputs-item w-270">
                    <select name="category" data-placeholder="Категория курса" class="styler styler--white">
                        <option value=""></option>
                        <option value="Python">Python</option>
                        <option value="Java">Java</option>
                        <option value="JavaScript">JavaScript</option>
                        <option value="C++">C++</option>
                    </select>
                </div>
                <div class="choose__inputs-item w-320">
                    <select name="sub_category" data-placeholder="Подкатегория курса" class="styler styler--white">
                        <option value=""></option>
                        <option value="Python">Python</option>
                        <option value="Java">Java</option>
                        <option value="JavaScript">JavaScript</option>
                        <option value="C++">C++</option>
                    </select>
                </div>

                <a href="#" class="choose__inputs-more choose-more-filters">
                    <span class="t-opened">Еще фильтры</span>
                    <span class="t-closed">Свернуть фильтры</span>
                    <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round"
                            stroke-linejoin="round" />
                    </svg>
                </a>

                <div class="choose__inputs-dopf choose-dopf-filters">
                    <div class="choose__inputs-item w-250">
                        <select name="level" data-placeholder="Уровень" class="styler styler--white">
                            <option value=""></option>
                            <option value="Python">Python</option>
                            <option value="Java">Java</option>
                            <option value="JavaScript">JavaScript</option>
                            <option value="C++">C++</option>
                        </select>
                    </div>
                    <div class="choose__inputs-item w-200">
                        <select name="age" data-placeholder="Возраст" class="styler styler--white">
                            <option value=""></option>
                            <option value="14-17">14-17</option>
                            <option value="18-25">18-25</option>
                            <option value="25-35">25-35</option>
                        </select>
                    </div>
                    <div class="choose__inputs-item w-230">
                        <select name="form" data-placeholder="Форма обучения" class="styler styler--white">
                            <option value=""></option>
                            <option value="очное">очное</option>
                            <option value="онлайн">онлайн</option>
                        </select>
                    </div>
                    <div class="choose__inputs-item w-270 w-230-tablet">
                        <select name="format" data-placeholder="Формат обучения" class="styler styler--white">
                            <option value=""></option>
                            <option value="Формат обучения 1">Формат обучения 1</option>
                            <option value="Формат обучения 2">Формат обучения 2</option>
                            <option value="Формат обучения 3">Формат обучения 3</option>
                        </select>
                    </div>
                    <div class="choose__inputs-item w-200">
                        <select name="time" data-placeholder="Время обучения" class="styler styler--white">
                            <option value=""></option>
                            <option value="10-14">10-14</option>
                            <option value="15-20">15-20</option>
                        </select>
                    </div>
                    <div class="choose__inputs-item w-230">
                        <select name="days" data-placeholder="Дни занятий" class="styler styler--white">
                            <option value=""></option>
                            <option value="пн-пт">пн-пт</option>
                            <option value="сб-вс">сб-вс</option>
                        </select>
                    </div>

                    <div class="choose__block-title">Место и желаемая дата начала обучения</div>

                    <div class="choose__inputs-item w-230">
                        <select name="city" data-placeholder="Город" class="styler styler--white">
                            <option value=""></option>
                            <option value="Брест">Брест</option>
                            <option value="Минск">Минск</option>
                            <option value="Москва">Москва</option>
                        </select>
                    </div>
                    <div class="choose__inputs-item w-270">
                        <select name="region" data-placeholder="Район" class="styler styler--white">
                            <option value=""></option>
                            <option value="Район 1">Район 1</option>
                            <option value="Район 2">Район 2</option>
                            <option value="Район 3">Район 3</option>
                        </select>
                    </div>
                    <div class="choose__inputs-item w-270">
                        <select name="metro" data-placeholder="Метро" class="styler styler--white">
                            <option value=""></option>
                            <option value="Молодёжная">Молодёжная</option>
                            <option value="Немига">Немига</option>
                            <option value="Пушкинская">Пушкинская</option>
                        </select>
                    </div>
                    <div class="choose__inputs-item w-210">
                        <input type="text" placeholder="Дата с" class="input input--white input--date datepicker-input">
                    </div>
                </div>

                <div class="choose__inputs-item choose__inputs-button">
                    <button class="btn w-all">ПОИСК</button>
                </div>

            </form>


        </div>
    </div>
</section><!-- choose -->