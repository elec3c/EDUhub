{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}    
{include 'file:chunks/crumbs/crumbs.tpl'}
<section class="article section__mgb">
    <div class="container">
        <div class="section__head">
            <h2 class="section__title">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h2>
        </div>
        <div class="article__cols">
            <div class="article__content">
                {if $_modx->resource.small_image}
                {set $image = $_modx->resource.small_image | phpthumbon: 'w=740&h=400&q=100'}
                {/if}
                <div class="article__photo"><img src="{$image ?: 'https://dummyimage.com/740x400/e9ecef/fff.png'}" alt="{$menutitle ?: $pagetitle}"></div>
                <div class="content__text">
                {$_modx->resource.content ?: $_modx->resource.introtext}
                </div>
                <a href="{$_modx->makeUrl($_modx->resource.parent)}" class="article__prev">ВЕРНУТЬСЯ К СПИСКУ СТАТЕЙ</a>
            </div>
            {include "file:chunks/blog/blog.aside.tpl"}
        </div>
    </div>
</section><!-- article -->
{/block}