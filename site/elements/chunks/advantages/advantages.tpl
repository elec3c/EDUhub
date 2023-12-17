{if $_modx->resource.advantages}
{set $rows = json_decode($_modx->resource.advantages, true)}
<section class="advantages section__mg">
    <div class="container">	
        <div class="section__cols">
            <div class="section__head">
                <h2 class="section__title">Наши преимущества</h2>
            </div>
            <div class="section__wrap">
                <div class="advantages__items">
                {foreach $rows as $idx => $row}                    
                    <div class="advantages__item">
                        <div class="advantages__item-icon"><img src="/assets/images/{$row.image}" alt="{$row.title}"></div>
                        {if $row.title}
                        <h5 class="advantages__item-title">{$row.title}</h5>
                        {/if}
                        {if $row.description}
                        <p class="advantages__item-text">{$row.description}</p>
                        {/if}
                    </div>
                {/foreach}
                </div>
            </div>
        </div>
    </div>	
</section><!-- advantages -->
{/if}
