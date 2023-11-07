{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk sale section__mgb">
            <div class="container">
                
                <div class="section__head">
                    <h2 class="section__title">{$_modx->resource.pagetitle}</h2>
                </div>
                
{if $_modx->user.id==549}                
                {include 'file:chunks/users/user.submenu.tpl' pid='2018'}         
{/if}

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
                {'PromoCode' | snippet}
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
                                    'on'=>'EduPartnership.id = EduPartnershipResponse.partnership_id AND EduPartnership.to_user_id = EduPartnershipResponse.school_id',
                                ],
                                
                                'PromoCodeItem'=>[
                                    'class'=>'PromoCodeItem',
                                    'on'=>'EduPartnership.from_user_id = PromoCodeItem.fromUserId and PromoCodeItem.userId='~$_modx->user.id
                                ]
                            ],
                            'where'=>[                              
                                'EduPartnership.to_user_id'  => $_modx->user.id | user : 'my_company_id',
                                'EduPartnershipResponse.status_id:IN' => [5,51]
                            ],
                            'select'=>[
                                'EduPartnership'=>'*',
                                'EduPartnershipResponse'=>'EduPartnershipResponse.status_id as status_id',
                                'PromoCodeItem'=>'*'
                            ],
                            'sortby'=>[
                                'EduPartnership.id'=>'DESC',
                            ],
                            'tpl'=>'@FILE chunks/lk/lk.promocode.learning.item.tpl'
                        ]?:'<p class="section__intro">Вы еще не получали ни одной скидки</p>'}
                    </div>
                    {* FILE chunks/lk/lk.promocode.item.tpl *}
                    <div class="section__buttons">
                        {'page.nav' | placeholder}
                    </div>
                </div>

            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}