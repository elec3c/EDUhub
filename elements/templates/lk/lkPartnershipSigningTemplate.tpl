{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}

    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    {set $count = '!getStatusCountPartnership' | snippet :[
        'school_id'=>$user_id,
        'status_ids'=>[1]
    ]}    
    
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Партнерские программы</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='1122' count=$count}

                <div class="ssrequest">
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
                                        'EduPartnershipResponse.status_id:IN' => [1]
                                    ],
                                    'sortby'=>[
                                        'EduPartnership.id'=>'DESC',
                                    ],
                                    'tpl'=>'@FILE chunks/lk/lk.partnership.signing.block.tpl'
                                ]?:'<p class="section__intro">Ничего не найдено</p>'}
                            </div>
                            <div class="section__buttons">
                                {$_modx->getPlaceholder('page.nav')}
                            </div>
                        </div>
                {else}
                    <p class="section__intro">Чтобы видеть школы, открытые для предложений о партнерстве, необходима верификация Вашей компании.</p>
                {/if}
                
                    
                </div>
            </div>
        </section><!-- lk -->
        
	</main><!--content__wrapper-->
{/block}



