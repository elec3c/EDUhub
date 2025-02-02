{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        
        <section class="lk compare section__mgb">
            <div class="container">
                <div class="section__head section__head--cols">
                    <h2 class="section__title">Сравнение курсов</h2>
                    <div class="section__head-right">
                        <button class="btn btn--gray compare__clear">Очистить сравнение</button>
                    </div>
                </div>

                <div class="compare__wrap ">
                    <div class="compare__labels">
                        <div class="compare__item">
                            <div class="compare__item-photo"></div>
                            <div class="compare__item-info">
                                <div class="compare__item-row">Название школы</div>
                                <div class="compare__item-row">Название курса</div>
                                <div class="compare__item-row">Продолжительность</div>
                                <div class="compare__item-row">Стоимость курса</div>
                                <div class="compare__item-row">Количество занятий в неделю</div>
                                <div class="compare__item-row">Стоимость 1-го занятия</div>
                                <div class="compare__item-row">Количество человек в группе</div>
                                <div class="compare__item-row">Длительность занятия</div>
                                <div class="compare__item-row">Доп. скидка (однократная)</div>
                                <div class="compare__item-row">Отзывы</div>
                                <div class="compare__item-row">Рейтинг</div>

                            </div>
                        </div>
                    </div>

                    <div class="compare__items">
                        <div class=" compare-carousel swiper">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="compare__item compare-item">
                                        <a href="" class="compare__item-remove compare-item-remove">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 22C17.5 22 22 17.5 22 12C22 6.5 17.5 2 12 2C6.5 2 2 6.5 2 12C2 17.5 6.5 22 12 22Z" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M9.16992 14.8299L14.8299 9.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M14.8299 14.8299L9.16992 9.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg>                                                
                                        </a>
                                        <div class="compare__item-photo"><img src="assets/images/courses/3.jpg" alt=""></div>
                                        <div class="compare__item-info">
                                            <div class="compare__item-row"><a href="">skillbox.ru</a></div>
                                            <div class="compare__item-row"><a href="course.html">Python-разработчик</a></div>
                                            <div class="compare__item-row">12 месяцев</div>
                                            <div class="compare__item-row">113 419 руб.</div>
                                            <div class="compare__item-row">4</div>
                                            <div class="compare__item-row">3659 руб.</div>
                                            <div class="compare__item-row">8</div>
                                            <div class="compare__item-row">100 мин</div>
                                            <div class="compare__item-row min">35%</div>
                                            <div class="compare__item-row">26 отзывов</div>
                                            <div class="compare__item-row">4,9</div>

                                            <div class="compare__item-buttons">
                                                <button class="btn w-all">Заказать курс</button>
                                                <button class="btn btn--bdpurple w-all">Получить скидку</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="compare__item compare-item">
                                        <a href="" class="compare__item-remove compare-item-remove">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 22C17.5 22 22 17.5 22 12C22 6.5 17.5 2 12 2C6.5 2 2 6.5 2 12C2 17.5 6.5 22 12 22Z" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M9.16992 14.8299L14.8299 9.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M14.8299 14.8299L9.16992 9.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg>                                                
                                        </a>
                                        <div class="compare__item-photo"><img src="assets/images/courses/1.jpg" alt=""></div>
                                        <div class="compare__item-info">
                                            <div class="compare__item-row"><a href="">skillfactory.team</a></div>
                                            <div class="compare__item-row"><a href="course.html">Data Scientist</a></div>
                                            <div class="compare__item-row">8 месяцев</div>
                                            <div class="compare__item-row">110 259 руб.</div>
                                            <div class="compare__item-row">4</div>
                                            <div class="compare__item-row min">1559 руб.</div>
                                            <div class="compare__item-row">14</div>
                                            <div class="compare__item-row">60 мин</div>
                                            <div class="compare__item-row">5%</div>
                                            <div class="compare__item-row">10 отзывов</div>
                                            <div class="compare__item-row">4,3</div>

                                            <div class="compare__item-buttons">
                                                <button class="btn w-all">Заказать курс</button>
                                                <button class="btn btn--bdpurple w-all">Получить скидку</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="compare__item compare-item">
                                        <a href="" class="compare__item-remove compare-item-remove">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 22C17.5 22 22 17.5 22 12C22 6.5 17.5 2 12 2C6.5 2 2 6.5 2 12C2 17.5 6.5 22 12 22Z" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M9.16992 14.8299L14.8299 9.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M14.8299 14.8299L9.16992 9.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg>                                                
                                        </a>
                                        <div class="compare__item-photo"><img src="assets/images/courses/7.jpg" alt=""></div>
                                        <div class="compare__item-info">
                                            <div class="compare__item-row"><a href="">sky.pro</a></div>
                                            <div class="compare__item-row"><a href="course.html">Разработчик на Python</a></div>
                                            <div class="compare__item-row min">4 месяца</div>
                                            <div class="compare__item-row">58 259 руб.</div>
                                            <div class="compare__item-row">4</div>
                                            <div class="compare__item-row">415 руб.</div>
                                            <div class="compare__item-row">10</div>
                                            <div class="compare__item-row">90 мин</div>
                                            <div class="compare__item-row">20%</div>
                                            <div class="compare__item-row">117 отзывов</div>
                                            <div class="compare__item-row">4,6</div>

                                            <div class="compare__item-buttons">
                                                <button class="btn w-all">Заказать курс</button>
                                                <button class="btn btn--bdpurple w-all">Получить скидку</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="compare__item compare-item">
                                        <a href="" class="compare__item-remove compare-item-remove">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 22C17.5 22 22 17.5 22 12C22 6.5 17.5 2 12 2C6.5 2 2 6.5 2 12C2 17.5 6.5 22 12 22Z" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M9.16992 14.8299L14.8299 9.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M14.8299 14.8299L9.16992 9.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg>                                                
                                        </a>
                                        <div class="compare__item-photo"><img src="assets/images/courses/2.jpg" alt=""></div>
                                        <div class="compare__item-info">
                                            <div class="compare__item-row"><a href="">advance-club.ru</a></div>
                                            <div class="compare__item-row"><a href="course.html">Английский для ваших целей</a></div>
                                            <div class="compare__item-row">18 месяцев</div>
                                            <div class="compare__item-row">113 419 руб.</div>
                                            <div class="compare__item-row">4</div>
                                            <div class="compare__item-row">3659 руб.</div>
                                            <div class="compare__item-row min">6</div>
                                            <div class="compare__item-row">100 мин</div>
                                            <div class="compare__item-row">15%</div>
                                            <div class="compare__item-row">26 отзывов</div>
                                            <div class="compare__item-row">4,9</div>

                                            <div class="compare__item-buttons">
                                                <button class="btn w-all">Заказать курс</button>
                                                <button class="btn btn--bdpurple w-all">Получить скидку</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="swiper-scrollbar"></div>
                        </div>
                    </div>
                </div>

            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}
