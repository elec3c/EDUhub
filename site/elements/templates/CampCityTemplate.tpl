{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
        <section class="cmp_hero">
            <div class="cmp_hero__star1 cmp_star cmp_star--60 star--cc"></div>
            <div class="cmp_hero__star2 cmp_star cmp_star--45"></div>
            <div class="cmp_hero__star3 cmp_star cmp_star--80"></div>

            <div class="container">
                <div class="cmp_hero__infph">
                    <div class="cmp_hero__info">
                        <div class="cmp_hero__logo"><img src="assets/images/camp/logo-1.png" alt=""></div>
                        <h1 class="cmp_hero__title">{$_modx->resource.pagetitle}</h1>
                        <div class="cmp_hero__desc">Хотите, чтобы ребенок отлично отдохнул на летних каникулах и при этом узнал много нового и интересного? <br>
                            Тогда записывайте его в наш летний IT-CAMP!</div>
                        <div class="cmp_hero__buttons hide-mobile-lg">
                            <button class="btn btn--purple btn--sm" data-open-popup="kviz2">Записаться</button>
                        </div>   
                        <div class="cmp_hero__star4 cmp_star cmp_star--45 star--cc"></div> 
                    </div>
                    <div class="cmp_hero__photo"><img src="assets/images/camp/img-city.jpg" alt=""></div>
                </div>

                <div class="cmp_hero__buttons show-mobile-lg">
                    <button class="btn btn--purple btn--sm w-all">Получить доп. скидку</button>
                </div>   

                <div class="cmp_hero__cards">
                    <div class="cmp_hero__card">7 - 11 лет</div>
                    <div class="cmp_hero__card">доп. скидка <br>  20 руб.</div>
                    <div class="cmp_hero__card">30.11.23 - 03.11.23 <br> пн - пт <br class="hide-mobile-lg">  09.00 - 18.00</div>
                    <div class="cmp_hero__card">можно 1/2 дня</div>
                    <div class="cmp_hero__card">3х питание</div>
                    <div class="cmp_hero__card">free Wi - Fi</div>
                    <div class="cmp_hero__card">0 руб. <br class="hide-mobile-lg">  PARKING</div>
                    <div class="cmp_hero__card">кондиционер</div>

                    <div class="cmp_hero__star5 cmp_star"></div> 
                </div>
            </div>
        </section><!-- cmp_hero -->

        <section class="cmp_program cmp_sbg">
            <div class="cmp_program__star2 cmp_star cmp_star--100"></div> 
            <div class="cmp_program__star3 cmp_star cmp_star--120"></div> 

            <div class="container">
                <div class="section__pd--mdx">
                    <div class="section__head mb--md">
                        <h2 class="section__title">Описание программы</h2>
                    </div>
                    <div class="cmp_program__desc">
                        Это лето мы ждали, как никогда раньше! Почему?... Просто нам не терпится поделиться с вами нашей новой программой «Летний IT-CAMP "Миссия выполнима: школа немагических наук" от Stemlab» для ребят 6-14 лет! Каждая смена заряжена на современные IT-технологии, научные исследования и 100% драйв! Встречайте... ваше лучшее лето! :)
                        <div class="cmp_program__star1 cmp_star cmp_star--160 star--cc"></div> 
                    </div>
                </div>
                
                <div class="section__pd--mdx">
                    <div class="section__head mb--md">
                        <h2 class="section__title">Программа</h2>
                    </div>

                    <div class="cmp_program__items">
                        <div class="cmp_program__item">
                            <div class="cmp_program__item-date">01.06.2024 - 12.06.2024</div>
                            <div class="cmp_program__item-photo"><img src="assets/images/camp/program-1.jpg" alt=""></div>
                            <div class="cmp_program__item-desc">Школа 4х стихий (научная смена)
                            </div>
                        </div>
                        <div class="cmp_program__item">
                            <div class="cmp_program__item-date">01.06.2024 - 12.06.2024</div>
                            <div class="cmp_program__item-photo"><img src="assets/images/camp/program-2.jpg" alt=""></div>
                            <div class="cmp_program__item-desc">Конструктор миров: краткий курс теории "магии" (создание виртуальных миров и 3D моделирование)</div>
                        </div>
                        <div class="cmp_program__item">
                            <div class="cmp_program__item-date">01.06.2024 - 12.06.2024</div>
                            <div class="cmp_program__item-photo"><img src="assets/images/camp/program-3.jpg" alt=""></div>
                            <div class="cmp_program__item-desc">"Магия" пространства-времени или удивительные
                                исследования космоса (научная смена)</div>
                        </div>
                        <div class="cmp_program__item">
                            <div class="cmp_program__item-date">01.06.2024 - 12.06.2024</div>
                            <div class="cmp_program__item-photo"><img src="assets/images/camp/program-4.jpg" alt=""></div>
                            <div class="cmp_program__item-desc">"Анимагия" или коротко об эволюции от амебы до человеке (научная смена)</div>
                        </div>
                        <div class="cmp_program__item">
                            <div class="cmp_program__item-date">01.06.2024 - 12.06.2024</div>
                            <div class="cmp_program__item-photo"><img src="assets/images/camp/program-5.jpg" alt=""></div>
                            <div class="cmp_program__item-desc">"Техномагия" - школа инновационных изобретений (наука и инжиниринг)</div>
                        </div>
                    </div>    
                </div>
            </div>
        </section><!--cmp_program-->


        <section class="cmp_address section__mg js-tabs" data-level="0">
            <div class="container">
                {if $_modx->resource.camp_group}
                
                    {set $rows = json_decode($_modx->resource.camp_group, true)}
                    
                    {foreach $rows as $idx => $row}
                        {set $date_unique = strtotime($row.date_from)~'_'~strtotime($row.date_to)}
                        {set $group_name = $row.name}
                        
                        {set $G[$row.address][$date_unique][$group_name]['address'] = 'Адрес '~$row.address}
                        {set $G[$row.address][$date_unique][$group_name]['name'] = $row.name}
                        {set $G[$row.address][$date_unique][$group_name]['cabinet'] = $row.cabinet}
                        {set $G[$row.address][$date_unique][$group_name]['shift'] = $row.shift}
                        {set $G[$row.address][$date_unique][$group_name]['count'] = $row.count}
                        {set $G[$row.address][$date_unique][$group_name]['date_from'] = $row.date_from}
                        {set $G[$row.address][$date_unique][$group_name]['date_to'] = $row.date_to}
                        {set $G[$row.address][$date_unique][$group_name]['age_from'] = $row.age_from}
                        {set $G[$row.address][$date_unique][$group_name]['age_to'] = $row.age_to}
                        {set $G[$row.address][$date_unique][$group_name]['time_from'] = strtotime($row.date_from)}
                        {set $G[$row.address][$date_unique][$group_name]['time_to'] = strtotime($row.date_to)}
                        
                    {/foreach}
                    
                {/if}
                
                <div class="cmp_address__navaddr js-nav">
                    {if $G}
                        {set $n = 0}
                        {foreach $G as $address_id => $data}                    
                            <a href="#" class="cmp_address__navaddr-item {if $n == 0}active{/if} js-nav-link" data-tab="{$n}">Адрес {$address_id}</a>
                            {*set $GROUP = $data*}
                            {set $n = $n + 1}
                        {/foreach}
                    {/if}
                </div>
                
                {if $G}
                {set $n = 0}
                {foreach $G as $address_id => $date_list}
                    <div class="section__tab {if $n == 0}show active{/if} js-tabs-content js-tabs" data-tab="{$n}" data-tab-level="0">
                    
                    <div class="cmp_address__nav js-nav">
                        {set $f = 1}
                        {foreach $date_list as $date_unique => $v}
                            {set $d = explode('_',$date_unique)}
                            <a href="#" class="cmp_address__nav-item {if $f==1}active{/if} js-nav-link" data-tab="{$date_unique}">{date($d[0], 'd.m.Y')~'-'~date($d[1], 'd.m.Y')}</a>
                            {set $f = 0}
                        {/foreach}
                    </div>
                    
                    {set $f = 1}
                    {foreach $date_list as $date_unique => $GROUP}
                        <div class="section__tab {if $f==1}show active{/if} js-tabs-content" data-tab="{$date_unique}">
                            <div class="cmp_address__items">
                                
                                {foreach $GROUP as $name => $v}            
                                    <div class="cmp_address__item">
                                    <div class="cmp_address__item-info">
                                        <div class="cmp_address__item-head">
                                            <div class="cmp_address__item-title">{$name}</div>
                                            <div class="cmp_address__item-subtitle">{$v['age_from']} - {$v['age_to']} лет</div>
                                        </div>
        
                                        <div class="cmp_address__item-row">
                                            <div class="cmp_address__item-row__label">Всего мест</div>
                                            <div class="cmp_address__item-row__val">{$v['count']}</div>
                                        </div>
                                        <div class="cmp_address__item-row">
                                            <div class="cmp_address__item-row__label">Занято мест </div>
                                            <div class="cmp_address__item-row__val">10</div>
                                        </div>
                                        <a href="#" class="cmp_address__item-rshow js-cmp-address-item-ageshow"><span class="t_opened">Показать</span><span class="t_closed">Свернуть</span></a>
                                        <div class="cmp_address__item-ages clearfix js-cmp-address-item-age">
                                            <div class="cmp_address__item-ages__col">
                                                <div class="cmp_address__item-ages__label l-w">девочки</div>
                                                <div class="cmp_address__item-ages__list">
                                                    <ul>
                                                        <li>7 лет</li>
                                                        <li>8 лет</li>
                                                        <li>9 лет</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cmp_address__item-ages__col">
                                                <div class="cmp_address__item-ages__label">мальчики</div>
                                                <div class="cmp_address__item-ages__list">
                                                    <ul>
                                                        <li>7 лет</li>
                                                        <li>8 лет</li>
                                                        <li>9 лет</li>
                                                        <li>10 лет</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cmp_address__item-row">
                                            <div class="cmp_address__item-row__label">Свободно мест</div>
                                            <div class="cmp_address__item-row__val">0</div>
                                        </div>
        
                                        <div class="cmp_address__item-row"><span>Стоимость до 01.02.2024</span></div>
                                        <div class="cmp_address__item-prices">
                                            <div class="cmp_address__item-prices__old">600</div>
                                            <div class="cmp_address__item-prices__current">350</div>
                                        </div>
                                    </div>
                                    <div class="cmp_address__item-buttons">
                                        <button class="btn btn--bdpurple btn--sm">Сообщить о свободных местах</button>
                                    </div>
                                </div><!--cmp_address__item-->
                                {/foreach}

                            </div>
                        </div><!--section__tab-->
                        {set $f = 0}
                    {/foreach}



                </div>    
                    {set $n = $n + 1}
                {/foreach}
                {/if}
            </div>
            
        </section><!--  -->
        

        <section class="cmp_advant cmp_sbg section__pd--mdx">
            <div class="container">
                <div class="section__head mb--md">
                    <h2 class="section__title">Наши преимущества</h2>
                </div>
                
                <div class="cmp_advant__items">
                    <div class="cmp_advant__item">
                        <h3 class="cmp_advant__item-title"><span>Опытные преподаватели</span></h3>
                        <div class="cmp_advant__item-desc">Наши педагоги дипломированные и обладают наградами, сертификатами в образовании, умеют вовлечь и подружиться с каждым ребенком.</div>
                    </div>
                    <div class="cmp_advant__item">
                        <h3 class="cmp_advant__item-title"><span>Увлекательная программа</span></h3>
                        <div class="cmp_advant__item-desc">Ребята в игровых формах учат английский язык, ходят в зоопарк и планитарий. Перевоплощаются в мини - театре, ставят эксперименты, готовят и многое другое...</div>
                    </div>
                    <div class="cmp_advant__item">
                        <h3 class="cmp_advant__item-title"><span>Комфортные условия</span></h3>
                        <div class="cmp_advant__item-desc">Дети находятся в просторной светлой студии, где имеется все необходимое для занятий 
                            и творчества.</div>
                    </div>
                </div>
            </div>
        </section><!--  -->


        <section class="cmp_visit  section__mg">
            <div class="container">
                <div class="section__head mb--md">
                    <h2 class="section__title">Варианты посещений</h2>
                </div>
                
                <div class="cmp_visit__items">
                    <div class="cmp_visit__item">
                        <div class="cmp_visit__item-icon"><img src="assets/images/icons/clock-color-1.svg" alt=""></div>
                        <div class="cmp_visit__item-info">
                            <div class="cmp_visit__item-title">Первая половина дня</div>
                            <div class="cmp_visit__item-text">(10.00 - 12.30) <br>
                                со вторым завтракои</div>
                        </div>
                    </div>
                    <div class="cmp_visit__item">
                        <div class="cmp_visit__item-icon"><img src="assets/images/icons/clock-color-2.svg" alt=""></div>
                        <div class="cmp_visit__item-info">
                            <div class="cmp_visit__item-title">Вторая половина дня</div>
                            <div class="cmp_visit__item-text">(14.00 - 16.30) <br>
                                с полдником</div>
                        </div>
                    </div>
                    <div class="cmp_visit__item">
                        <div class="cmp_visit__item-icon"><img src="assets/images/icons/clock-color-3.svg" alt=""></div>
                        <div class="cmp_visit__item-info">
                            <div class="cmp_visit__item-title">На полный день</div>
                            <div class="cmp_visit__item-text">(9.00 - 18.00 или 8.00 - 19.00) <br>
                                с увлекательными занятиями, питанием и развлекательными занятиями</div>
                        </div>
                    </div>
                    <div class="cmp_visit__item">
                        <div class="cmp_visit__item-icon"><img src="assets/images/icons/clock-color-4.svg" alt=""></div>
                        <div class="cmp_visit__item-info">
                            <div class="cmp_visit__item-title">На один день</div>
                            <div class="cmp_visit__item-text">(8.00 - 19.00)</div>
                        </div>
                    </div>
                </div>
                
                <div class="cmp_visit__star1 cmp_star star--cc"></div>
                <div class="cmp_visit__star2 cmp_star cmp_star--60 star--cc"></div>
                <div class="cmp_visit__star3 cmp_star cmp_star--100 star--cc"></div>
            </div>
            <div class="cmp_visit__star4 cmp_star cmp_star--200"></div>
        </section><!--  -->
        

        <section class="cmp_schedule  section__mg">
            <div class="container">
                <div class="section__head mb--md">
                    <h2 class="section__title">Расписание</h2>
                </div>
                
                <div class="cmp_schedule__items">
                    <div class="cmp_schedule__item">
                        <div class="cmp_schedule__item-title">Начало дня <span class="nowrap">в IT - CAMP</span></div>
                        <div class="cmp_schedule__item-text">Рабочий день в IT-CAMP длится с 9.00 до 18.00. Рабочий день в IT-CAMP с опцией "Продлённый день" длится с 8.00 до 19.00.</div>
                    </div>
                    <div class="cmp_schedule__item">
                        <div class="cmp_schedule__item-title">Время занятий</div>
                        <div class="cmp_schedule__item-text">Занятия начинаются или в 10.00, или в 14.00. Как правило, во вторую половину дня занимаются группы старших детей.</div>
                    </div>
                    <div class="cmp_schedule__item">
                        <div class="cmp_schedule__item-title">Обед</div>
                        <div class="cmp_schedule__item-text">Обед организован на базе кафе. Утренние группы обедают в районе 14.00, <br>
                            дневные группы - в 13.00.</div>
                    </div>
                    <div class="cmp_schedule__item">
                        <div class="cmp_schedule__item-title">Развлекательные мероприятия</div>
                        <div class="cmp_schedule__item-text">Только для групп полного дня. Ходим, например, в лазертаг, в VR, на батуты, в боулинг, в парки, 
                            на различные интересные выставки, в кино и др.</div>
                    </div>
                    <div class="cmp_schedule__item">
                        <div class="cmp_schedule__item-title">Полдник</div>
                        <div class="cmp_schedule__item-text">Полдник ребята получают в центре. Это, как правило, сок (или чай) и лёгкий перекус <br>
                            (батончик, печенька и т. д.)</div>
                    </div>
                    <div class="cmp_schedule__item">
                        <div class="cmp_schedule__item-title">Окончание дня</div>
                        <div class="cmp_schedule__item-text">Уставших, но довольных ребят можно забирать после окончания занятий и мероприятий до 18.00 <br>
                            (с продлённым днем до 19.00).</div>
                    </div>
                </div>
                
                <div class="cmp_schedule__star1 cmp_star cmp_star--120"></div>
                <div class="cmp_schedule__star2 cmp_star cmp_star--60"></div>
                <div class="cmp_schedule__star3 cmp_star cmp_star--90"></div>
            </div>
        </section><!--  -->
        

        <section class="cmp_prices  cmp_sbg section__pd--mdx section__mg">
            <div class="container">
                <div class="section__head mb--md">
                    <h2 class="section__title">Цены и скидки</h2>
                </div>
                
                <div class="cmp_prices__text">Текст описания скидки</div>

                <div class="cmp_prices__items">
                    <div class="cmp_prices__item">
                        <div class="cmp_prices__item-title">Цены</div>
                        <div class="cmp_prices__item-row">
                            <div class="cmp_prices__item-label"><span>Полный день <span class="nowrap">(08:00 - 17:00)</span></span></div>
                            <div class="cmp_prices__item-values">
                                <div class="cmp_prices__item-old">600</div>
                                <div class="cmp_prices__item-val">
                                    <div class="cmp_prices__item-current">350 руб</div>
                                    <div class="cmp_prices__item-date">до 15.09</div>
                                </div>
                            </div>
                        </div>
                        <div class="cmp_prices__item-row">
                            <div class="cmp_prices__item-label"><span>Первая половина дня <span class="nowrap">(08:00 - 13:00)</span></span></div>
                            <div class="cmp_prices__item-values">
                                <div class="cmp_prices__item-old">600</div>
                                <div class="cmp_prices__item-val">
                                    <div class="cmp_prices__item-current">250 руб</div>
                                    <div class="cmp_prices__item-date"></div>
                                </div>
                            </div>
                        </div>
                        <div class="cmp_prices__item-row">
                            <div class="cmp_prices__item-label"><span>Вторая половина дня <span class="nowrap">(13:30 - 18:00)</span></span></div>
                            <div class="cmp_prices__item-values">
                                <div class="cmp_prices__item-old">600</div>
                                <div class="cmp_prices__item-val">
                                    <div class="cmp_prices__item-current">250 руб</div>
                                    <div class="cmp_prices__item-date"></div>
                                </div>
                            </div>
                        </div>
                        <div class="cmp_prices__item-row">
                            <div class="cmp_prices__item-label"><span>Один день</span></div>
                            <div class="cmp_prices__item-values">
                                <div class="cmp_prices__item-val">
                                    <div class="cmp_prices__item-current">100 руб</div>
                                </div>
                            </div>
                        </div>                        
                    </div>
                    <div class="cmp_prices__item">
                        <div class="cmp_prices__item-title">Скидки</div>
                        <div class="cmp_prices__item-row">
                            <div class="cmp_prices__item-label"><span>Скидка для пользователей сайта</span></div>
                            <div class="cmp_prices__item-values">
                                <div class="cmp_prices__item-val">
                                    <div class="cmp_prices__item-current">20 руб</div>
                                </div>
                            </div>
                        </div>  
                        <div class="cmp_prices__item-row">
                            <div class="cmp_prices__item-label"><span>Скидка для сотрудников компаний - партнеров</span></div>
                            <div class="cmp_prices__item-values">
                                <div class="cmp_prices__item-val">
                                    <div class="cmp_prices__item-current">30 руб</div>
                                </div>
                            </div>
                        </div>  
                        <div class="cmp_prices__item-row">
                            <div class="cmp_prices__item-label"><span>Скидка при записи двоих детей</span></div>
                        </div>  
                        <div class="cmp_prices__item-row">
                            <div class="cmp_prices__item-label"><span>Скидка постоянным клиентам</span></div>
                        </div>  
                    </div>
                </div>
                
                <div class="cmp_prices__star1 cmp_star cmp_star--160"></div>
                <div class="cmp_prices__star2 cmp_star cmp_star--160"></div>
            </div>
        </section><!--  -->


        <section class="cmp_gallery  section__mg">
            <div class="container">
                <div class="section__head mb--md">
                    <h2 class="section__title">Фотогалерея</h2>
                </div>
                
                <div class="cmp_gallery__items">
                    <div class="cmp_gallery__item"><a href="assets/images/camp/gallery-1.jpg" data-fancybox="gallery"><img src="assets/images/camp/gallery-1.jpg" alt=""></a></div>
                    <div class="cmp_gallery__item"><a href="assets/images/camp/gallery-2.jpg" data-fancybox="gallery"><img src="assets/images/camp/gallery-2.jpg" alt=""></a></div>
                    <div class="cmp_gallery__item"><a href="assets/images/camp/gallery-3.jpg" data-fancybox="gallery"><img src="assets/images/camp/gallery-3.jpg" alt=""></a></div>
                    <div class="cmp_gallery__item"><a href="assets/images/camp/gallery-4.jpg" data-fancybox="gallery"><img src="assets/images/camp/gallery-4.jpg" alt=""></a></div>
                    <div class="cmp_gallery__item"><a href="assets/images/camp/gallery-5.jpg" data-fancybox="gallery"><img src="assets/images/camp/gallery-5.jpg" alt=""></a></div>
                    <div class="cmp_gallery__item"><a href="assets/images/camp/gallery-6.jpg" data-fancybox="gallery"><img src="assets/images/camp/gallery-6.jpg" alt=""></a></div>
                </div>
                
                <div class="cmp_gallery__star1 cmp_star"></div>
                <div class="cmp_gallery__star2 cmp_star cmp_star--120"></div>
            </div>
        </section><!--  -->


        <section class="cmp_reviews  cmp_sbg section__pd--mdx">
            <div class="container">
                <div class="section__head mb--md">
                    <h2 class="section__title">Отзывы</h2>
                </div>
                
                <div class="cmp_reviews__items">
                    <div class="cmp_reviews__item">
                        <div class="cmp_reviews__item-title"><span>Инна</span></div>
                        <div class="cmp_reviews__item-desc">В июне нам предложели посетить лагерь на осенних каникулах. Дочери очень понраивлось, было много  занятий и активнойстей!</div>
                    </div>
                    <div class="cmp_reviews__item">
                        <div class="cmp_reviews__item-title"><span>Андрей</span></div>
                        <div class="cmp_reviews__item-desc">Это очень классный и атмосферный лагерь. Хорошая программа и опытные преподаватели!</div>
                    </div>
                    <div class="cmp_reviews__item">
                        <div class="cmp_reviews__item-title"><span>Александра</span></div>
                        <div class="cmp_reviews__item-desc">Каждое лето выбираем этот лагерь! Безупречно все: питание, мероприятия и педагоги.</div>
                    </div>
                </div>
            </div>
        </section><!--  -->


        <section class="cmp_faq section__mg">
            <div class="container">
                <div class="section__head mb--md">
                    <h2 class="section__title"><span class="text--purple">???</span> Часто задаваемые вопросы</h2>
                </div>

                <div class="cmp_faq__items">
                    <div class="cmp_faq__item accord">
                        <div class="cmp_faq__item-head accord-toggle">
                            <div class="cmp_faq__item-title">Чем ваш лагерь лучше других?</div>
                            <div class="cmp_faq__item-drop"></div>
                        </div>
                        <div class="cmp_faq__item-body accord-body">
                            <p>Независимо от детских интересов, лагерь помогает развивать важные физические, социальные, эмоциональные и когнитивные навыки. После лагеря у детей остаются яркие воспоминания на всю жизнь.</p>
                        </div>
                    </div>
                    <div class="cmp_faq__item accord">
                        <div class="cmp_faq__item-head accord-toggle">
                            <div class="cmp_faq__item-title">Какое расписание у вас в лагере?
                            </div>
                            <div class="cmp_faq__item-drop"></div>
                        </div>
                        <div class="cmp_faq__item-body accord-body">
                            <p>На самых высоких уровнях по шкале CEFR снова эффективнее индивидуальный формат,
                                так как каждому нужно отшлифовать свои аспекты языка.</p>
                            <p>На пробном уроке вы поймете, какой формат больше подойдет в вашей ситуации.</p>
                        </div>
                    </div>
                    <div class="cmp_faq__item accord">
                        <div class="cmp_faq__item-head accord-toggle">
                            <div class="cmp_faq__item-title">Какой возраст детей в группе?
                            </div>
                            <div class="cmp_faq__item-drop"></div>
                        </div>
                        <div class="cmp_faq__item-body accord-body">
                            <p>Лучше всего совмещать или чередовать оба формата.</p>
                            <p>Индивидуальные занятия предпочтительны на первом этапе, когда нужно поставить
                                произношение или выровнять перекосы в языковых компетенциях.
                                Когда начальная база набрана, разговориться поможет группа.</p>
                        </div>
                    </div>
                    <div class="cmp_faq__item accord">
                        <div class="cmp_faq__item-head accord-toggle">
                            <div class="cmp_faq__item-title">Сколько человек в группе?</div>
                            <div class="cmp_faq__item-drop"></div>
                        </div>
                        <div class="cmp_faq__item-body accord-body">
                            <p>Лучше всего совмещать или чередовать оба формата.</p>
                            <p>Индивидуальные занятия предпочтительны на первом этапе, когда нужно поставить
                                произношение или выровнять перекосы в языковых компетенциях.
                                Когда начальная база набрана, разговориться поможет группа.</p>
                            <p>На самых высоких уровнях по шкале CEFR снова эффективнее индивидуальный формат,
                                так как каждому нужно отшлифовать свои аспекты языка.</p>
                            <p>На пробном уроке вы поймете, какой формат больше подойдет в вашей ситуации.</p>
                        </div>
                    </div>
                    <div class="cmp_faq__item accord">
                        <div class="cmp_faq__item-head accord-toggle">
                            <div class="cmp_faq__item-title">Как обеспечивается безопасность в лагере?</div>
                            <div class="cmp_faq__item-drop"></div>
                        </div>
                        <div class="cmp_faq__item-body accord-body">
                            <p>Независимо от детских интересов, лагерь помогает развивать важные физические, социальные, эмоциональные и когнитивные навыки. После лагеря у детей остаются яркие воспоминания на всю жизнь.</p>
                        </div>
                    </div>
                    <div class="cmp_faq__item accord">
                        <div class="cmp_faq__item-head accord-toggle">
                            <div class="cmp_faq__item-title">Какие справки нужны для поездки в лагерь?</div>
                            <div class="cmp_faq__item-drop"></div>
                        </div>
                        <div class="cmp_faq__item-body accord-body">
                            <p>Независимо от детских интересов, лагерь помогает развивать важные физические, социальные, эмоциональные и когнитивные навыки. После лагеря у детей остаются яркие воспоминания на всю жизнь.</p>
                        </div>
                    </div>
                
                </div>

                
                <div class="cmp_faq__star1 cmp_star"></div>
                <div class="cmp_faq__star2 cmp_star"></div>
                <div class="cmp_faq__star3 cmp_star cmp_star--60 star--cc"></div>
                <div class="cmp_faq__star4 cmp_star cmp_star--140"></div>
            </div>
        </section><!--  -->


        <section class="cmp_contacts section__mg">
            <div class="container">
                <div class="section__head mb--md">
                    <h2 class="section__title">Как нас найти?</h2>
                </div>


                <div class="cmp_contacts__item item--addr">Минск, ул.Могилевская д.5 (ст.м. Институт Культуры)</div>
                <div class="cmp_contacts__item item--addr">Минск, ул. Антонова д.3, 3й этаж</div>

                <div class="cmp_contacts__map">
                    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Afca59626139b13645680feed2115e3134164a9b8a14dad86b0e6fbbd6e95694b&amp;width=100%25&amp;height=400&amp;lang=ru_RU&_v=20231110110129"></script>
                </div>

                
                <div class="cmp_contacts__star1 cmp_star cmp_star--60 star--cc"></div>
                <div class="cmp_contacts__star2 cmp_star"></div>
            </div>
            <div class="cmp_contacts__star3 cmp_star cmp_star--140"></div>
        </section><!--  -->
     

