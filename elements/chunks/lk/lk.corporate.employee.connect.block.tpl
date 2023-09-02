
    {var $res = $_modx->runSnippet('!mSearch2', [
        'parents' => $_modx->config['site_parent_company'],
        'returnIds' => 1,
        'includeTVs' => 'partnership_join_offer',
        'where' => '{"template":"21", "partnership_join_offer":"1"}'
        
    ])}
    {if $res}
        {set $total = $.php.count($.php.explode(',',$res))}
    {else}
        {set $total = 0}
    {/if}  
    
    



                <div class="discount">
                    <div class="discount__title">Хотите получить дополнительную корпоративную скидку, которую Учебные центры предоставляют сотрудникам компаний-партнеров?</div>
                    {*<div class="discount__intro">Получите промокод или ссылку (для авторизации  <span class="nowrap">на EDUhub.bу</span> как сотрудник компании) у руководителя отдела кадров, HR или другого сотрудника вашей компании, который курирует партнерские программы</div>*}
                        <br>1. Узнайте, участвует ли компания, сотрудником которой вы являетесь, в Партнерской программе от EDUHub
                        <section class="findcp section__mgb--sm">
                            
                                {*<div class="section__head mb--sm">
                                    <h2 class="section__title">Узнайте, является ли ваша компания партнером EDUHUB</h2>
                                </div>*}
                            
                                <div class="findcp__result">
                                            {'!mSearchForm'|snippet:[
                                               'pageId'=>'24',
                                               'tplForm'=>'@INLINE 
                                               
                                               <form action="{24 | url}" method="get" class="findcp__form" id="mse2_form" role="search">
                                                    {*<div class="form__label">Введите название вашей компании или бренда компании</div>*}
                                                    <div class="findcp__form-cols">
                                                        <input type="text" class="input" name="{$queryVar}" placeholder="Введите название вашей компании" value="{$.get.query}" />
                                                        <button type="submit" class="btn w--all">Найти</button>
                                                    </div>
                                                </form>
                                               
                                               '
                                            ]}
                                            
                                    {if $.get.query}
                                        <div class="findcp__result-title" style="margin-top:10px;">Найдены похожие результаты: {$total}&nbsp;{$total | declension : 'компания|компании|компаний'}</div>
                                    {/if}
                                            
                                       <div id="pdopage">
                                        
                                        {if $res}
                                            <div class="rows">
                                            {$_modx->runSnippet('!pdoPage', [
                                                'element'=>'pdoResources',
                                                'parents' => 0,
                    		                    'resources' => $res,
                                                'tpl'=>'@INLINE <div class="findcp__result-item">{$pagetitle}</div>',
                                                'tplWrapper'=>'@INLINE  <div class="findcp__result-items">{$output}</div>', 
                                                'sortby'=>'createdon',
                                                'includeTVs' => 'small_image',
                                                'processTVs'=>'1',
                                                'limit'=>'6',
                                                'ajaxMode' => 'button',
                                                'ajaxElemMore'=>'#pdopage .btn--more',
                                                'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg><span>Показать еще</span></button></div>' 
                                            ])}
                                            </div>    
                                            <div class="section__buttons">
                                                {$_modx->getPlaceholder('page.nav')}
                                            </div>
                                        {else}
                                            {if $.get.query}
                                            
                                            
                                            
                                                {set $r = $_modx->runSnippet('!companyRequest', [
                                                                'user_id'=>$_modx->user.id,
                                                                'name' => $.get.query,
		                                                        'email' => ''
                                                ])}                                            
                                            
                                                <p class="section__intro">Попробуйте поменять запрос!</p>
                                                
                                                
                                            {/if}
                                        {/if}
                                    </div> 
                                </div>
                        </section><!--findcp  -->                
                        <br>2. Если ваша компания является участником Партнерской программы, получите у Вашего HR (начальника отдела кадров или другого сотрудника, который курирует партнерские программы) промокод для доступа к списку школ-партнеров, которые предоставляют скидки для сотрудников компании.                          
                    <div class="discount__form">
                        <div class="discount__form-intro">Введите промокод <span class="nowrap">для установления</span> связи с вашей компанией</div>
                        {include 'file:chunks/forms/corporate.employee.form.tpl'}
                    </div>
                    <div class="discount__bottom">
                        <div class="discount__bottom-title">Список партнерских программ будет доступен вам на странице <a href="{1134 | url}">Моя компания</a></div>
                        Установив связь с компанией, сотрудником которой вы являетесь, вы сможете:
                        <br>1. получить список школ-партнеров, размеры скидок и условия предоставления
                        <br>2. перейти по ссылкам на страницы школ-партнеров и выбрать интересующие вас курсы
                        <br>3. выбрать подходящие курсы и сравнить их по стоимость уже с учетом скидок
                        <br>4. заказать обратный звонок для уточнения условий обучения
                        <br>5. забронировать место в группе и получить дополнительный промокод от EDUhub
                    </div>

                    <div class="discount__illustr"><img src="assets/images/discont-illustr.svg" alt=""></div>
                </div>

                