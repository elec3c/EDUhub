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
                                        <a href="{1 | url}"><button class="btn w-all">Перейти</button></a>
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
                                    <p>Не хотите тратить время на поиск курсов - оставьте запрос на подбор курса. Вы получите подборку курсов по запросу и будете получать сообщения о появлении новых предложений. Выберите интересующие параметры и нажмите кнопку <b>Уведомить о новых курсах</b></p>
                                    <div class="loyalty__step-content__buttons">
                                        <a href={18|url}><button class="btn btn--green w-all">Отправить запрос</button></a>
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

                {*<div class="loyalty__filters">
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
                </div>*}

                <div class="loyalty__chead loyalty__ccols">
                    <div class="loyalty__citem-col loyalty__citem-col--info">Школа</div>
                    <div class="loyalty__citem-col loyalty__citem-col--category">Категории</div>
                    <div class="loyalty__citem-col loyalty__citem-col--sale">Размер скидки <br> и на что</div>
                    <div class="loyalty__citem-col loyalty__citem-col--note">Примечание</div>
                    <div class="loyalty__citem-col loyalty__citem-col--count">Идет набор на курсы <br>
                        <div class="loyalty__chead-t">4 программы <br><a href="" class="link">Подборка курсов</a></div>
                    </div>
                </div>
                
                
                
                    <div id="pdopage">
                        <div class="rows">
                            {'!pdoPage' | snippet :[
                                'ajaxMode'=>'default',
                                'idx'=>5,
                                'class'=>'EduPartnership',
                                'tvPrefix'=>'',
                                'processTVs'=>'1',
                                'limit'=>'10',                            
                                'loadModels'=>'partnership',
                                'innerJoin'=>[
                                    'EduPartnershipResponse'=>[
                                        'class'=>'EduPartnershipResponse',
                                        'on'=>'EduPartnership.id = EduPartnershipResponse.partnership_id',
                                        ]
                                ],                                    
                                'select'=>[
                                    'EduPartnership'=>'*',
                                    'EduPartnershipResponse'=>'EduPartnershipResponse.status_id as status_id',
                                ],
                                'where'=>[                              
                                    'EduPartnershipResponse.status_id:IN' => [0,1,2,3,4,5,6,7]
                                ],
                                'sortby'=>[
                                    'EduPartnership.id'=>'DESC'
                                ],                            
                                'tpl'=>'@FILE chunks/lk/lk.loyalty.partnership.block.tpl',
                            ]?:'<p class="section__intro">Ничего не найдено</p>'}
                        </div>
                        <div class="section__buttons">
                            {$_modx->getPlaceholder('page.nav')}
                        </div>
                    </div>                

            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}