{/block}


<!doctype html>
<!--[if lt IE 7 ]> <html lang="ru" class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="ru" class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="ru" class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="ru" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="ru"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta name="robots" content="">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<meta name="format-detection" content="telephone=no"/>
	<meta name="format-detection" content="address=no"/>
	
	<title>Лагерь городской</title>
	<link href="assets/images/favicon/favicon.ico" type="image/x-icon" rel="icon">
    <link href="assets/images/favicon/favicon.ico" type="image/x-icon" rel="shortcut icon">  
	<link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicon/favicon-64x64.png">
	<link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicon/favicon-32x32.png">

  	<meta property="og:title" content="Лагерь городской" />
	<meta property="og:description" content="">
	<meta property="og:image" content="assets/images/logo.png" />
	<meta property="og:url" content="" />  

 	<!--[if IE]>
    	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js?_v=20231110110129"></script>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js?_v=20231110110129"></script>
    <![endif]--> 

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600;700;800&family=Raleway:ital,wght@0,400;0,600;0,700;1,400;1,600&display=swap&_v=20231110110129" rel="stylesheet"> 
 
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css?_v=20231110110129">
    <link rel="preload" href="assets/js/swiper/swiper-bundle.min.css?_v=20231110110129" as="style" onload="this.rel='stylesheet'">
	<link href="assets/css/styles.min.css?_v=20231110110129" rel="stylesheet">

	<script src="https://code.jquery.com/jquery-3.4.1.min.js?_v=20231110110129" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="assets/js/swiper/swiper-bundle.min.js?_v=20231110110129"></script>
    <script type="text/javascript" src="assets/js/jquery.maskedinput.js?_v=20231110110129"></script>
    <script type="text/javascript" src="assets/js/jquery.formstyler.js?_v=20231110110129"></script>
    <script type="text/javascript" src="assets/js/jquery.easing.1.3.js?_v=20231110110129"></script>
		<script type="text/javascript" src="assets/js/jquery.chained.min.js?_v=20231110110129"></script>
    <script type="text/javascript" src="assets/js/scripts.js?_v=20231110110129"></script>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js?_v=20231110110129"></script>

	
	<link rel="stylesheet" href="assets/js/mCustomScrollbar/jquery.mCustomScrollbar.css?_v=20231110110129">
	<script type="text/javascript" src="assets/js/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js?_v=20231110110129"></script>

	
	<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js?_v=20231110110129"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.css?_v=20231110110129"/>
