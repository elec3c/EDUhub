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

                {set $subscribeCheck = '@FILE /snippets/subscribeCheckBuy.php' | snippet: ['user_id' => $user_id, 'service_id' => 3, 'course_id'=>0]}
                {if  ($subscribeCheck['expire'] > 0) && ($subscribeCheck['expire'] < $.php.time())}
                    
                    <p class="section__intro">Чтобы далее видеть компании, открытые для предложений о партнерстве, необходимо продлить подписку на услугу: <b>&laquo;Размещение курсов b2c на EDUhub&raquo;</b></p> <br><a href="{596 |url}" class="btn" target="_blank">Перейти на страницу подписки</a>                 
                        
                {elseif $subscribeCheck['expire'] > 0}
                    
                    {set $partnership_join_offer = $user_id | user:'partnership_join_offer'}
                    {set $partnership_join_paper = $user_id | user:'partnership_join_paper'}
                    
                    {if !$partnership_join_offer && !$partnership_join_offer}
                        {set $partnershipJoin = false}
                    {else}
                        {set $partnershipJoin = true}
                    {/if}
                            
                
                <div class="ssrequest">
                    {if !$partnershipJoin}
                    <form>
                    <div class="ssrequest__offer">
                        <div style='display:none;'>
                                    <div class="input__row">
                                        <b>Выберите приемлемые соглашение со школами</b>
                                    </div>
                                    <div class="input__row">
                                        <label class="form__lcheck">
                                            <input type="radio" name="partnership_join" value="paper" {if !$partnership_join_paper && $partnership_join_offer}checked{/if} class="styler">
                                            <span>Договор на бумажном носителе</span>
                                        </label>
                                        <label class="form__lcheck">
                                            <input type="radio" name="partnership_join" value="offer" class="styler" {if $partnership_join_paper && !$partnership_join_offer}checked{else}checked{/if}>
                                            <span>Публичная оферта</span>
                                        </label>                                        
                                    </div>                        
                        </div>
                        <div class="input__row">
                            <input class="btn {if !$partnershipJoin}btn--purple{else}btn--red{/if} w-all" id="btnPartnershipJoin" value="{if !$partnership_join_paper && $partnership_join_offer}Присоединиться к оферте{elseif $partnership_join_paper && !$partnership_join_offer}Присоединиться к договору{else}Присоединиться к оферте{/if}" readonly/>
                        </div>  
                        <input type="hidden" id="partnershipJoinOffer" value="{$partnershipJoin}">
                        <label class="form__lcheck" id="policy_block">
                            <input type="checkbox" name="policy" value="1" class="styler" id="policy" {if $partnershipJoin}checked disabled{/if}>
                            <span>С&nbsp;<a href="{1152 | url}" style="text-decoration:underline;" target="_blank;">офертой</a> ознакомлены и согласны</span>
                        </label>
                        {'FileAttach' | snippet : ['makeURL'=>1, 'tpl'=>'file.attach.tpl']}
                    </div>
                    </form>
                    <p class="section__intro">Чтобы получить доступ к списку компаний, открытых для предложений о партнерстве, необходимо присоединиться к оферте.</p>
                    {/if}
                    

                    {if $partnershipJoin}
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
                        <div class="ssrequest__item-col">Город</div>
                        <div class="ssrequest__item-col">Компании, открытые <br> для предложений <br> о партнерстве</div>
                        <div class="ssrequest__item-col">Сфера деятельности</div>
                        <div class="ssrequest__item-col">Количество сотрудников компании</div>
                        <div class="ssrequest__item-col ssrequest__item-col--status">Статус</div>
                        <div class="ssrequest__item-col  ssrequest__item-col--buttons hide-desktop"></div>
                    </div>

                        {*set $verified = $user_id | user:'verified'*}
                        {*if $verified*}
                        
                        {set $filter = 'resource|pagetitle'}                        
                        {set $filterOptions = '{"autoLoad":0}'}
                        
                        
                        <div id="pdopage">
                            <div class="rows">
                                {$_modx->runSnippet('!pdoPage', [
                                    'showEmptyFilters'   =>'true',
                                    'filterOptions'      => $filterOptions,                                
                                    'filters'            => $filter,
                                    'showEmptyFilters'   =>'true',
                                    'tplFilter.outer.resource|pagetitle'=>'tpl.mFilter2.filter.partnership.select',
                                    'tplFilter.row.resource|pagetitle'=>'tpl.mFilter2.filter.partnership.option',
                                    'tplOuter'=>'tpl.mFilter2.partnership.outer',
                                    'tpl'=>'@FILE chunks/partnership/partnership.company.block.tpl',
                                    'sortby' => 'id',
                                    'sortdir' => 'DESC',
                                    'parents'=>'1132',
                                    'includeTVs' => 'small_image, scools_owner,conclusion_agreement',
                                    'processTVs'=>'1',
                                    'template'=>'21',
                                    'showUnpublished'=>'1',
                                    'ajaxMode' => 'button',
                                    'ajaxElemMore'=>'#pdopage .btn--more',
                                    'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg><span>Показать еще школы</span></button></div>' 
                ])?:'<p class="section__intro">Ничего не найдено</p>'}
                            </div>
                            <br>
                            {$_modx->getPlaceholder('page.nav')}
                        </div>
                        {*else*}
                            {*<p class="section__intro">Чтобы видеть партнерские предложения, необходима верификация Вашей компании.</p>*}
                        {*/if*}
                    
                    {/if}
                </div>
                {else}                 
                    <p class="section__intro">Чтобы далее видеть компании, открытые для предложений о партнерстве, необходимо активировать подписку на услугу: <b>&laquo;Размещение курсов b2c на EDUhub&raquo;</b></p> <br><a href="{596 |url}#partnership" class="btn" target="_blank">Перейти  на страницу подписки</a>
                {/if}   
            </div>
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}