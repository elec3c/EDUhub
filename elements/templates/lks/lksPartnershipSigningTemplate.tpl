{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}

    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Партнерские программы</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='1123'}

                <div class="ssrequest">

                    <div class="ssrequest__filters">
                        <div class="ssrequest__filters-item">
                            <div class="ssrequest__filters-label">Фильтр по статусу</div>
                            <div class="checkselect  check-select" data-placeholder="Все направления">
                                <input type="hidden" name="course_metro" class="check-select-value">
                                <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Все направления</div>
                                <div class="checkselect__dropdown check-select-dropdown">
                                    <div class="checkselect__list">
                                        <label><input type="checkbox"  class="styler check-param" name="status[]" checked value="all"><span>Все направления</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="status[]" checked value=""><span>IT</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="status[]" checked value=""><span>Языковые</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="status[]" checked value=""><span>Маркетинг</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="status[]" checked value=""><span>Бизнес</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="status[]" checked value=""><span>Финансы</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="status[]" checked value=""><span>Продажи</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="status[]" checked value=""><span>Управление персоналом</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="status[]" checked value=""><span>Дизайн и графика</span></label>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>


               
                    <div class="ssrequest__item lk__wraplr section__lr js-item">
                        <div class="ssrequest__item-4cols">
                            <div class="ssrequest__item-4col col--company">
                                <div class="ssrequest__item-label">Компания</div>
                                СООО Мобильные телесистемы<br>Сотрудников - 600<br>Сфера - торговля
                            </div>
                            <div class="ssrequest__item-4col">
                                <div class="ssrequest__item-label">Дата</div>
                                15/02/2023
                            </div>
                            <div class="ssrequest__item-4col">
                                <div class="ssrequest__item-label">Статус</div>
                                отправлено
                            </div>
                        </div>

                        <div class="ssrequest__item-4cols">
                            <div class="ssrequest__item-4col col--category">
                                <div class="ssrequest__item-label">Категории</div>
                                <ul>
                                    <li>языковые</li>
                                    <li>айти</li>
                                    <li>бизнес</li>
                                    <li>продажи</li>
                                    <li>маркетинг</li>
                                    <li>управление персоналом</li>
                                    <li>финансы</li>
                                    <li>дизайн</li>
                                </ul>
                            </div>
                            <div class="ssrequest__item-4col">
                                <div class="ssrequest__item-label">Размер скидки / ед.изм</div>
                                10%
                                
                                <div class="ssrequest__item-label">На что дается скидка</div>
                                на стоимость курса
                            </div>
                            <div class="ssrequest__item-4col">
                                <div class="ssrequest__item-label">Форма подписания договора</div>
                                любой способ подписания
                            </div>
                            <div class="ssrequest__item-4col col--note">
                                <div class="ssrequest__item-label">Примечание</div>
                                <div class="ssrequest__item-note">аваптлвыатмлвтыамдльвжмаваптлвыатмлвтыамдльвжмаваптлвыатмлвтыамдльвжмаваптлвыатмлвтыамдльвжмаваптлвыатмлвтыамдльвжмаваптлвыатмлвтыамдльвжм</div>
                            </div>
                        </div>

                        
                        <div class="ssrequest__item-rcbuttons">
                            <button class="btn btn--purple f-all"><span>Подтвердить <span class="nowrap">подписание договора</span></span></button>
                            <button class="btn btn--bdrred">Удалить</button>
                        </div>
                       
                    </div><!--ssrequest__item-->
                </div>
            </div>
        </section><!-- lk -->
        
	</main><!--content__wrapper-->
{/block}