</head>

<body>

<section class="wrapper capm-wrap" id="top">

    <header class="header cmp_header">
	<div class="container">	
		<div class="header__wrap cmp_header__wrap">
			<a href="#" class="cmp_header__burger" id="menu_toggler">
				<svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M4 9.8335H28" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round"/>
					<path d="M4 16.5H28" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round"/>
					<path d="M4 23.1665H28" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round"/>
				</svg>									
			</a>


			
			
				<a href="/" class="header__logo"><img src="assets/images/logo.svg" alt=""></a>
			

			<div class="js-open-category-position hide-tablet">
				<a href="#" class="header__linkcat cmp_header__linkcat open-category">
					<span class="">Категории курсов</span>
					<svg class="icon-open" width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					</svg>			
					
					<svg class="icon-close" width="11" height="11" viewBox="0 0 11 11" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M1 1L5.25 5.5L9.5 1" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
						<path d="M9.5 9.75L5.25 5.25L1 9.75" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					</svg>					
				</a>
			</div>


			<div class="cmp_header__search search  header-search hide-tablet-sm">
				<form action="" class="search__form header-search-form">
					<input type="text" class="input search__input" placeholder="Поиск">
					<input type="submit" value="" class="search__btn">
				</form>
			</div>

			
				<a href="#" class="cmp_header__profile btn btn--sm btn--purple" data-open-popup="auth">
					<svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M9 9.5C11.0711 9.5 12.75 7.82107 12.75 5.75C12.75 3.67893 11.0711 2 9 2C6.92893 2 5.25 3.67893 5.25 5.75C5.25 7.82107 6.92893 9.5 9 9.5Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
						<path d="M15.4425 17C15.4425 14.0975 12.555 11.75 8.99999 11.75C5.44499 11.75 2.5575 14.0975 2.5575 17" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
						</svg>								
					<span>Войти</span>			
				</a>
			
			

			
		</div>

		<div class="cmp_header__nav header-navfix">
			<a href="#" class="cmp_header__nav-close header__navfix-close close-menu show-tablet-sm"></a>

			<div class="cmp_header__menu js-cmp_header-menu">
				<ul>
					<li><a href="">Ваша скидка</a></li>
					<li><a href="">Школы</a></li>
					<li><a href="">Ближайшие страрты</a></li>
					<li><a href="">Действующие группы</a></li>
					<li><a href="">Детям на каникулах</a></li>
					<li><a href="">Индивидуальные занятия</a></li>
					<li><a href="">Популярные курсы</a></li>
					<li><a href="">Рейтинг ТОП - школ</a></li>
				</ul>
			</div>
		</div>	
	</div>	

	<div class="header__category header-category">
		<div class="container">
			<div class="header__category-wrap">
				<div class="header__category-col">
					<div class="header__category-col__name">Языковые курсы</div>
					<ul class="header__menu header__category-menu">
						<li><a href="">Английский</a></li>
						<li><a href="">Немецкий</a></li>
						<li><a href="">Китайский</a></li>
						<li><a href="">Итальянский</a></li>
						<li><a href="">Французский</a></li>
					</ul>
				</div>
				<div class="header__category-col w-2">
					<div class="header__category-col__name">IT курсы</div>
					<ul class="header__menu header__category-menu">
						<li><a href="">Программирование</a></li>
						<li><a href="">Python</a></li>
						<li><a href="">Java</a></li>
						<li><a href="">JavaScript</a></li>
						<li><a href="">C++</a></li>
						<li><a href="">Разработка для iOS</a></li>
						<li><a href="">Разработка для Android</a></li>
						<li><a href="">Рекрутинг в IT</a></li>
						<li><a href="">Бизнес-анализ</a></li>
						<li><a href="">Project Manager</a></li>
						<li><a href="">Тестировщики</a></li>
					</ul>
				</div>

			</div>
		</div>	
	</div>	

