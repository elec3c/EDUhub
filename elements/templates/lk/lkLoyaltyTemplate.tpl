{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    {set $my_company_id = $user_id | user:'my_company_id'}
    {set $isGroup = ($my_company_id | ismember : ['Corporate'])}
                
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        

        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">{if !$my_company_id}Вы еще не установили связь со своей компанией{else}Ваша компания: {$my_company_id | user:'fullname'}{/if}</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='1134'}                

                {if $my_company_id && $isGroup}
                    {insert 'file:chunks/lk/lk.loyalty.step.tpl'}
                {/if}
                
                {if (intval($my_company_id) > 0) && ($isGroup)}
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
                                        ]
                                ],                                    
                                'select'=>[
                                    'EduPartnership'=>'*',
                                    'EduPartnershipResponse'=>'EduPartnershipResponse.status_id as status_id',
                                ],
                                'where'=>[                              
                                    'EduPartnershipResponse.status_id:IN' => [5,51],
                                    'EduPartnership.to_user_id' => $my_company_id
                                ],
                                'sortby'=>[
                                    'EduPartnership.id'=>'DESC'
                                ],                            
                                'tplWrapper'=>'@FILE chunks/lk/lk.loyalty.wrapper.tpl',
                                'tpl'=>'@FILE chunks/lk/lk.loyalty.partnership.block.tpl',
                            ]?:'<p class="section__intro">Ничего не найдено</p>'}
                {else}
                <div class="loyalty__step-content__buttons">
                     <p>Узнайте, является ли ваша компания партнером EDUhub?</p><br/>
                    <a href="{24 | url}"><button class="btn">Узнать</button></a>
                </div>
                                    
                
                {/if}

            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}