{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}    
{include 'file:chunks/crumbs/crumbs.tpl'}
<section class="article section__mgb">
    <div class="container">
        <div class="section__head">
        {if $_modx->resource.pagetitle}
            <h2 class="section__title">{$_modx->resource.logtitle ?: $_modx->resource.pagetitle}</h2>
        {/if}
        </div>
        <div class="article__content">
            {if $_modx->resource.richtext == 1}
                {$_modx->resource.content}							
            {else}
                {$_modx->resource.introtext}						
            {/if}
        </div>
    </div>
</section><!-- article -->
{/block}