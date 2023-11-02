{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
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
                        {*<p>Вы можете забронировать не более трех мест единовременно. Если вы хотите забронировать еще одно место, удалите какой-либо промокод.</p>*}
                    <p>
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
                            'showLog'=>0,
                            'parents'=>'61,'~$_modx->config['site_parent_courses'],
                            'class'=>'modResource',
                            'limit'=>6,
                            'tvPrefix'=>'',
                            'loadModels'=>'promocode',
                            'innerJoin'=>[
                                'PromoCodeItem'=>[
                                    'class'=>'PromoCodeItem',
                                    'on'=>'modResource.id = PromoCodeItem.groupId and PromoCodeItem.userId='~$user_id,
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
                                'TVcourse_owner'=>'IFNULL(`TVcourse_owner`.`value`, \'\') AS `course_owner`',
                            ],
                            'sortby'=>[
                                'PromoCodeItem.id'=>'DESC',
                            ],
                            'includeTVs'=>'form_of_study,course_city,sale,data_from',
                            'tpl'=>'@FILE chunks/lk/lk.promocode.item.tpl' 
                        ]?:'<p class="section__intro">Вы еще не получали ни одной скидки</p>'}
                    </div>
                    <div class="section__buttons">
                        {'page.nav' | placeholder}
                    </div>
                </div>

            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}