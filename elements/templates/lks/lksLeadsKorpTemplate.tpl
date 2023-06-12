{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk leads section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Корпоративные запросы</h2>
                </div>

                {include 'file:chunks/users/user.submenu.tpl' pid='37'}

                {set $subscribeCheck = '!subscribeCheckBuy' | snippet: ['user_id' => $user_id, 'service_id' => 2, 'course_id'=>0]}
                {if  ($subscribeCheck['expire'] > 0) && ($subscribeCheck['expire'] < $.php.time())}
                    
                    <p class="section__intro">Чтобы далее видеть корпоративные предложения, необходимо на услугу: <b>&laquo;Рассылка запросов на корпоративное обучение&raquo;</b></p> <br><a href="{596 |url}" class="btn">Продлить подписку</a>}                 
                        
                {elseif $subscribeCheck['expire'] > 0}
                    
                        <div id="pdopage">
                            <div class="rows">
                                {'!pdoPage' | snippet :[
                                    'ajaxMode'=>'default',
                                    'idx'=>5,
                                    'class'=>'EduTender',
                                    'tvPrefix'=>'',
                                    'processTVs'=>'1',
                                    'limit'=>'10',                            
                                    'loadModels'=>'tender',
                                    'sortby'=>[
                                        'EduTender.id'=>'DESC',
                                    ],
                                    'tpl'=>'@FILE chunks/lks/lks.leads.korp.block.tpl'
                                ]?:'<p class="section__intro">Ничего не найдено</p>'}
                            </div>
                            <div class="section__buttons">
                                {$_modx->getPlaceholder('page.nav')}
                            </div>
                        </div>
                        
                {else}                 
                      <p class="section__intro">Чтобы далее видеть корпоративные предложения, необходимо на услугу: <b>&laquo;Рассылка запросов на корпоративное обучение&raquo;</b></p> <br><a href="{596 |url}" class="btn">Активировать подписку</a>
                {/if}   



                {*
                
                
                
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
                
                

                        
                        
                        {if $.get.cat_id}
                            {set $cat_id = [$.get.cat_id]}
                        {else}
                            {set $cat_id = [11,10,520,521,522,523,524,623]}
                            {set $curr_direction = $_modx->runSnippet('!getSchoolsCurrDirection', ['user_id'=>$_modx->user.id])}
                        {/if}
                <div class="lk__nav">
                    {'!pdoMenu' | snippet: [
                        'parents' => '85',
                        'displayStart' => 0,
                        'level' => 1,
                        'limit' => 0,
                        'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
                        'tpl' => '@INLINE <li {if $.get.cat_id==$id}class="active"{/if}><a href="{802 | url}?cat_id={$id}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                        'tplHere' => '@INLINE <li class="active">{$menutitle}</li>'
                    ]}                    
                </div>




        {if $.get.cat_id > 0}

                {set $curr_direction = $_modx->runSnippet('!getSchoolsCurrDirection', ['user_id'=>$_modx->user.id])}
                {set $title = $.get.cat_id | resource : 'pagetitle'}
                {if !$.php.in_array($.get.cat_id, $curr_direction)}
                    <p>Чтобы выполнить подписку на сервис <b>&laquo;Тендеры на обучение в  разделе {$title}&raquo;</b>, необходимо <a href="{$modx->makeUrl(816)}" class="link">указать данное направление</a> в настройках профиля школы.</p>
                    <br>
                {else}

                
                    {set $subscribeCheck = '!subscribeCheckBuy' | snippet: ['user_id' => $_modx->user.id, 'service_id' => 2, 'course_id'=>$.get.cat_id]}
                    
                    {if  ($subscribeCheck['expire'] > 0) && ($subscribeCheck['expire'] < $.php.time())}
                    
                        <p class="section__intro">Чтобы далее видеть корпоративные предложения, необходимо на услугу: <b>&laquo;Тендеры на обучение в категории {$.get.cat_id | resource : 'pagetitle'} &raquo;</b></p> <br><a href="{596 |url}" class="btn">Продлить подписку</a>}                 
                        
                    {elseif $subscribeCheck['expire'] > 0}
                    
                        <div id="pdopage">
                            <div class="rows">
                                {'!pdoPage' | snippet :[
                                    'ajaxMode'=>'default',
                                    'idx'=>5,
                                    'class'=>'EduTender',
                                    'tvPrefix'=>'',
                                    'processTVs'=>'1',
                                    'limit'=>'10',                            
                                    'loadModels'=>'tender',
                                'where'=>[                              
                                    'EduTender.cat_id:IN'  => $cat_id 
                                ],
                                    'sortby'=>[
                                        'EduTender.id'=>'DESC',
                                    ],
                                    'tpl'=>'@FILE chunks/lks/lks.leads.korp.block.tpl'
                                ]?:'<p class="section__intro">Ничего не найдено</p>'}
                            </div>
                            <div class="section__buttons">
                                {$_modx->getPlaceholder('page.nav')}
                            </div>
                        </div>
                        
                    {else}                 
                    
                      <p class="section__intro">Чтобы далее видеть корпоративные предложения, необходимо на услугу: <b>&laquo;Тендеры на обучение в категории {$.get.cat_id | resource : 'pagetitle'}&raquo;</b></p> <br><a href="{596 |url}" class="btn">Разблокировать подписку</a>
    
                    {/if}   
                {/if}                       

        {else}
            <br><br>
            <p class="section__intro">Укажите категорию корпоративных предложений, которая Вас интересует</p>                 
        {/if}
                
                
*}
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