</header>


   
    <footer class="footer cmp_footer">
    <div class="container">
        <div class="footer__wrap footer__top">
            <div class="footer__col footer__col--left">
                
                
                    <a href="/" class="footer__logo"><img src="assets/images/logo-white.svg" alt=""></a>
                

                
                <div class="cmp_footer__social social">
                    <div class="social__title">Мы в социальных сетях</div>
                    <div class="social__items">
                        <a href="" class="social__item" target="_blank"><svg class="icon icon--fill"><use xlink:href="assets/images/icons/sprite.svg#vk"></use></svg></a>
                        <a href="" class="social__item" target="_blank"><svg class="icon icon--fill"><use xlink:href="assets/images/icons/sprite.svg#insta"></use></svg></a>
                        <a href="" class="social__item" target="_blank"><svg class="icon icon--fill"><use xlink:href="assets/images/icons/sprite.svg#linked"></use></svg></a>
                    </div>
                </div>
            </div>
            <div class="footer__col footer__col--center">
                <div class="footer__gmi">
                    <ul class="footer__menu cmp_footer__menu">
                        <li><a href="">Поиск курсов</a></li>
                        <li><a href="">Все школы</a></li>
                        <li><a href="">Онлайн-тесты</a></li>
                        <li><a href="">Блог</a></li>
                        <li><a href="">Контакты</a></li>
                    </ul>

                    <ul class="footer__menu cmp_footer__menu">
                        <li><a href="">Партнерская программа</a></li>
                        <li><a href="">Тарифы (для ученбых центров)</a></li>
                        <li><a href="">Политика конфидециальности</a></li>
                        <li><a href="">Публичная оферта</a></li>
                        <li><a href="">Пользовательское соглашение</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer__col footer__col--right">
                <div class="cmp_footer__contacts">
                    <div class="cmp_footer__contacts-item">
                        <div class="cmp_footer__contacts-icon"><img src="assets/images/icons/call.svg" alt=""></div>
                        <a href="tel:+375445635930">+375 44 563 - 59 - 30</a>
                    </div>
                    <div class="cmp_footer__contacts-item">
                        <div class="cmp_footer__contacts-icon"><img src="assets/images/icons/sms.svg" alt=""></div>
                        <a href="mailto:eduhub@gmail.com">eduhub@gmail.com</a>
                    </div>
                    <div class="cmp_footer__contacts-item">
                        <div class="cmp_footer__contacts-icon"><img src="assets/images/icons/location-white.svg" alt=""></div>

                        <span>220125, г. Минск, ул. Уручская, д. 19-6, каб. 24.</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="cmp_footer__bottom">
            <div class="footer__copy cmp_footer__copy">© Copyright 2023, EDUHUB</div>
        </div>
    </div>
