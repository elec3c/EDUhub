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
                                'PromoCodeItem.deal IS NULL',
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
                            'tpl'=>'@FILE chunks/lks/lks.leads.promocode.block.tpl'
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
