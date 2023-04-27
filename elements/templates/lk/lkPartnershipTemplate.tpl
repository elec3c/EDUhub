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
                
                {include 'file:chunks/users/user.submenu.tpl' pid='1122'}

                {set $verified = $user_id | user:'verified'}
                {if $verified}
                    <div class="pprequest">
                    <div class="pprequest__head">
                        <div class="pprequest__date">28/02/23 </div>    
                        <div class="pprequest__name">Инглиш папа</div>    
                    </div>
                    <div class="pprequest__item lk__wraplr section__lr">
                        <div class="pprequest__item-col">
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">Категории</div>
                                <div class="pprequest__item-val">
                                    <ul class="pprequest__item-list">
                                        <li>IT</li>
                                        <li>Языковые</li>
                                        <li>Маркетинг</li>
                                        <li>Бизнес</li>
                                        <li>Финансы</li>
                                        <li>Продажи</li>
                                        <li>Управление персоналом</li>
                                        <li>Дизайн и графика</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="pprequest__item-col">
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">Размер скидки</div>
                                <div class="pprequest__item-val">5% на весь курс</div>
                            </div>
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">На что дается скидка</div>
                                <div class="pprequest__item-val">5% на весь курс</div>
                            </div>
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">Примечание</div>
                                <div class="pprequest__item-val">при предьявдении пропуска</div>
                            </div>
                        </div>
                        
                        <div class="pprequest__item-col col-last">
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">Форма подписания договора школой</div>
                                <div class="pprequest__item-val">Любая форма</div>
                            </div>
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">Выберите способ подписания договора</div>
                                <div class="pprequest__item-val">Оферта: приняв предложение договора будет подписан. <br> Бумажный носитель: приняв предложение договор не будет подписан, он переместится на страницу"На подписании"</div>
                                
                                <div class="pprequest__item-pf">
                                    <div class="input__row">
                                        <select name="" class="styler styler--white">
                                            <option value="Публичная оферта">Публичная оферта</option>
                                            <option value="Бумажный носитель">Бумажный носитель</option>
                                        </select>
                                    </div>
                                    <button class="btn btn--green w-all">Принять</button>
                                </div>
                            </div>
                        </div>

                        <div class="pprequest__item-buttons">
                            <button class="btn btn--blue">Контакты</button>
                            <button class="btn btn--red">Отклонить</button>
                        </div>
                    </div>
                </div>
                {else}
                    <p class="section__intro">Чтобы видеть школы, открытые для предложений о партнерстве, необходима верификация Вашей компании.</p>
                {/if}
            </div>
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}