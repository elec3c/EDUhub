{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk courses section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Пользовательские запросы</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='37'}
               
                {set $subscribeCheck = '@FILE /snippets/subscribeCheckBuy.php' | snippet: ['user_id' => $user_id, 'service_id' => 1]}
                {if ($subscribeCheck['expire'] > 0) && ($subscribeCheck['expire'] < $.php.time())}
                    <p class="section__intro">Чтобы получить доступ к запросам пользователей, необходимо на услугу: &laquo;Аналитика пользовательских запросов&raquo;</p> <br><a href="{596 |url}{if $.get.user_id}?user_id={$.get.user_id}{/if}" class="btn">Продлить подписку</a>    
                {elseif $subscribeCheck['expire'] > 0}
                <div id="pdopage">
                    <div class="rows">
                        {'!pdoPage' | snippet :[
                            'ajaxMode'=>'default',
                            'idx'=>5,
                            'class'=>'EduQueue',
                            'tvPrefix'=>'',
                            'processTVs'=>'1',
                            'limit'=>'10',                            
                            'loadModels'=>'queue',
                            'sortby'=>[
                                'EduQueue.date'=>'DESC',
                            ],                            
                            
                            'tpl'=>'@FILE chunks/lks/lks.analytics.queue.block.tpl',
                            
                            'select'=>[
                                'EduQueue'=>'*'
                            ]
                        ]?:'<p class="section__intro">Ничего не найдено</p>'}

                    </div>
                    <div class="section__buttons">
                        {$_modx->getPlaceholder('page.nav')}
                    </div>
                </div>
                {else}                 
                    <p class="section__intro">Чтобы получить доступ к запросам пользователей, необходимо подписаться на услугу: <b>&laquo;Аналитика пользовательских запросов&raquo;</b></p><br><a href="{596 |url}" class="btn">Активировать подписку</a>                    
                {/if}   
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}