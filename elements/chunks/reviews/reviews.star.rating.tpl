<div class="rating courses__item-rating" title="{$rating_wilson}" itemscope itemtype="http://schema.org/AggregateRating">
    <meta itemprop="itemReviewed" content="{($itemReviewed ?: $_modx->resource['pagetitle']) | e}" />
    <meta itemprop="ratingValue" content="{$rating_wilson}" />
    <meta itemprop="bestRating" content="{$rating_max}" />
    <meta itemprop="worstRating" content="1" />
    <meta itemprop="ratingCount" content="{$count}" />
    {if $count > 0}    
        {foreach 1..$count}
            <span class="active"></span>	
        {/foreach}
        {set $count = 5 - $count}
        {foreach 1..$count}
            <span class=""></span>	
        {/foreach}
    {else}
        {foreach 1..5}
            <span class=""></span>	
        {/foreach}
    {/if}
</div>


    

            