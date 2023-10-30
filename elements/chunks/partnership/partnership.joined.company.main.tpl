        <section class="joined section__mg">
            <div class="container">
                <div class="joined__wrap section__lr">
                    <div class="joined__inner">
                        <div class="section__head text--white">
                            <h2 class="section__title">Компании, которые уже присоединились к Партнерской программе от EDUhub.</h2>
                            <div class="section__intro">Если вы являетесь сотрудником компании-партнера EDUhub, значит вы имеете право на скидку в школах, которые являются партнерами вашей компании. Узнайте у вашей HR-службы как зарегистрироваться на сайте в качестве сотрудника компании, чтобы получить доступ к списку школ-партнеров</div>
                        </div>




                        <div class="joined__items">
                            
                            
                        {$_modx->runSnippet('!pdoResources', [
                            'parents' => $_modx->config['site_parent_company'],
                            'tplOuter'=>'@INLINE {$outout}',
                            'tpl'=>'@FILE chunks/partnership/partnership.joined.company.item.tpl',
                            'sortby' => 'RAND()',
                            'sortdir' => 'DESC',
                            'includeTVs' => 'small_image, scools_owner,conclusion_agreement,partnership_join_offer',
                            'where' => '{"template":"21", "partnership_join_offer":"1"}'                            
                            'processTVs'=>'1',
                            'showUnpublished'=>'1'
                    ])?:'<p class="section__intro">Ничего не найдено</p>'}
                            
                        </div>

                        {*<div class="joined__ihidden js-joined-ihidden">
                            <div class="joined__items">
                                
                                <a href="" class="joined__item">
                                    <div class="joined__item-photo"><img src="assets/images/courses/7.jpg" alt=""></div>
                                    <div class="joined__item-info">
                                        <div class="joined__item-title">Skypro</div> 
                                    </div>
                                </a>
                                
                                <a href="" class="joined__item">
                                    <div class="joined__item-photo"><img src="assets/images/courses/7.jpg" alt=""></div>
                                    <div class="joined__item-info">
                                        <div class="joined__item-title">Skypro</div> 
                                    </div>
                                </a>
                                
                                <a href="" class="joined__item">
                                    <div class="joined__item-photo"><img src="assets/images/courses/7.jpg" alt=""></div>
                                    <div class="joined__item-info">
                                        <div class="joined__item-title">Skypro</div> 
                                    </div>
                                </a>
                                
                                <a href="" class="joined__item">
                                    <div class="joined__item-photo"><img src="assets/images/courses/7.jpg" alt=""></div>
                                    <div class="joined__item-info">
                                        <div class="joined__item-title">Skypro</div> 
                                    </div>
                                </a>
                                
                                <a href="" class="joined__item">
                                    <div class="joined__item-photo"><img src="assets/images/courses/7.jpg" alt=""></div>
                                    <div class="joined__item-info">
                                        <div class="joined__item-title">Skypro</div> 
                                    </div>
                                </a>
                                
                                <a href="" class="joined__item">
                                    <div class="joined__item-photo"><img src="assets/images/courses/7.jpg" alt=""></div>
                                    <div class="joined__item-info">
                                        <div class="joined__item-title">Skypro</div> 
                                    </div>
                                </a>
                                
                            </div>
                        </div>
                        <div class="joined__imore">
                            <a href="#" class="link__more js-toggle-joined">
                                <span class="open_t">Развернуть</span>
                                <span class="close_t">Свернуть</span>
                                <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#FFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>                                        
                            </a>
                        </div>

                        <div class="joined__search">
                            <div class="section__head mb--sm text--white">
                                <h2 class="section__title">Поиск по компаниям</h2>
                            </div>
                            
                            
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
                            
                            {if $_modx->user.id > 0}
                                {set $isUsersGroup = $_modx->user.id | ismember : ['Users']}
                            {else}
                                {set $isUsersGroup = 0}
                            {/if}                            
                            
                            {'!mSearchForm'|snippet:[
                               'pageId'=>'1',
                               'tplForm'=>'@INLINE 
                                    <form action="{1 | url}" method="get" class="joined__sform">
                                        <input type="text" class="input" name="{$queryVar}" placeholder="Название компании" value="{$.get.query}" />
                                        <button type="submit" class="btn">Найти</button>
                                    </form>
                               ',
                            ]}                             
                            
                            {if $.get.query}
                            <div class="joined__result">
                                {if $total == 0}
                                    По вашему запросу компания не найде<span>на</span>
                                {else}
                                    Найдены похожие результаты: {$total}&nbsp;{$total | declension : 'компания|компании|компаний'}
                                    <br><br>
                                {/if}
                                
                                <div id="pdopage">
                                    {if $res}
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
                                    <div class="section__buttons">
                                        {$_modx->getPlaceholder('page.nav')}
                                    </div>
                                    {elseif $.get.query}
                                        {if ($_modx->user.id == 0) || ($_modx->isMember('Administrator'))}     
                                            {include 'file:chunks/feedback/feedback.findcp.anonymous.add.tpl'}
                                        {else}               
                                            {if !$_modx->isMember('Administrator') && $isUsersGroup}
                                                {include 'file:chunks/feedback/feedback.findcp.user.add.tpl'}
                                            {/if}
                                        {/if}
                                    {/if}
                                </div>                                
                                
                                
                                
                            </div>
                            {/if}



                            
                                
                            </div>
                        </div>
                    </div>
                </div><!--joined__wrap-->
            </div>
        </section><!-- joined -->