</footer>

<!-- 
<a href="#" class="scroll_top scroll-top" data-scroll="top"></a> -->

</section>

<div class="popup " data-popup="auth">
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
				<div class="popup__head">
					<div class="popup__title">Вход в личный кабинет</div>
				</div>
				
				<form action="" method="post">
					<input name="controll" class="no-display" type="text">
					<div class="input__row">
						<input type="text" name="login" class="input" placeholder="Логин">
					</div>    
					<div class="input__row">
						<input type="password" name="password" class="input" placeholder="Пароль">
						<button class="btn__eye pass-view"></button>
					</div>

					<button class="btn w-all">Войти</button>
					
				</form>

				<div class="auth__remember">
					<a href="" class="link" data-open-popup="password">Не помню пароль</a>
				</div>
				
				<div class="auth__bottom">
					Нет аккаунта? <a href="" class="link" data-open-popup="reg">Зарегистрироваться</a>
				</div>
				
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup " data-popup="password">
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
				<div class="popup__head">
					<div class="popup__title">Восстановление пароля</div>
					<div class="popup__intro">Введите свою электронную почту, на которую будет выслана ссылкадля сброса пароля</div>
				</div>
				
				<form action="" method="post">
					<input name="controll" class="no-display" type="text">
					<div class="input__row">
						<input type="text" name="email" class="input" placeholder="Электронная почта">
					</div>  
					
					<label class="form__polit">
						<input type="checkbox" name="polit" class="styler">
						<span>Ознакомлен с <a href="">публичной офертой</a></span>
					</label>


					<div class="form__btn">
						<button class="btn w-all">Отправить</button>
					</div>
				</form>
			</div>
		</div><!--popup__container-->
	</div>
