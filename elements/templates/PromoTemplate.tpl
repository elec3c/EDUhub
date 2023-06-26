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
{elseif $_modx->resource.id in [1236]}    
    <section class="persdisc section__mgb--sm">
        <div class="container">
            <div class="section__head mb--sm">
                <h2 class="section__title">{$_modx->resource.longtitle?:$_modx->resource.pagetitle}</h2>
                <div class="section__intro mw">
                    {$_modx->resource.introtext}						
                </div>
            </div>
            {include 'file:chunks/alg/alg.persdisc.promo.tpl'}
            {include 'file:chunks/advantages/advantages.persdisc.promo.tpl'}
            
        </div>
    </section><!--persdisc-->  
    
    {include 'file:chunks/search/search.company.block.promo.tpl'}        
    {include 'file:chunks/item/item.compispartn.promo.tpl'}    
    {include 'file:chunks/advantages/advantages.multisc.promo.tpl'}    
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