{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk leads section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Лиды</h2>
                </div>

                {include 'file:chunks/users/user.submenu.tpl' pid='37'}
                
                {'!PromoCode' | snippet}
                <div id="pdopage">
                    <div class="rows">
                        {'!pdoPage' | snippet :[
                            'showLog'=>1,
                            'parents'=>85,
                            'ajaxMode'=>'default'
                            'class'=>'modResource',
                            'includeTVs'=>'course_owner',
                            'tvPrefix'=>'',
                            'loadModels'=>'promocode',
                            'innerJoin'=>[
                                'PromoCodeItem'=>[
                                    'class'=>'PromoCodeItem',
                                    'on'=>'modResource.id = PromoCodeItem.groupId',
                                ],
                            ],
                            'leftJoin'=>[
                                'modUserProfile'=>[
                                    'class'=>'modUserProfile',
                                    'on'=>'modUserProfile.internalKey = PromoCodeItem.userId',
                                ],
                            ],
                            'where'=>[
                                'PromoCodeItem.active'=>1,
                                'PromoCodeItem.deal IS NOT NULL',
                                'PromoCodeItem.deleted IS NULL',
                                'course_owner'=>$user_id,
                            ],
                            'select'=>[
                                'PromoCodeItem'=>'*',
                                'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                                'modUserProfile'=>'modUserProfile.fullname,modUserProfile.mobilephone,modUserProfile.email',
                            ],
                            'sortby'=>[
                                'PromoCodeItem.id'=>'DESC',
                            ],
                            'tpl'=>'@INLINE                                <div class="leads__block">
                                    <div class="leads__header lk__wraplr section__lr">{$pagetitle}</div>
                                    <div class="leads__item lk__wraplr section__lr">
                                        <div class="leads__item-name show-desktop-sm">{$fullname}</div>
                                
                                        <div class="leads__item-col col--first">
                                            <div class="leads__item-name hide-desktop-sm">{$fullname}</div>
                                        </div>
                                
                                        <div class="leads__item-col hide-desktop-sm">
                                            <div class="leads__item-prop">
                                                <div class="leads__item-prop__label">Группа</div>
                                                <a href="{$res_id | url}">Смотреть</a>
                                            </div>
                                
                                        </div>
                                        <div class="leads__item-col">
                                            <div class="leads__item-prop">
                                                <div class="leads__item-prop__label">Телефон</div>
                                                <a href="tel:{$mobilephone}">{$mobilephone}</a>
                                            </div>
                                            <div class="leads__item-prop">
                                                <div class="leads__item-prop__label">Mail</div>
                                                <a href="mailto:{$email}">{$email}</a>
                                            </div>
                                        </div>
                                        <div class="leads__item-col leads__item-action">
                                            <input type="text" class="input input--white" readonly value="Промокод: {$code}">
                                            {*<button class="btn promocode-dogovor-remove" data-id="{$id}">Отменить договор</button>*}
                                        </div>
                                    </div>
                                </div>
 
                            '
                        ]?:'<p class="section__intro">Ничего не найдено</p>'}
                    </div>
                    <div class="section__buttons">
                        {'page.nav' | placeholder}
                    </div>
                </div>
                
                
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