</div>
<div class="popup popup-thank" data-popup="password_thank">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a href="#" class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
				<div class="popup__title">Письмо со ссылкойна сброс пароля отправлено на почту</div>
			
				
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup popup-reg" data-popup="reg">
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
			<div class="popup__body reg">
				<div class="reg__head">
					<div class="popup__title">Регистрация аккаунта</div>

					<div class="reg__navt">
						<ul>
							<li><a href="#" data-tab="user" class="btn reg-navt-link active">Юр. лицо</a></li>
							<li><a href="#" data-tab="user-f" class="btn reg-navt-link">Физ. лицо</a></li>
							<li><a href="#" data-tab="center" class="btn reg-navt-link">Учебный центр</a></li>
						</ul>
					</div>
				</div>
				
				<div class="reg__tab reg-tab active" data-tab="user">
					<form action="" method="post">
						<div class="reg__cols">
							<input name="controll" class="no-display" type="text">
							<div class="input__row">
								<input type="text" name="login" class="input input-number" placeholder="Наименование организации">
							</div>     
							<div class="input__row">
								<input type="tel" name="phone" class="input phone-mask" placeholder="Телефон">
							</div>
							<div class="input__row">
								<input type="text" name="email" class="input input-spch" placeholder="Электронная почта">
							</div>   
							<div class="input__row">
								<input type="password" name="password" class="input" placeholder="Пароль">
								<button class="btn__eye pass-view"></button>
							</div>
							
							<label class="form__polit">
								<input type="checkbox" name="polit" class="styler">
								<span>Ознакомлен(а) с <a href="">Политикой конфиденциальности</a> и <a href="">Пользовательским соглашением</a></span>
							</label>   

							<button class="btn w-all">Зарегистрироваться</button>

						</div>
					</form>
				</div>
				<div class="reg__tab reg-tab" data-tab="user-f">
					<form action="" method="post">
						<div class="reg__cols">
							<input name="controll" class="no-display" type="text">
							     
							<div class="input__row">
								<input type="text" name="email" class="input" placeholder="Электронная почта">
							</div>    
							<div class="input__row">
								<input type="tel" name="phone" class="input phone-mask" placeholder="Телефон">
							</div>
							<div class="input__row">
								<input type="text" name="name" class="input" placeholder="Имя">
							</div>   
							<div class="input__row">
								<input type="password" name="password" class="input" placeholder="Пароль">
								<button class="btn__eye pass-view"></button>
							</div> 
							<label class="form__polit">
								<input type="checkbox" name="polit" class="styler">
								<span>Ознакомлен(а) с <a href="">Политикой конфиденциальности</a> и <a href="">Пользовательским соглашением</a></span>
							</label>   

							<button class="btn w-all">Зарегистрироваться</button>

							
						</div>
					</form>
				</div>

				<div class="reg__tab reg-tab" data-tab="center">
					<form action="" method="post">
						<div class="reg__cols">
							<input name="controll" class="no-display" type="text">   
							<div class="input__row">
								<input type="text" name="name" class="input" placeholder="Наименование организации">
							</div>   
							<div class="input__row">
								<input type="tel" name="phone" class="input phone-mask" placeholder="Телефон">
							</div>
							<div class="input__row">
								<input type="text" name="login" class="input" placeholder="Логин">
							</div> 
							<div class="input__row">
								<input type="text" name="city" class="input" placeholder="Город">
							</div>      
							<div class="input__row">
								<input type="text" name="email" class="input" placeholder="Электронная почта">
							</div>   
							<div class="input__row">
								<input type="password" name="password" class="input" placeholder="Пароль">
								<button class="btn__eye pass-view"></button>
							</div>  

							
							<label class="form__polit">
								<input type="checkbox" name="polit" class="styler">
								<span>Ознакомлен(а) с <a href="">Политикой конфиденциальности</a>, <a href="">Пользовательским соглашением</a> и <a href="">публичной офертой</a></span>
							</label> 

							<button class="btn w-all">Зарегистрироваться</button>
						</div>
					</form>
				</div>
				
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup " data-popup="call">
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
				<div class="popup__head">
					<div class="popup__title">Заказать обратный звонок</div>
					<div class="popup__intro">Оставь свои контактные данные — мы позвоним и ответим на все вопросы</div>
				</div>
				<form action="" method="post">
					<input name="controll" class="no-display" type="text">
					<input type="hidden" name="form" value="Заказать обратный звонок">
					<div class="input__row">
						<input type="text" name="name" class="input" placeholder="Имя">
					</div>  
					<div class="input__row">
						<input type="tel" name="phone" class="input phone-mask" placeholder="Телефон">
					</div>
					<div class="input__row">
						<input type="text" name="email" class="input" placeholder="Электронная почта">
					</div>  
					
					<label class="form__polit">
						<input type="checkbox" name="polit" class="styler">
						<span>Ознакомлен с <a href="">публичной офертой</a></span>
					</label>


					<div class="form__btn">
						<button class="btn w-all">Отправить</button>
					</div>
				</form>
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup popup-thank" data-popup="thank">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a href="#" class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
				<div class="popup__title">Заявка на обратный звонок отправлена</div>
				<div class="popup__intro">В ближайшее время мы с тобой свяжемся</div>
			
				
			</div>
		</div><!--popup__container-->
	</div>
