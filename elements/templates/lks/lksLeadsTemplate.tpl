{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk leads section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Лиды</h2>
                </div>

                <div class="lk__nav">
                    <ul>
                        <li class="active">Заказаны звонки</li>
                        <li><a href="lks-reports.html">Отчет</a></li>
                    </ul>
                </div>

                <div class="leads__block">
                    <div class="leads__header lk__wraplr section__lr">Разговорный английский</div>
                    <div class="leads__item lk__wraplr section__lr">
                        <div class="leads__item-name show-desktop-sm">Дмитрий, 33 года</div>

                        <div class="leads__item-col col--first">
                            <div class="leads__item-name hide-desktop-sm">Дмитрий, 33 года</div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Уровень</div>
                                A0
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Форма обучения</div>
                                группы
                            </div>
                            <div class="leads__item-prop show-desktop-sm">
                                <div class="leads__item-prop__label">Формат/адрес</div>
                                г. Минск <br> м. Купаловская
                            </div>
                        </div>
                        <div class="leads__item-col hide-desktop-sm">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Формат/адрес</div>
                                г. Минск <br> м. Купаловская
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Район</div>
                                все
                            </div>
                            
                        </div>
                        <div class="leads__item-col show-desktop-sm">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Район</div>
                                все
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Дата</div>
                                с 01.07.2022
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Время</div>
                                выходные дни <br> вечер
                            </div>
                            
                        </div>
                        <div class="leads__item-col">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Телефон</div>
                                +37529ХХХХХХХ
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Telegram</div>
                                dmXXXXXXXXX
                            </div>
                            <div class="leads__item-prop"><a href="" class="link">Показать контакты</a></div>
                        </div>
                        <div class="leads__item-col leads__item-action">
                            <input type="text" class="input input--white" readonly value="Промокод: 12554869">
                            <button class="btn dogovor-add">Заключить договор</button>
                            <button class="btn btn--remove leads__item-remove lead-remove">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>    
                                <span class="show-tablet-sm">Удалить</span>                                
                            </button>
                        </div>
                    </div>
                </div>
                


                <div class="leads__block">
                    <div class="leads__header lk__wraplr section__lr">Базовый английский</div>
                    <div class="leads__item lk__wraplr section__lr">
                        <div class="leads__item-name show-desktop-sm">Дмитрий, 33 года</div>

                        <div class="leads__item-col col--first">
                            <div class="leads__item-name hide-desktop-sm">Дмитрий, 33 года</div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Уровень</div>
                                A0
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Форма обучения</div>
                                индивидуально
                            </div>
                            <div class="leads__item-prop show-desktop-sm">
                                <div class="leads__item-prop__label">Формат/адрес</div>
                                г. Минск <br> м. Купаловская
                            </div>
                        </div>
                        <div class="leads__item-col hide-desktop-sm">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Формат/адрес</div>
                                г. Минск <br> м. Купаловская
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Район</div>
                                центр
                            </div>
                            
                        </div>
                        <div class="leads__item-col show-desktop-sm">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Район</div>
                                центр
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Дата</div>
                                с 01.07.2022
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Время</div>
                                выходные дни <br> вечер
                            </div>
                            
                        </div>
                        <div class="leads__item-col">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Телефон</div>
                                +37529ХХХХХХХ
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Telegram</div>
                                dmXXXXXXXXX
                            </div>
                            <div class="leads__item-prop"><a href="" class="link">Показать контакты</a></div>
                        </div>
                        <div class="leads__item-col leads__item-action">
                            <input type="text" class="input input--white" readonly value="Промокод: 12554869">
                            <button class="btn dogovor-add">Заключить договор</button>
                            <button class="btn btn--remove leads__item-remove lead-remove">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>    
                                <span class="show-tablet-sm">Удалить</span>                                
                            </button>
                        </div>
                    </div>
                    <div class="leads__item lk__wraplr section__lr">
                        <div class="leads__item-name show-desktop-sm">Анна, 25 лет</div>

                        <div class="leads__item-col col--first">
                            <div class="leads__item-name hide-desktop-sm">Анна, 25 лет</div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Уровень</div>
                                A0
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Форма обучения</div>
                                индивидуально
                            </div>
                            <div class="leads__item-prop show-desktop-sm">
                                <div class="leads__item-prop__label">Формат/адрес</div>
                                г. Минск <br> м. Купаловская
                            </div>
                        </div>
                        <div class="leads__item-col hide-desktop-sm">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Формат/адрес</div>
                                г. Минск <br> м. Купаловская
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Район</div>
                                центр
                            </div>
                            
                        </div>
                        <div class="leads__item-col show-desktop-sm">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Район</div>
                                центр
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Дата</div>
                                с 01.07.2022
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Время</div>
                                выходные дни <br> вечер
                            </div>
                            
                        </div>
                        <div class="leads__item-col">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Телефон</div>
                                +37529ХХХХХХХ
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Telegram</div>
                                dmXXXXXXXXX
                            </div>
                            <div class="leads__item-prop"><a href="" class="link">Показать контакты</a></div>
                        </div>
                        <div class="leads__item-col leads__item-action">
                            <input type="text" class="input input--white" readonly value="Промокод: 12554869">
                            <button class="btn dogovor-add">Заключить договор</button>
                            <button class="btn btn--remove leads__item-remove lead-remove">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>    
                                <span class="show-tablet-sm">Удалить</span>                                
                            </button>
                        </div>
                    </div>
                </div>

                

                <div class="leads__block">
                    <div class="leads__header lk__wraplr section__lr">английский с нуля</div>
                    <div class="leads__item lk__wraplr section__lr">
                        <div class="leads__item-name show-desktop-sm">Василий, 30 лет</div>

                        <div class="leads__item-col col--first">
                            <div class="leads__item-name hide-desktop-sm">Василий, 30 лет</div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Уровень</div>
                                A1
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Форма обучения</div>
                                группы
                            </div>
                            <div class="leads__item-prop show-desktop-sm">
                                <div class="leads__item-prop__label">Формат/адрес</div>
                                г. Минск <br> м. Купаловская
                            </div>
                        </div>
                        <div class="leads__item-col hide-desktop-sm">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Формат/адрес</div>
                                г. Минск <br> м. Купаловская
                            </div>
                            
                        </div>
                        <div class="leads__item-col show-desktop-sm">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Дата</div>
                                с 01.07.2022
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Время</div>
                                выходные дни
                            </div>
                            
                        </div>
                        <div class="leads__item-col">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Телефон</div>
                                +37529ХХХХХХХ
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Telegram</div>
                                dmXXXXXXXXX
                            </div>
                            <div class="leads__item-prop"><a href="" class="link">Показать контакты</a></div>
                        </div>
                        <div class="leads__item-col leads__item-action">
                            <input type="text" class="input input--white" readonly value="Промокод: 12554869">
                            <button class="btn dogovor-add">Заключить договор</button>
                            <button class="btn btn--remove leads__item-remove lead-remove">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>    
                                <span class="show-tablet-sm">Удалить</span>                                
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
