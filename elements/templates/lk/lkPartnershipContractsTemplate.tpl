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
                    <div class="ppcontracts">
                        <div class="ppcontracts__head ppcontracts__rcols">
                            <div class="ppcontracts__item-col ppcontracts__item-col--info">Дата/ Школа <br> Юр. и конт. лицо</div>
                            <div class="ppcontracts__item-col ppcontracts__item-col--category">
                                <div class="ppcontracts__item-label">Фильтр по категориям</div>
                                <div class="checkselect  check-select" data-placeholder="Все направления">
                                    <input type="hidden" name="course_metro" class="check-select-value">
                                    <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Все направления</div>
                                    <div class="checkselect__dropdown check-select-dropdown">
                                        <div class="checkselect__list">
                                            <label><input type="checkbox"  class="styler check-param" name="category[]" checked value="all"><span>Все направления</span></label>
                                            <label><input type="checkbox"  class="styler check-param" name="category[]" checked value=""><span>IT</span></label>
                                            <label><input type="checkbox"  class="styler check-param" name="category[]" checked value=""><span>Языковые</span></label>
                                            <label><input type="checkbox"  class="styler check-param" name="category[]" checked value=""><span>Маркетинг</span></label>
                                            <label><input type="checkbox"  class="styler check-param" name="category[]" checked value=""><span>Бизнес</span></label>
                                            <label><input type="checkbox"  class="styler check-param" name="category[]" checked value=""><span>Финансы</span></label>
                                            <label><input type="checkbox"  class="styler check-param" name="category[]" checked value=""><span>Продажи</span></label>
                                            <label><input type="checkbox"  class="styler check-param" name="category[]" checked value=""><span>Управление персоналом</span></label>
                                            <label><input type="checkbox"  class="styler check-param" name="category[]" checked value=""><span>Дизайн и графика</span></label>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            <div class="ppcontracts__item-col ppcontracts__item-col--sale">Размер скидки</div>
                            <div class="ppcontracts__item-col ppcontracts__item-col--note">Примечание</div>
                            <div class="ppcontracts__item-col ppcontracts__item-col--count">Количество курсов <br> на сайте</div>
                        </div>
    
                        <div class="ppcontracts__item lk__wraplr section__lr">
                            <div class="ppcontracts__rcols">
                                <div class="ppcontracts__item-col ppcontracts__item-col--info">
                                    <div class="ppcontracts__item-label">Дата/ Школа <br> Юр. и конт. лицо</div>
                                    <div class="ppcontracts__item-val">15/02/23</div>
                                    <div class="ppcontracts__item-val">Стримлайн, ООО ",,,,"</div>
                                    <div class="ppcontracts__item-val"> email <br> +375</div>
                                </div>
                                
                                <div class="ppcontracts__item-col ppcontracts__item-col--category">
                                    <div class="ppcontracts__item-label">Категории</div>
                                    <div class="ppcontracts__item-val">Языковые</div>
                                </div>
                                
                                <div class="ppcontracts__item-col ppcontracts__item-col--sale">
                                    <div class="ppcontracts__item-label">Размер скидки</div>
                                    <div class="ppcontracts__item-val">10% <br> на стоимость курса</div>
                                </div>
                                
                                <div class="ppcontracts__item-col ppcontracts__item-col--note">
                                    <div class="ppcontracts__item-label">Примечание</div>
                                    <div class="ppcontracts__item-val">здесь какое-то текстовое описание скидки, например, условие получения - промокод от компании</div>
                                </div>
                                
                                <div class="ppcontracts__item-col ppcontracts__item-col--count">
                                    <div class="ppcontracts__item-label">Количество курсов на сайте</div>
                                    <div class="ppcontracts__item-val">2</div>
                                    <div class="ppcontracts__item-val"><a href="" class="link">Перейти</a></div>
                                </div>
                            </div>
    
                            <div class="ppcontracts__item-buttons">
                                <button class="btn btn--green">Контактное лицо</button>
                                <button class="btn btn--bdrred">Расторгнуть</button>
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