</div>


<div class="popup " data-popup="auth_favour">
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
				<div class="popup__head">
					<div class="popup__title">Добавить школу или курс в избранное может только авторизованный пользователь</div>
				</div>

				<button class="btn w-all" data-open-popup="auth">Войти</button>
				
				<div class="auth__bottom">
					Нет аккаунта? <a href="" class="link" data-open-popup="reg">Зарегистрироваться</a>
				</div>
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup " data-popup="auth_course">
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
				<div class="popup__head">
					<div class="popup__title">Добавить курс может только авторизованный пользователь</div>
				</div>

				<button class="btn btn--purple w-all" data-open-popup="auth">Войти</button>
				
				<div class="auth__bottom">
					Нет аккаунта? <a href="" class="link" data-open-popup="reg">Зарегистрироваться</a>
				</div>
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup " data-popup="auth_sale">
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
				<div class="popup__head">
					<div class="popup__title">Получить скидку может только авторизованный пользователь</div>
				</div>

				<button class="btn btn--purple w-all" data-open-popup="auth">Войти</button>
				
				<div class="auth__bottom">
					Нет аккаунта? <a href="" class="link" data-open-popup="reg">Зарегистрироваться</a>
				</div>
			</div>
		</div><!--popup__container-->
	</div>
</div>

