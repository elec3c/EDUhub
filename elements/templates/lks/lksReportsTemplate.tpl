{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk reports section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Лиды</h2>
                </div>

                <div class="lk__nav">
                    <ul>
                        <li><a href="lks-leads.html">Заказаны звонки</a></li>
                        <li class="active">Отчет</li>
                    </ul>
                </div>

                <div class="reports__scroll">
                    <div class="reports__block">
                        <div class="reports__item reports__head">
                            <div class="reports__item-cell reports__head-cell"></div>
                            <div class="reports__item-cell reports__head-cell">ЛИМИТ, РУБ</div>
                            <div class="reports__item-cell reports__head-cell">ПРОМОКОДЫ</div>
                            <div class="reports__item-cell reports__head-cell">сумма комиссии</div>
                            <div class="reports__item-cell reports__head-cell">Свободный остаток</div>
                            <div class="reports__item-cell reports__item-cell--empty"></div>
                        </div>
                    </div>    

                    <div class="reports__block">
                        <div class="reports__item reports__header">
                            <div class="reports__item-cell reports__header-cell"><b>Разговорный английский</b></div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Лимит, руб.</div> 120</div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Промокоды</div> 1</div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Сумма  <br> комиссии</div> 40</div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Свободный  <br> остаток</div> 80</div>
                            <div class="reports__item-cell reports__item-cell--empty"></div>
                        </div>
                        <div class="reports__item">
                            <div class="reports__item-cell">
                                <a href="" class="reports__item-name reports-open-contacts">Василий, 30 лет</a>
                                <div class="reports__item-contacts reports-popup-contacts">
                                    <div class="reports__item-name">Василий, 30 лет</div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Электронная почта</div> vs@mail.ru
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Телефон</div> +375297897638
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Telegram</div> vasilii30
                                    </div>
                                </div>

                                <div class="reports__item-props">
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Уровень</div> A1
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Промокод</div> ххх-ххххх-01
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Сумма <br> комиссии</div> 40
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Свободный  <br> остаток</div> -
                                    </div>

                                </div>

                                
                                <a href="#" class="reports__item-more reports-item-more">
                                    <span>Еще</span>
                                    <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>                                        
                                </a>
                                <div class="reports__item-dop reports-item-dop">
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Форма обучения</div> группы
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Формат/адрес</div> г. Минск, м. Купаловская
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Время</div> будние дни, вечер
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Дата</div> с 01.08.2022
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Телефон</div> +375297897638
                                    </div>
                                </div>
                            </div>
                            <div class="reports__item-cell hide-tablet-sm"></div>
                            <div class="reports__item-cell hide-tablet-sm">ххх-ххххх-01</div>
                            <div class="reports__item-cell hide-tablet-sm">40</div>
                            <div class="reports__item-cell hide-tablet-sm"></div>
                            <div class="reports__item-cell reports__item-cell--empty"></div>
                        </div><!--reports__item-->
                    </div><!--reports__block-->
                    
                    <div class="reports__block">
                        <div class="reports__item reports__header">
                            <div class="reports__item-cell reports__header-cell"><b>Английский с нуля</b></div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Лимит, руб.</div> 160</div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Промокоды</div> 2</div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Сумма  <br> комиссии</div> 85</div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Свободный  <br> остаток</div> 75</div>
                            <div class="reports__item-cell reports__item-cell--empty"></div>
                        </div>
                        <div class="reports__item">
                            <div class="reports__item-cell">
                                <a href="" class="reports__item-name reports-open-contacts">Иван, 25 лет</a>
                                <div class="reports__item-contacts reports-popup-contacts">
                                    <div class="reports__item-name">Иван, 25 лет</div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Электронная почта</div> vs@mail.ru
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Телефон</div> +375297897638
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Telegram</div> vasilii30
                                    </div>
                                </div>

                                <div class="reports__item-props">
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Уровень</div> A1
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Промокод</div> ххх-ххххх-01
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Сумма <br> комиссии</div> 40
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Свободный  <br> остаток</div> -
                                    </div>

                                </div>

                                
                                <a href="#" class="reports__item-more reports-item-more">
                                    <span>Еще</span>
                                    <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>                                        
                                </a>
                                <div class="reports__item-dop reports-item-dop">
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Форма обучения</div> группы
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Формат/адрес</div> г. Минск, м. Купаловская
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Время</div> будние дни, вечер
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Дата</div> с 01.08.2022
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Телефон</div> +375297897638
                                    </div>
                                </div>
                            </div>
                            <div class="reports__item-cell hide-tablet-sm"></div>
                            <div class="reports__item-cell hide-tablet-sm">ххх-ххххх-01</div>
                            <div class="reports__item-cell hide-tablet-sm">40</div>
                            <div class="reports__item-cell hide-tablet-sm"></div>
                            <div class="reports__item-cell reports__item-cell--empty"></div>
                        </div><!--reports__item-->
                        <div class="reports__item">
                            <div class="reports__item-cell">
                                <a href="" class="reports__item-name reports-open-contacts">Дмитрий, 33 лет</a>
                                <div class="reports__item-contacts reports-popup-contacts">
                                    <div class="reports__item-name">Дмитрий, 33 лет</div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Электронная почта</div> vs@mail.ru
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Телефон</div> +375297897638
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Telegram</div> vasilii30
                                    </div>
                                </div>

                                <div class="reports__item-props">
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Уровень</div> A1
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Промокод</div> ххх-ххххх-01
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Сумма <br> комиссии</div> 45
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Свободный  <br> остаток</div> -
                                    </div>

                                </div>

                                
                                <a href="#" class="reports__item-more reports-item-more">
                                    <span>Еще</span>
                                    <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>                                        
                                </a>
                                <div class="reports__item-dop reports-item-dop">
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Форма обучения</div> группы
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Формат/адрес</div> г. Минск, м. Купаловская
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Время</div> будние дни, вечер
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Дата</div> с 01.08.2022
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Телефон</div> +375297897638
                                    </div>
                                </div>
                            </div>
                            <div class="reports__item-cell hide-tablet-sm"></div>
                            <div class="reports__item-cell hide-tablet-sm">ххх-ххххх-01</div>
                            <div class="reports__item-cell hide-tablet-sm">40</div>
                            <div class="reports__item-cell hide-tablet-sm"></div>
                            <div class="reports__item-cell reports__item-cell--empty"></div>
                        </div><!--reports__item-->
                    </div><!--reports__block-->
                    
                    <div class="reports__block">
                        <div class="reports__item reports__header">
                            <div class="reports__item-cell reports__header-cell"><b>IT</b></div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Лимит, руб.</div> 240</div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Промокоды</div> 1</div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Сумма  <br> комиссии</div> 40</div>
                            <div class="reports__item-cell reports__header-cell"><div class="reports__item-label show-tablet-sm">Свободный  <br> остаток</div> 200</div>
                            <div class="reports__item-cell reports__item-cell--empty"></div>
                        </div>
                        <div class="reports__item">
                            <div class="reports__item-cell">
                                <a href="" class="reports__item-name reports-open-contacts">Елена</a>
                                <div class="reports__item-contacts reports-popup-contacts">
                                    <div class="reports__item-name">Елена</div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Электронная почта</div> vs@mail.ru
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Телефон</div> +375297897638
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Telegram</div> vasilii30
                                    </div>
                                </div>

                                <div class="reports__item-props">
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Уровень</div> A1
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Промокод</div> ххх-ххххх-01
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Сумма <br> комиссии</div> 40
                                    </div>
                                    <div class="reports__item-prop show-tablet-sm">
                                        <div class="reports__item-label">Свободный  <br> остаток</div> -
                                    </div>

                                </div>

                                
                                <a href="#" class="reports__item-more reports-item-more">
                                    <span>Еще</span>
                                    <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>                                        
                                </a>
                                <div class="reports__item-dop reports-item-dop">
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Форма обучения</div> группы
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Формат/адрес</div> г. Минск, м. Купаловская
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Время</div> будние дни, вечер
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Дата</div> с 01.08.2022
                                    </div>
                                    <div class="reports__item-prop">
                                        <div class="reports__item-label">Телефон</div> +375297897638
                                    </div>
                                </div>
                            </div>
                            <div class="reports__item-cell hide-tablet-sm"></div>
                            <div class="reports__item-cell hide-tablet-sm">ххх-ххххх-01</div>
                            <div class="reports__item-cell hide-tablet-sm">40</div>
                            <div class="reports__item-cell hide-tablet-sm"></div>
                            <div class="reports__item-cell reports__item-cell--empty"></div>
                        </div><!--reports__item-->
                    </div><!--reports__block-->
                    
                    <div class="reports__block">
                        <div class="reports__item reports__footer">
                            <div class="reports__item-cell reports__footer-cell"><b class="show-tablet-sm">Итого</b></div>
                            <div class="reports__item-cell reports__footer-cell"><div class="reports__item-label show-tablet-sm">Лимит, руб.</div> <b>520</b></div>
                            <div class="reports__item-cell reports__footer-cell"><div class="reports__item-label show-tablet-sm">Промокоды</div> <b>3</b></div>
                            <div class="reports__item-cell reports__footer-cell"><div class="reports__item-label show-tablet-sm">Сумма  <br> комиссии</div> <b>165</b></div>
                            <div class="reports__item-cell reports__footer-cell"><div class="reports__item-label show-tablet-sm">Свободный  <br> остаток</div> <b>355</b></div>
                            <div class="reports__item-cell reports__item-cell--empty"></div>
                        </div>
                    </div> 
                </div>    
            </div>
        </section><!-- lk -->
                
        <div class="popup popup-contacts" data-popup="reports_contacts">
            <div class="popup__content">
                <div class="popup__bg popup-close"></div>
                <div class="popup__container">
                    <a href="#" class="popup__close popup-close">
                        <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M8.17188 13.8299L13.8319 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M13.8319 13.8299L8.17188 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>						
                    </a>
                    <div class="popup__body">
                        		
                    </div>
                </div><!--popup__container-->
            </div>
        </div>
        

	</main><!--content__wrapper-->
{/block}