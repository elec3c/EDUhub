{extends 'file:templates/BaseTemplate.tpl'}

{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk leads section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Подписки</h2>
                </div>

                <div class="balance__wrap">
                    {set $balance = '!budgetSum' | snippet: ['user_id' => $user_id]}
                    {set $r = '!checkUserFields'|snippet:[
                                'fields' => 'unp,bik,rs,bank,addr_bank', 
                                'user_id' => $user_id, 
                                'check' => 1]}

                    
                    {if $r == 1}
                    
                        {set $res = '!subscribeGetPayment'|snippet:['service_id' => 1]}
                        {set $subscribeService1Check = []}
                        {set $subscribeService1Check = '!subscribeCheckBuy' | snippet: ['user_id' => $user_id, 'service_id' => 1, 'course_id' => 0]}
                        {*set $subscribe_payment_service1_30day = $res[30]*}
                        {set $subscribe_payment_service1_0day = $res[0]}
                        {if ($balance < $subscribe_payment_service1_0day) && (!$subscribeService1Check['expire'])}
                            Недостаточно средств на балансе. Чтобы выполнить подписку на сервис <b>&laquo;Аналитика пользовательских запросов&raquo;</b>, необходимо <a href="{$modx->makeUrl(38)}" class="link">пополнить баланс минимум на {$subscribe_payment_service1_30day - $balance} рублей</a> 
                        {else}
                            <br>
                            {include 'file:chunks/forms/subscribe.form.tpl' title='Подписка на аналитику пользовательских запросов' user_id = $user_id service_id='1' course_id='0' index='0'}
                        {/if}
                        <br><br>
                        
                        
                        {set $res = '!subscribeGetPayment'|snippet:['service_id' => 2]}
                        {set $subscribeService2Check = []}
                        {set $subscribeService2Check = '!subscribeCheckBuy' | snippet: ['user_id' => $user_id, 'service_id' => 2, 'course_id' => 0]}
                        {set $subscribe_payment_service2_0day = $res[0]}
                        {if ($balance < $subscribe_payment_service2_0day) && (!$subscribeService2Check['expire'])}
                            Недостаточно средств на балансе. Чтобы выполнить подписку на сервис <b>&laquo;Тендеры на обучение&raquo;</b>, необходимо <a href="{$modx->makeUrl(38)}" class="link">пополнить баланс минимум на {$subscribe_payment_service2_30day - $balance} рублей</a> 
                        {else}
                            <br>
                            {include 'file:chunks/forms/subscribe.form.tpl' title='Подписка на рассылку запросов на корпоративное обучение' user_id = $user_id service_id='2' course_id='0' index='1'}
                        {/if}
                        <br><br>
                        
                        
                        
                        {set $res = '!subscribeGetPayment'|snippet:['service_id' => 3]}
                        {set $subscribeService3Check = []}
                        {set $subscribeService3Check = '!subscribeCheckBuy' | snippet: ['user_id' => $user_id, 'service_id' => 3, 'course_id' => 0]}
                        {set $subscribe_payment_service3_0day = $res[0]}
                        {if ($balance < $subscribe_payment_service3_0day) && (!$subscribeService3Check['expire'])}
                            Недостаточно средств на балансе. Чтобы выполнить подписку на сервис <b>&laquo;Размещение курсов в2с на EDUhub&raquo;</b>, необходимо <a href="{$modx->makeUrl(38)}" class="link">пополнить баланс минимум на {$subscribe_payment_service3_30day - $balance} рублей</a> 
                        {else}
                            <br>
                            {include 'file:chunks/forms/subscribe.form.tpl' title='Подписка на размещение курсов в2с на EDUhub' user_id = $user_id service_id='3' course_id='0' index='2'}
                        {/if}
                        <br><br>                        
                        
                        
                        {*
                        <h2 class="section__title">Подписка на корпоративные тендеры по направлениям</h2>
                        <br><br>
                        {set $direction = $_modx->runSnippet('!getValuesTV', ['tvid' => 90, 'arr'=>1])}
                        {set $index = 1}
                        
                        {set $curr_direction = $_modx->runSnippet('!getSchoolsCurrDirection', ['user_id'=>$_modx->user.id])}
                        
                        {foreach $direction as $k=>$v}
                        
                        {set $title = $k | resource : 'pagetitle'}
                        {if !$.php.in_array($k, $curr_direction)}
                            <p>Чтобы выполнить подписку на сервис <b>&laquo;Тендеры на обучение в  разделе {$title}&raquo;</b>, необходимо <a href="{$modx->makeUrl(816)}" class="link">указать данное направление</a> в настройках профиля школы.</p>
                            <br>
                            {continue}
                        {/if}
                        
                        
                        <div class="cgcourse rollup-box">
                            <div class="cghead">
                                <div class="cgtitle">Направление  <b>&laquo;{$title}&raquo;</b></div>
                                    <a href="#" class="link__more rollup-toggle opened">
                                    <span class="open_t">Развернуть</span><span class="close_t">Свернуть</span>
                                </a>
                            </div>
                            <div class="rollup-tab">
                                {set $res = '!subscribeGetPayment'|snippet:['service_id' => 2]}    
                                {set $subscribeService2Check = []}
                                {set $subscribeService2Check = '!subscribeCheckBuy' | snippet: ['user_id' => $_modx->user.id, 'service_id' => 2, 'course_id' => $k]}
                                {set $subscribe_payment_service2_30day = $res[30]}
                                {if ($balance < $subscribe_payment_service2_30day) && ($subscribeService2Check['expire'] == 0)}
                                    Недостаточно средств на балансе. Чтобы выполнить подписку на сервис <b>&laquo;Тендеры на обучение в  разделе {$title}&raquo;</b>, необходимо <a href="{$modx->makeUrl(38)}" class="link">пополнить баланс минимум на {$subscribe_payment_service2_30day - $balance} рублей</a> 
                                {else}
                                    <br>
                                    {include 'file:chunks/forms/subscribe.form.tpl' title='Тендеры в разделе '~$title service_id='2' course_id=$k index=$index}
                                {/if}
                            </div>
                        </div>                            
                        {set $index = $index + 1}
                        {/foreach}           
                        *}
                        
                    {else}
                        <p>Чтобы попополнить счет для подписки, необходимо заполнить все поля <a href="{$modx->makeUrl(35)}" class="link">профиля школы</a></p>
                    {/if}
                </div>    
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
