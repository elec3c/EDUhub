{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk sale section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мои скидки</h2>
                </div>

                <div class="content__text section__mgb--sm">
                    <h3>Как воспользоваться скидкой</h3>
                    <p>Все скидки хранятся в личном кабинете. Чтобы воспользоваться скидкой, необходимо назвать ее менеджеру при записи на курс.</p>
                </div>

                <div class="sale__item sale__item-head">
                    <div class="sale__item-wrap section__lr">
                        <div class="sale__item-col sale__item-photo"></div>
                        <div class="sale__item-col sale__item-info"></div>
                        <div class="sale__item-col sale__item-dop">
                            <div class="sale__item-col sale__item-numb sale__item-lhead">Скидка</div>
                            <div class="sale__item-col sale__item-code sale__item-lhead">Промокод</div>
                            <div class="sale__item-col sale__item-date sale__item-lhead">срок действия</div>
                        </div>
                        <div class="sale__item-col sale__item-remove"></div>
                    </div>
                </div>

                <div class="sale__item">
                    <div class="lk__wraplr sale__item-wrap section__lr">
                        <div class="sale__item-col sale__item-photo"><img src="assets/images/courses/3.jpg" alt=""></div>
                        <div class="sale__item-col sale__item-info">
                            <h3 class="sale__item-title"><a href="">Профессия Python-разработчик</a></h3>
                            <ul class="sale__item-list listinf">
                                <li class="sale__item-training online">Online-обучение</li>
                                <li class="listinf__flex">
                                    <div class="listinf__icon"><img src="assets/images/icons/location.svg" alt=""></div> 
                                    <div class="listinf__str">Москва</div>
                                </li>
                                <li>
                                    <a href="skillbox.ru" class="listinf__flex">
                                        <div class="listinf__icon"><img src="assets/images/icons/global.svg" alt=""></div>
                                        <div class="listinf__str">skillbox.ru</div>
                                    </a>    
                                </li>
                            </ul>
                        </div>
                        <div class="sale__item-col sale__item-dop">
                            <div class="sale__item-col sale__item-numb">
                                <div class="sale__item-label">Скидка</div>
                                15 %
                            </div>
                            <div class="sale__item-col sale__item-code">
                                <div class="sale__item-label">Промокод</div>
                                7829
                            </div>
                            <div class="sale__item-col sale__item-date">
                                <div class="sale__item-label">Срок действия</div>
                                15.08.2022
                            </div>
                        </div>
                        <div class="sale__item-col sale__item-remove">
                            <a href="" class="sale-remove">
                                <img src="assets/images/icons/remove.svg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="sale__item">
                    <div class="lk__wraplr sale__item-wrap section__lr">
                        <div class="sale__item-col sale__item-photo"><img src="assets/images/courses/1.jpg" alt=""></div>
                        <div class="sale__item-col sale__item-info">
                            <h3 class="sale__item-title"><a href="">Факультет Продакт-менеджмента, Профессия Python-разработчик</a></h3>
                            <ul class="sale__item-list listinf">
                                <li class="sale__item-training online">Online-обучение</li>
                                <li class="listinf__flex">
                                    <div class="listinf__icon"><img src="assets/images/icons/location.svg" alt=""></div> 
                                    <div class="listinf__str">Москва</div>
                                </li>
                                <li>
                                    <a href="skillbox.ru" class="listinf__flex">
                                        <div class="listinf__icon"><img src="assets/images/icons/global.svg" alt=""></div>
                                        <div class="listinf__str">skillbox.ru</div>
                                    </a>    
                                </li>
                            </ul>
                        </div>
                        <div class="sale__item-col sale__item-dop">
                            <div class="sale__item-col sale__item-numb">
                                <div class="sale__item-label">Скидка</div>
                                15 %
                            </div>
                            <div class="sale__item-col sale__item-code">
                                <div class="sale__item-label">Промокод</div>
                                7829
                            </div>
                            <div class="sale__item-col sale__item-date">
                                <div class="sale__item-label">Срок действия</div>
                                15.08.2022
                            </div>
                        </div>
                        <div class="sale__item-col sale__item-remove">
                            <a href="" class="sale-remove">
                                <img src="assets/images/icons/remove.svg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="sale__item">
                    <div class="lk__wraplr sale__item-wrap section__lr">
                        <div class="sale__item-col sale__item-photo"><img src="assets/images/courses/4.jpg" alt=""></div>
                        <div class="sale__item-col sale__item-info">
                            <h3 class="sale__item-title"><a href="">Профессия Python-разработчик</a></h3>
                            <ul class="sale__item-list listinf">
                                <li class="sale__item-training online">Online-обучение</li>
                                <li class="listinf__flex">
                                    <div class="listinf__icon"><img src="assets/images/icons/location.svg" alt=""></div> 
                                    <div class="listinf__str">Москва</div>
                                </li>
                                <li>
                                    <a href="skillbox.ru" class="listinf__flex">
                                        <div class="listinf__icon"><img src="assets/images/icons/global.svg" alt=""></div>
                                        <div class="listinf__str">skillbox.ru</div>
                                    </a>    
                                </li>
                            </ul>
                        </div>
                        <div class="sale__item-col sale__item-dop">
                            <div class="sale__item-col sale__item-numb">
                                <div class="sale__item-label">Скидка</div>
                                15 %
                            </div>
                            <div class="sale__item-col sale__item-code">
                                <div class="sale__item-label">Промокод</div>
                                7829
                            </div>
                            <div class="sale__item-col sale__item-date">
                                <div class="sale__item-label">Срок действия</div>
                                15.08.2022
                            </div>
                        </div>
                        <div class="sale__item-col sale__item-remove">
                            <a href="" class="sale-remove">
                                <img src="assets/images/icons/remove.svg" alt="">
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}