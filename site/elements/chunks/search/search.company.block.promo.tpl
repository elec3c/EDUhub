              
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
    
    <section class="findcp section__mgb--sm">
        <div class="container">
            <div class="section__head mb--sm">
                <h2 class="section__title">Узнайте, является ли ваша компания партнером EDUHUB</h2>
            </div>
            
                {'!mSearchForm'|snippet:[
                   'pageId'=>'1397',
                   'tplForm'=>'@FILE chunks/search/search.company.form.tpl',
                ]} 
            

            <div class="findcp__result">
                {if $.get.query}
                <div class="findcp__result-title">Найдены похожие результаты: {$total}&nbsp;{$total | declension : 'компания|компании|компаний'}</div>
                
                {set $r = $_modx->runSnippet('!companyRequest', [
                    'user_id'=>$_modx->user.id,
                    'name' => $.get.query,
		            'email' => ''
                ])}                
                
                {/if}

                <div id="pdopage">
                    {if $res}
                    
                        {$_modx->runSnippet('!pdoPage', [
                            'element'=>'pdoResources',
                            'parents' => $_modx->config['site_parent_company'],
		                    'resources' => $res,
                            'tpl'=>'@INLINE <div class="findcp__result-item">{$pagetitle}</div>',
                            'tplWrapper'=>'@INLINE  <div class="findcp__result-items">{$output}</div>', 
                            'sortby'=>'createdon',
                            'includeTVs' => 'small_image, partnership_join_offer',
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
            
            {*<div class="findcp__bottom">Если компания, сотрудником которой Вы являетесь, есть в списке партнеров EDUhub, значит Вы являетесь частью компании, которая заботится о развитии своих сотрудников. Чтобы узнать с какими школами у вашей компании заключены соглашения о скидках, необходимо <a href="" class="link" data-open-popup="reg_user">зарегистрироваться на сайте как Пользователь</a></div>*}
        </div>
    </section><!--findcp  -->