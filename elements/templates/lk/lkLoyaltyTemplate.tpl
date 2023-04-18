{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        

        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Название компании</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='1134'}                

                <div class="loyalty">
                    <div class="loyalty__steps lk__wraplr section__lr">
                        <div class="loyalty__step">
                            <div class="loyalty__step-number">Шаг 1</div>
                            <div class="loyalty__step-intro">Выберите наиболее удобный способ поиска курсов для себя</div>
                            <div class="loyalty__step-cols">
                                <div class="loyalty__step-content bg">
                                    <div class="loyalty__step-content__title">НАЙТИ ВСЁ</div>
                                    <p>Перейти на главную страницу к выбору параметров поиска и выбирать между всеми школами на сайте, включая школы, не являющиеся партнерами вашей компании</p>
                                    <div class="loyalty__step-content__buttons">
                                        <button class="btn w-all">Перейти</button> 
                                    </div>
                                </div>
                                <div class="loyalty__step-content bg">
                                    <div class="loyalty__step-content__title">ПОИСК <span class="nowrap">ПО ПАРТНЕРАМ</span></div>
                                    <p>Переходите по ссылкам из перечня школ-партнеров и выбирайте подходящие курсы. В карточках курсов вы увидите стоимость курсов и скидки  <br> для сотрудников вашей компании</p>
                                    <div class="loyalty__step-content__buttons">
                                        <svg width="60" height="60" viewBox="0 0 60 60" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M30 55C43.8071 55 55 43.8071 55 30C55 16.1929 43.8071 5 30 5C16.1929 5 5 16.1929 5 30C5 43.8071 16.1929 55 30 55Z" stroke="white" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                            <path d="M21.1748 26.85L29.9998 35.65L38.8248 26.85" stroke="white" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg>                                            
                                    </div>
                                </div>
                                <div class="loyalty__step-content bg">
                                    <div class="loyalty__step-content__title">ЛЕНЬ ИСКАТЬ</div>
                                    <p>Не хотите тратить время на поиск курсов - оставьте запрос на подбор курса. Вы получите подборку курсов по запросу и будете получать сообщения о появлении новых предложений</p>
                                    <div class="loyalty__step-content__buttons">
                                        <button class="btn btn--green w-all">Отправить запрос</button> 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="loyalty__steps-cols">
                            <div class="loyalty__step">
                                <div class="loyalty__step-number">Шаг 2</div>
                                <div class="loyalty__step-intro">Добавляйте курсы в избранное и сравнивайте курсы</div>
                                <div class="loyalty__step-content">
                                    <p>После добавления курсов в избранное, вы сможете сравнивать курсы по стоимости с учетом всех скидок и другим параметрам.</p>
                                    <p>Для уточнения деталей обучения заказывайте обратный звонок</p>
                                </div>
                            </div>
                            <div class="loyalty__step">
                                <div class="loyalty__step-number">Шаг 3</div>
                                <div class="loyalty__step-intro">Жмите получить скидку</div>
                                <div class="loyalty__step-content">
                                    <p>После нажатия Получить скидку вы получите промокод, на основании которого вы получите скидку на курс. Школа забронирует для вас место, получит ваши контактные данные и свяжется для подтверждения записи на курс (или пробное занятие).</p>
                                    <p> Вы всегда можете отказаться от места в группе.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--loyalty-->

                <div class="loyalty__filters">
                    <div class="loyalty__filters-label">Выбрать курс у школ-партнеров со скидкой</div>
                    <div class="loyalty__filters-cols">
                        <select name="categ" class="styler" data-placeholder="Выберите категорию курсов">
                            <option value=""></option>
                            <option value="">1</option>
                            <option value="">2</option>
                        </select>   
                        <select name="subcateg" class="styler" data-placeholder="Выберите подкатегорию">
                            <option value=""></option>
                            <option value="">1</option>
                            <option value="">2</option>
                        </select>  
                    </div>
                </div>

                <div class="loyalty__chead loyalty__ccols">
                    <div class="loyalty__citem-col loyalty__citem-col--info">Школа</div>
                    <div class="loyalty__citem-col loyalty__citem-col--category">Категории</div>
                    <div class="loyalty__citem-col loyalty__citem-col--sale">Размер скидки <br> и на что</div>
                    <div class="loyalty__citem-col loyalty__citem-col--note">Примечание</div>
                    <div class="loyalty__citem-col loyalty__citem-col--count">Идет набор на курсы <br>
                        <div class="loyalty__chead-t">4 программы <br><a href="" class="link">Подборка курсов</a></div>
                    </div>
                </div>

                <div class="loyalty__citem lk__wraplr section__lr loyalty__ccols">
                    <div class="loyalty__citem-col loyalty__citem-col--info">
                        <div class="loyalty__citem-label">Школа</div>
                        <div class="loyalty__citem-val">Стримлайн, <br> ООО ",,,,"</div>
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--category">
                        <div class="loyalty__citem-label">Категории</div>
                        <div class="loyalty__citem-val">Языковые <br> английский - 5 программ <br> немецкий - 1 программа</div>
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--sale">
                        <div class="loyalty__citem-label">Размер скидки <br> и на что</div>
                        <div class="loyalty__citem-val">10% <br> на стоимость курса</div>
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--note">
                        <div class="loyalty__citem-label">Примечание</div>
                        <div class="loyalty__citem-val">здесь какое-то текстовое описание скидки, например, условие получения - промокод от компании</div>
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--count">
                        <div class="loyalty__citem-label">Идет набор на курсы</div>
                        <div class="loyalty__citem-val">4 программы</div>
                        <div class="loyalty__citem-val"><a href="" class="link">Подборка курсов</a></div>
                    </div>
                </div>
                
                <div class="loyalty__citem lk__wraplr section__lr loyalty__ccols">
                    <div class="loyalty__citem-col loyalty__citem-col--info">
                        <div class="loyalty__citem-label">Школа</div>
                        <div class="loyalty__citem-val">2English,  <br> ООО "АЙВИЛИГА"</div>
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--category">
                        <div class="loyalty__citem-label">Категории</div>
                        <div class="loyalty__citem-val">Языковые <br> английский - 5 программ <br> немецкий - 1 программа</div>
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--sale">
                        <div class="loyalty__citem-label">Размер скидки <span class="nowrap">и на что</span></div>
                        <div class="loyalty__citem-val">100 руб. <br> фиксированная скидка</div>
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--note">
                        <div class="loyalty__citem-label">Примечание</div>
                        <div class="loyalty__citem-val">предоставляется для айти курсов</div>
                    </div>
                    
                    <div class="loyalty__citem-col loyalty__citem-col--count">
                        <div class="loyalty__citem-label">Идет набор на курсы</div>
                        <div class="loyalty__citem-val">2 программы</div>
                        <div class="loyalty__citem-val"><a href="" class="link">Подборка курсов</a></div>
                    </div>
                </div>
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}