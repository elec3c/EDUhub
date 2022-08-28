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
                                'PromoCodeItem.deal IS NULL',
                                'PromoCodeItem.deleted IS NULL',
                                'course_owner'=>$_modx->user.id,
                            ],
                            'select'=>[
                                'PromoCodeItem'=>'*',
                                'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                                'modUserProfile'=>'modUserProfile.fullname,modUserProfile.mobilephone,modUserProfile.email',
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
                                            <button class="btn promocode-dogovor-add" data-id="{$id}">Заключить договор</button>
                                            <button class="btn btn--remove leads__item-remove a-promocode-delete" data-id="{$id}">
                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998"
                                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                    <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97"
                                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                    <path
                                                        d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014"
                                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                    <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round"
                                                        stroke-linejoin="round" />
                                                    <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round"
                                                        stroke-linejoin="round" />
                                                </svg>
                                                <span class="show-tablet-sm">Удалить</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            '
                        ]}
                    </div>
                    <div class="section__buttons">
                        {'page.nav' | placeholder}
                    </div>
                    
                </div>
                
                
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
