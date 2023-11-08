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
                                        'on'=>'EduPartnership.from_user_id = PromoCodeItem.fromUserId and PromoCodeItem.fromUserId='~$_modx->user.id
                                    ]                                        
                                ],                                    
                                'select'=>[
                                    'EduPartnership'=>'*',
                                    'EduPartnershipResponse'=>'EduPartnershipResponse.status_id as status_id',
                                    'PromoCodeItem'=>'*'
                                ],
                                'where'=>[                              
                                    'EduPartnership.from_user_id'  => $_modx->user.id,
                                    'EduPartnershipResponse.status_id:IN' => [5,51]
                                ],
                                'sortby'=>[
                                    'EduPartnership.id'=>'DESC',
                                ],                            
                                'tpl'=>'@FILE chunks/lks/lks.leads.promocode.learning.block.tpl'
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