<!-- Удаление скидки -->
<div class="popup " data-popup="sale_remove">
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
				<div class="popup__head">
					<div class="popup__title">Вы уверены, что хотите <br> удалить эту скидку?</div>
				</div>

				<button class="btn btn--red w-all">Удалить</button>
				<button class="btn btn--bdred w-all popup-close">Отмена</button>
			</div>
		</div><!--popup__container-->
	</div>
</div>

<!--Удаление лида-->
<div class="popup " data-popup="lead_remove">
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
				<div class="popup__head">
					<div class="popup__title">Лид обработан, <br> договор не заключен. <br> Удалить из списка лидов?</div>
				</div>

				<button class="btn btn--red w-all">Удалить</button>
				<button class="btn btn--bdred w-all popup-close">Отмена</button>
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup popup-thank" data-popup="dogovor_thank">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a href="#" class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
				<div class="popup__title">Поздравляем! <br> Договор на обучение <br> заключен</div>				
			</div>
		</div><!--popup__container-->
	</div>
</div>




<div class="popup " data-popup="confirm_phone">
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
				<div class="popup__head">
					<div class="popup__title">Подтверждение телефона</div>
					<div class="popup__intro">На ваш номер было отправлено смс с кодом. <br> Введите его в поле нижедля подтверждения телефона</div>
				</div>
				<form action="" method="post">
					<input name="controll" class="no-display" type="text">
					<input type="hidden" name="form" value="Подтверждение телефона">
					<div class="input__row">
						<input type="text" name="code" class="input" placeholder="Код из смс">
					</div>  
					<div class="">
						<button class="btn w-all">Отправить</button>
					</div>
					<div class="form__linkbtn">
						<a href="" class="">Отправить код еще раз</a>
					</div>
				</form>
			</div>
		</div><!--popup__container-->
	</div>
</div>
<div class="popup popup-thank" data-popup="confirm_phone_thank">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a href="#" class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
				<div class="popup__title">Спасибо! <br> Ваш номер телефона <br> подтвержден</div>				
			</div>
		</div><!--popup__container-->
	</div>
</div>



<!-- отказать в кп -->
<div class="popup " data-popup="refuse_kp">
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
				<div class="popup__head">
					<div class="popup__title">Вы уверены, что хотите <br> отказать этой школе?</div>
				</div>

				<button class="btn btn--red w-all">Да</button>
				<button class="btn btn--bdred w-all popup-close">Отмена</button>
			</div>
		</div><!--popup__container-->
	</div>
</div>


<div class="popup popup-copmisreg" data-popup="copmisreg">
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
				<div class="popup__head">
					<div class="popup__title">Узнайте, зарегистрирована ли ваша компания на EDUhub</div>
				</div>
				
				<form action="" method="post">
					<input name="controll" class="no-display" type="text">
					<div class="input__row">
						<div class="form__label">Выберите компанию из списка</div>
						<select name="copmany" data-placeholder="Список компаний" class="styler styler--white">
							<option value=""></option>
							<option value="Компания 1">Компания 1</option>
							<option value="Компания 2">Компания 2</option>
							<option value="Компания 3">Компания 3</option>
							<option value="Компания 4">Компания 4</option>
							<option value="Компания 5">Компания 5</option>
						</select>
					</div> 
					<div class="form__tb">здесь будет появляться инструкция для получения промокода. Инструкция заполняется администром партнерских программ в личном кабинете компании</div> 
					
					
					<div class="popup__head">
						<div class="popup__title">Нет вашей компании в списке?</div>
					</div>
					<div class="input__row">
						<div class="form__label">Укажите название вашей компании в формате:</div>
						<input type="text" name="name" class="input input--white" placeholder="Название компании, ООО">
					</div>
					<div class="input__row">
						<div class="form__label">Добавьте комментарий</div>
						<textarea name="comment" class="input input--white" placeholder="Комментарий"></textarea>
					</div>

					<div class="input__row">
						<button class="btn btn--purple w-all">Отправить запрос</button>
					</div>
					<div class="form__tb">здесь будет появляться инструкция для получения промокода. Инструкция заполняется администром партнерских программ в личном кабинете компании</div>
				</form>
			</div>
		</div><!--popup__container-->
	</div>
</div>





<div class="cookie js-cookie">
	<div class="container">
		<div class="cookie__inner">
			<div class="cookie__text">Пожалуйста, согласитесь с правилами обработки <span class="nowrap">персональных данных.</span></div>
			<div class="">Хотите больше узнать о том, как мы обрабатываем ваши данные? Пожалуйста, ознакомьтесь с нашей <a href="">политикой конфиденциальности.</a></div>
			<div class="cookie__buttons btns">
				<button class="btn js-cookie-save">Принять</button>
				<button class="btn btn--graydark js-cookie-close">Отклонить</button>
			</div>
		</div>
	</div>
</div>

</body>

</html>