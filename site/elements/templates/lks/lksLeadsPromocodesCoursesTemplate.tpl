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
                            'parents'=>'61,'~$_modx->config['site_parent_courses'],
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
                            'tpl'=>'@FILE chunks/lks/lks.leads.promocode.courses.block.tpl'
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
