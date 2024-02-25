{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
{include 'file:chunks/crumbs/crumbs.tpl'}		
{if $_modx->resource.id in [1142]}
    {include 'file:chunks/promo/promo.description.tpl'}
    {include 'file:chunks/item/item.promo.tpl'}
    {include 'file:chunks/alg/alg.promo.tpl'}
    {include 'file:chunks/advantages/advantages.pconv.promo.tpl'}
    {include 'file:chunks/item/item.detail.promo.tpl'}
    {include 'file:chunks/advantages/advantages.f4ways.promo.tpl'}
    {include 'file:chunks/item/item.learn.promo.tpl'}
    {include 'file:chunks/social/social.promo.tpl'}    
    {include 'file:chunks/faq/faq.promo.tpl'}
    {include 'file:chunks/callback/callback.promo.tpl' color='green'}
{elseif $_modx->resource.id in [1143]}
    {include 'file:chunks/advantages/advantages.features.promo.tpl'}
    {include 'file:chunks/item/item.concat.promo.tpl'}
    {include 'file:chunks/alg/alg.steps.promo.tpl'}
    {include 'file:chunks/item/item.learn.promo.tpl'}
    {include 'file:chunks/social/social.promo.tpl'}
    {include 'file:chunks/faq/faq.promo.tpl'}
    {include 'file:chunks/callback/callback.promo.tpl' color='red'}
{elseif $_modx->resource.id in [1397]}    


{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{set $isUsers = ($_modx->user.id | ismember : ['Users'])}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}

{if ($isUsers) &&  ($my_company_id > 0) && ($isCorporate)}

    {set $my_company_id = $user_id | user:'my_company_id'}
    {set $isGroup = ($my_company_id | ismember : ['Corporate'])}
                
    <main class="content__wrapper">
        

        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">{$_modx->resource.longtitle?:$_modx->resource.pagetitle}</h2>
                    <div class="section__intro mw">
                        {$_modx->resource.introtext}						
                    </div>                    
                </div>
                
                {insert 'file:chunks/lk/lk.loyalty.step.tpl'}
                
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
	
{else}
    <section class="persdisc section__mgb--sm">
        <div class="container">
            <div class="section__head mb--sm">
                <h2 class="section__title">{$_modx->resource.longtitle?:$_modx->resource.pagetitle}</h2>
                <div class="section__intro mw">
                    {$_modx->resource.introtext}						
                </div>
            </div>
            
            {include 'file:chunks/search/search.company.block.promo.tpl'}                                
            {include 'file:chunks/alg/alg.persdisc.promo.tpl'}
            {include 'file:chunks/advantages/advantages.persdisc.promo.tpl'}
            
        </div>
    </section><!--persdisc-->  
    
    
    {include 'file:chunks/item/item.compispartn.promo.tpl'}    
    {include 'file:chunks/advantages/advantages.multisc.promo.tpl'}    
    {include 'file:chunks/item/item.learn.promo.tpl'}
{/if}



{else}
    {include 'file:chunks/promo/promo.description.tpl'}
    {include 'file:chunks/advantages/advantages.promo.tpl'}
    {include 'file:chunks/alg/alg.promo.tpl'}
    {include 'file:chunks/advantages/advantages.detail.promo.tpl'}
    {include 'file:chunks/item/item.promo.tpl'}
    {include 'file:chunks/item/item.learn.promo.tpl'}
    {include 'file:chunks/social/social.promo.tpl'}
    {include 'file:chunks/faq/faq.promo.tpl'}
    {include 'file:chunks/callback/callback.promo.tpl' color='blue'}
{/if}
{/block}