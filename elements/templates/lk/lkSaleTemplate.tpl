{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk sale section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мои скидки</h2>
                </div>

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
                            'showLog'=>1,
                            'parents'=>85,
                            'ajaxMode'=>'default'
                            'class'=>'modResource',
                            
                            'tvPrefix'=>'',
                            'loadModels'=>'promocode',
                            'innerJoin'=>[
                                'PromoCodeItem'=>[
                                    'class'=>'PromoCodeItem',
                                    'on'=>'modResource.id = PromoCodeItem.groupId and PromoCodeItem.userId='~$_modx->user.id,
                                ],
                            ],
                            'leftJoin'=>[
                                'TVcourse_owner'=>[
                                    'class'=>'modTemplateVarResource',
                                    'on'=>'TVcourse_owner.contentid = modResource.id and TVcourse_owner.tmplvarid = 32',
                                ],
                                'modUserProfile'=>[
                                    'class'=>'modUserProfile',
                                    'on'=>'modUserProfile.internalKey = TVcourse_owner.value',
                                ],
                            ],
                            'select'=>[
                                'PromoCodeItem'=>'*',
                                'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                                'modUserProfile'=>'modUserProfile.website,modUserProfile.photo',
                                'TVcourse_owner'=>'IFNULL(`TVcourse_owner`.`value`, \'\') AS `course_city`',
                            ],
                            'includeTVs'=>'form_of_study,course_city,sale,data_to',
                            'tpl'=>'@INLINE
                                <div class="sale__item">
                                    <div class="lk__wraplr sale__item-wrap section__lr">
                                        <div class="sale__item-col sale__item-photo">
                                            {if $photo}<img src="{$photo}" alt="">{/if}
                                        </div>
                                        <div class="sale__item-col sale__item-info">
                                            <h3 class="sale__item-title"><a href="{$res_id | url}">{$pagetitle}</a></h3>
                                            <ul class="sale__item-list listinf">
                                                <li class="sale__item-training online">{if $form_of_study==\'offline\'}Офлайн{else}Онлайн{/if}-обучение</li>
                                                <li class="listinf__flex">
                                                    <div class="listinf__icon"><img src="assets/images/icons/location.svg" alt=""></div> 
                                                    <div class="listinf__str">{$course_city}</div>
                                                </li>
                                                <li>
                                                    <a href="{$website}" class="listinf__flex">
                                                        <div class="listinf__icon"><img src="assets/images/icons/global.svg" alt=""></div>
                                                        <div class="listinf__str">{$website}</div>
                                                    </a>    
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="sale__item-col sale__item-dop">
                                            <div class="sale__item-col sale__item-numb">
                                                <div class="sale__item-label">Скидка</div>
                                                {$sale} %
                                            </div>
                                            <div class="sale__item-col sale__item-code">
                                                <div class="sale__item-label">Промокод</div>
                                                {$code}
                                            </div>
                                            <div class="sale__item-col sale__item-date">
                                                <div class="sale__item-label">Срок действия</div>
                                                {$data_to}
                                            </div>
                                        </div>
                                        {if $active and empty($deal) and empty($deleted)}
                                            <div class="sale__item-col sale__item-remove">
                                                <a href="" class="a-promocode-remove" data-id="{$id}">
                                                    <img src="assets/images/icons/remove.svg" alt="">
                                                </a>
                                            </div>
                                        {/if}
                                    </div>
                                </div>
                            '
                        ]}
                    </div>
                    {'page.nav' | placeholder}
                </div>

            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}