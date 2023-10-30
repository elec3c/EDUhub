{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk leads section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Обратные звонки</h2>
                </div>

                {include 'file:chunks/users/user.submenu.tpl' pid='37'}
                
                <div id="pdopage">
                    <div class="analitics__block lk__wraplr section__lr">
                        <div class="rows">
                            {'!pdoPage' | snippet :[
                                'parents'=>0,
                                'ajaxMode'=>'default',
                                'limit'=>10,
                                'class'=>'modResource',
                                'includeTVs'=>'course_owner',
                                'tvPrefix'=>'',
                                'loadModels'=>'calls',
                                'innerJoin'=>[
                                    'EduCalls'=>[
                                        'class'=>'EduCalls',
                                        'on'=>'modResource.id = EduCalls.group_id',
                                    ],
                                ],
                                'select'=>[
                                    'EduCalls'=>'*',
                                    'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                                ],
                                'sortby'=>[
                                    'EduCalls.id'=>'DESC',
                                ],
                                'where'=>[
                                    'EduCalls.school_id'=>$user_id,
                                ],                                
                                'tpl'=>'@FILE chunks/lks/lks.leads.call.block.tpl'
                            ]?:'<p class="section__intro">Ничего не найдено</p>'}
                        </div>
                    </div>
                    <div class="section__buttons">
                        {'page.nav' | placeholder}
                    </div>
                </div>
            </div>
        </section><!-- lk -->

                
                {*'!callList' | snippet: [
                    'school_id' => $_modx->user.id,
                    'tpl' => '@FILE chunks/call/call.block.tpl',
                ]?:'<p class="section__intro">Ничего не найдено</p>'*}   
                

        

	</main><!--content__wrapper-->
{/block}
