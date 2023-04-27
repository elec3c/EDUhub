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

                {set $subscribeCheck = '!subscribeCheckBuy' | snippet: ['user_id' => $user_id, 'service_id' => 3, 'course_id'=>0]}
                {if  ($subscribeCheck['expire'] > 0) && ($subscribeCheck['expire'] < $.php.time())}
                    
                    <p class="section__intro">Чтобы далее видеть компании, открытые для предложений о партнерстве, необходимо продлить подписку на услугу: <b>&laquo;Размещение курсов b2c на EDUhub&raquo;</b></p> <br><a href="{596 |url}" class="btn" target="_blank">Перейти на страницу подписки</a>                 
                        
                {elseif $subscribeCheck['expire'] > 0}
                    
                {set $partnershipJoinOffer = $_modx->user.partnership_join_offer}
                <div class="ssrequest">
                    {if !$partnershipJoinOffer}
                    <div class="ssrequest__offer">
                        <div class="input__row">
                            <input class="btn {if !$partnershipJoinOffer}btn--purple{else}btn--red{/if} w-all" id="btnJoinOffer" value="{if !$partnershipJoinOffer}Присоединиться к оферте{else}Отсоединиться от оферты{/if}"/>
                        </div>  
                        <input type="hidden" id="partnershipJoinOffer" value="{$partnershipJoinOffer}">
                        <label class="form__lcheck">
                            <input type="checkbox" name="policy" value="1" class="styler" id="policy" {if $partnershipJoinOffer}checked disabled{/if}>
                            <span>С&nbsp;<a href="{1152 | url}" style="text-decoration:underline;" target="_blank;">офертой</a> ознакомлены и согласны</span>
                        </label>
                    </div>
                    {/if}

                    {if !$partnershipJoinOffer}
                    <p class="section__intro">Чтобы далее видеть компании, открытые для предложений о партнерстве, необходимо присоединиться к оферте и не забыть обновить текущую страницу.</p>
                    {else}
                    {*<div class="ssrequest__filters">
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
                        <div class="ssrequest__filters-item">
                            <div class="ssrequest__filters-label">Фильтр по городу</div>
                            <div class="checkselect  check-select" data-placeholder="Все направления">
                                <input type="hidden" name="course_metro" class="check-select-value">
                                <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Все направления</div>
                                <div class="checkselect__dropdown check-select-dropdown">
                                    <div class="checkselect__list">
                                        <label><input type="checkbox"  class="styler check-param" name="city[]" checked value="all"><span>Все направления</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>IT</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Языковые</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Маркетинг</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Бизнес</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Финансы</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Продажи</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Управление персоналом</span></label>
                                        <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Дизайн и графика</span></label>
                                    </div>
                                </div>
                            </div>                            
                        </div>
                    </div>*}

                    <div class="ssrequest__header">
                        <div class="ssrequest__item-col">Компании, открытые <br> для предложений <br> о партнерстве</div>
                        <div class="ssrequest__item-col">Сфера дейтельности</div>
                        <div class="ssrequest__item-col">Количество сотрудников компании</div>
                        <div class="ssrequest__item-col ssrequest__item-col--status">Статус</div>
                        <div class="ssrequest__item-col  ssrequest__item-col--buttons hide-desktop"></div>
                    </div>


                    <div id="pdopage">
                        <div class="rows">
                            {$_modx->runSnippet('!pdoPage', [
                                'tpl'=>'@FILE chunks/partnership/partnership.company.block.tpl',
                                'sortby'=>'createdon',
                                'parents'=>'1132',
                                'includeTVs' => 'small_image, scools_owner',
                                'processTVs'=>'1',
                                'template'=>'21',
                                'showUnpublished'=>'1',
                                'limit'=>'6',
                                'ajaxMode' => 'button',
                                'ajaxElemMore'=>'#pdopage .btn--more',
                                'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg><span>Показать еще школы</span></button></div>' 
                            ])?:'<p class="section__intro">Ничего не найдено</p>'}
                        </div>
                        {$_modx->getPlaceholder('page.nav')}
                    </div>
                    {/if}
                </div>
                {else}                 
                    <p class="section__intro">Чтобы далее видеть компании, открытые для предложений о партнерстве, необходимо активировать подписку на услугу: <b>&laquo;Размещение курсов b2c на EDUhub&raquo;</b></p> <br><a href="{596 |url}#partnership" class="btn" target="_blank">Перейти  на страницу подписки</a>
                {/if}   
            </div>
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}