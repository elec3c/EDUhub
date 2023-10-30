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
    
                        {set $verified = $user_id | user:'verified'}
                        {if $verified}
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
                                                ],
                                            ],                                    
                                            'select'=>[
                                                'EduPartnership'=>'*',
                                                'EduPartnershipResponse'=>'EduPartnershipResponse.status_id as status_id',
                                            ],
                                            'where'=>[                              
                                                'EduPartnership.to_user_id'  => $user_id,
                                                'EduPartnershipResponse.status_id:IN' => [5]
                                            ],
                                            'sortby'=>[
                                                'EduPartnership.id'=>'DESC',
                                            ],
                                            'tpl'=>'@FILE chunks/lk/lk.partnership.contracts.block.tpl'
                                        ]?:'<p class="section__intro">Ничего не найдено</p>'}
                                    </div>
                                    <div class="section__buttons">
                                        {$_modx->getPlaceholder('page.nav')}
                                    </div>
                                </div>
                        {else}
                            {insert 'file:chunks/lk/lk.message.partnership.for.verified.tpl'}
                        {/if}
                        
                    </div>

            </div>
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}