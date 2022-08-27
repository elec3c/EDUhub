{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        
        <section class="lk analitics section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мой профиль</h2>
                </div>


                <div class="analitics__head">
                    <div class="lk__nav">
                        <ul>
                            <li><a href="{$_modx->makeUrl(161)}">Пополнение кабинетов школ</a></li>
                            <li class="active">Аналитика</li>
                        </ul>
                    </div>
                        
                    <div class="analitics__dates">
                        <div class="analitics__dates-item">
                            <input type="text" placeholder="Дата с" class="input input--date datepicker-input">
                        </div>
                        <div class="analitics__dates-item">
                            <input type="text" placeholder="Дата по" class="input input--date datepicker-input">
                        </div>
                        <button class="btn btn--excel"><img src="assets/images/icons/excel.svg" alt=""></button>
                    </div>
                </div>

                <div class="analitics__block lk__wraplr section__lr">
                    <div class="analitics__item">
                        <div class="analitics__item-bl">
                            <div class="analitics__item-title">лид</div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Имя</div>
                                    Алексей
                                </div>
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Образовательный центр</div>
                                    2English
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Курс</div>
                                    общий английский
                                </div>
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Запрос на звонок</div>
                                    12.07.2022
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Открыт контакт</div>
                                    -
                                </div>
                            </div>
                        </div>
                        <div class="analitics__item-bl">
                            <div class="analitics__item-title">Промокоды</div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Дата получения</div>
                                    -
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Срок действия</div>
                                    -
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Скидка</div>
                                    -
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Отменен</div>
                                    -
                                </div>
                            </div>
                            
                        </div>
                    </div><!--analitics__item-->
                    
                    <div class="analitics__item">
                        <div class="analitics__item-bl">
                            <div class="analitics__item-title show-tablet">лид</div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Имя</div>
                                    Алексей
                                </div>
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Образовательный центр</div>
                                    Стримлайн
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Курс</div>
                                    разговорный
                                </div>
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Запрос на звонок</div>
                                    15.07.2022
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Открыт контакт</div>
                                    16.07.2022
                                </div>
                            </div>
                        </div>
                        <div class="analitics__item-bl">
                            <div class="analitics__item-title show-tablet">Промокоды</div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Дата получения</div>
                                    15.07.2022
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Срок действия</div>
                                    01.09.2022
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Скидка</div>
                                    20 руб.
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Отменен</div>
                                    16.07.2022 <br> пользователем
                                </div>
                            </div>
                            
                        </div>
                    </div><!--analitics__item-->
                    
                    <div class="analitics__item">
                        <div class="analitics__item-bl">
                            <div class="analitics__item-title show-tablet">лид</div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Имя</div>
                                    Ирина
                                </div>
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Образовательный центр</div>
                                    Панда скул
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Курс</div>
                                    разговорный
                                </div>
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Запрос на звонок</div>
                                    15.07.2022
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Открыт контакт</div>
                                    16.07.2022
                                </div>
                            </div>
                        </div>
                        <div class="analitics__item-bl">
                            <div class="analitics__item-title show-tablet">Промокоды</div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Дата получения</div>
                                    15.07.2022
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Срок действия</div>
                                    01.09.2022
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Скидка</div>
                                    20 руб.
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Отменен</div>
                                    16.07.2022 <br> пользователем
                                </div>
                            </div>
                            
                        </div>
                    </div><!--analitics__item-->
                </div><!--analitics__block-->
                
                <div class="analitics__block lk__wraplr section__lr">
                    <div class="analitics__item">
                        <div class="analitics__item-bl">
                            <div class="analitics__item-title">лид</div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Имя</div>
                                    Ирина
                                </div>
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Образовательный центр</div>
                                    Панда скул
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Курс</div>
                                    разговорный
                                </div>
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Запрос на звонок</div>
                                    15.07.2022
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Открыт контакт</div>
                                    16.07.2022
                                </div>
                            </div>
                        </div>
                        <div class="analitics__item-bl">
                            <div class="analitics__item-title">Промокоды</div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Дата получения</div>
                                    15.07.2022
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Срок действия</div>
                                    01.09.2022
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Скидка</div>
                                    20 руб.
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Отменен</div>
                                    -
                                </div>
                            </div>
                            
                        </div>
                    </div><!--analitics__item-->
                </div><!--analitics__block-->
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->        

{/block}
