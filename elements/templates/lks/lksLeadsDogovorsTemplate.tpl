{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk leads section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Лиды</h2>
                </div>

                <div class="lk__nav">
                    {'!pdoMenu' | snippet: [
                        'parents' => '37',
                        'displayStart' => 0,
                        'level' => 1,
                        'limit' => 0,
                        'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
                        'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                        'tplHere' => '@INLINE <li class="active">{$menutitle}</li>'
                    ]}                    
                </div>
                {'PromoCode' | snippet}
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
                                'course_owner'=>$_modx->user.id,
                            ],
                            'select'=>[
                                'PromoCodeItem'=>'*',
                                'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                                'modUserProfile'=>'modUserProfile.fullname,modUserProfile.mobilephone,modUserProfile.email',
                            ],
                            'sortby'=>[
                                'PromoCodeItem.id'=>'DESC',
                            ],
                            'tpl'=>'@INLINE
                                <div class="leads__block">
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
                        ]}
                    </div>
                    {'page.nav' | placeholder}
                </div>
                
                
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
