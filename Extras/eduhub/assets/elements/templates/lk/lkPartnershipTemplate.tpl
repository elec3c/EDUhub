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
                                        'EduPartnershipResponse.status_id:IN' => [0]
                                    ],
                                    'sortby'=>[
                                        'EduPartnership.id'=>'DESC',
                                    ],
                                    'tpl'=>'@FILE chunks/lk/lk.partnership.request.block.tpl'
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
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}