{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    {set $my_company_id = $user_id | user:'my_company_id'}
    {set $isGroup = ($my_company_id | ismember : ['Corporate'])}
                
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        

        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">{if !$my_company_id}Вы еще не установили связь со своей компанией{else}Ваша компания: {$my_company_id | user:'fullname'}{/if}</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='1134'}                

                {if $my_company_id && $isGroup}
                <div class="loyalty">
                    <div class="loyalty__steps lk__wraplr section__lr">
                        <div class="loyalty__step">
                            <div class="loyalty__step-number">Шаг 1</div>
                            <div class="loyalty__step-intro">Выберите наиболее удобный способ поиска курсов для себя </div>
                            <div class="loyalty__step-cols">
                                
                                <div class="loyalty__step-content bg">
                                    <div class="loyalty__step-content__title">ВСЕ ПРЕДЛОЖЕНИЯ ОТ ШКОЛ-ПАРТНЕРОВ</div>
                                    <p>Перейти на страницу со всеми курсами школ-партнеров, по которым идет активный набор слушателей.</p>
                                    <div class="loyalty__step-content__buttons">
                                        <a href="{1386 | url}" target="_blank"><button class="btn w-all">Просмотреть</button></a>
                                    </div>
                                </div>                                
                                
                                <div class="loyalty__step-content bg">
                                    <div class="loyalty__step-content__title">НАЙТИ ВСЁ</div>
                                    <p>Перейти на главную страницу к выбору параметров поиска и выбирать между всеми школами на сайте, включая школы, которые не являются партнерами вашей компании.</p>
                                    <div class="loyalty__step-content__buttons">
                                        <a href="{1 | url}#search"><button class="btn w-all">Перейти</button></a>
                                    </div>
                                </div>
                                <div class="loyalty__step-content bg">
                                    <div class="loyalty__step-content__title">НЕТ ВРЕМЕНИ ЖДАТЬ СТАРТ ГРУППЫ?</div>
                                    <p>Если нужно было начать учиться вчера и нет времени ждать пока группа соберется и запустится, подберите действующую группу. На главной странице в разделе "Присоединиться к действующим группам" вы сможете забронировать свободное место в группе, которая уже стартовала и учебный процесс еще позволяет присоединиться к обучению.</p>
                                    <div class="loyalty__step-content__buttons">
                                        <a href="{1 | url}#continue"><button class="btn w-all">Перейти</button></a>
                                    </div>
                                </div>
                                <div class="loyalty__step-content bg">
                                    <div class="loyalty__step-content__title">НЕ НАШЛИ ПОДХОДЯЩИЙ КУРС?</div>
                                    <p>Если вы не нашли подходящий курс - оставьте запрос на подбор курса. Вы получите сообщение как только появится курс, который полностью соответствует вашему запросу. Для этого на главной странице выберите подходящие параметры курса и нажмите кнопку <b>"Сообщить о новых курсах"</b></p>
                                    <div class="loyalty__step-content__buttons">
                                        <a href="{18|url}" target="_blank"><button class="btn btn--green w-all">Отправить запрос</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="loyalty__steps-cols">
                            <div class="loyalty__step">
                                <div class="loyalty__step-number">Шаг 2</div>
                                <div class="loyalty__step-intro">Добавляйте курсы в избранное и сравнивайте курсы</div>
                                <div class="loyalty__step-content">
                                    <p>После добавления курсов в избранное, вы сможете сравнивать курсы по стоимости с учетом всех скидок и по другим параметрам.</p>
                                    <p>Для уточнения деталей обучения заказывайте обратный звонок у школ.</p>
                                </div>
                            </div>
                            <div class="loyalty__step">
                                <div class="loyalty__step-number">Шаг 3</div>
                                <div class="loyalty__step-intro">Бронируйте место, получайте промокод на скидку</div>
                                <div class="loyalty__step-content">
                                    <p>Жмите - "Забронировать место со скидкой" или "Получить промокод"</p>
                                    <p>При нажатии на любую из этих кнопок вы получите промокод, на основании которого вы получите скидку на курс. Школа забронирует для вас место, получит ваши контактные данные и свяжется с вами для подтверждения записи на курс (или на пробное занятие).</p>
                                    <p>Вы всегда можете отказаться от заключения договора.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--loyalty-->
                {/if}
                
                {if (intval($my_company_id) > 0) && ($isGroup)}
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
                                    'EduPartnershipResponse.status_id:IN' => [0,1,2,3,4,5,51,6,7],
                                    'EduPartnership.to_user_id' => $my_company_id
                                ],
                                'sortby'=>[
                                    'EduPartnership.id'=>'DESC'
                                ],                            
                                'tplWrapper'=>'@FILE chunks/lk/lk.loyalty.wrapper.tpl',
                                'tpl'=>'@FILE chunks/lk/lk.loyalty.partnership.block.tpl',
                            ]?:'<p class="section__intro">Ничего не найдено</p>'}
                {else}
                <div class="loyalty__step-content__buttons">
                     <p>Узнайте, является ли ваша компания партнером EDUhub?</p><br/>
                    <a href="{24 | url}"><button class="btn">Узнать</button></a>
                </div>
                                    
                
                {/if}

            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}