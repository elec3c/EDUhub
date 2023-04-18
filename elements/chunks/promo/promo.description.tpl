<section class="corptran section__mgb--sm">
    <div class="container">
        <div class="section__head">
            <h2 class="section__title">{$_modx->resource.longtitle?:$_modx->resource.pagetitle}</h2>
        </div>
        {if $_modx->resource.promo_description}
        <div class="corptran__wrap">
            <div class="corptran__wrap-text">{$_modx->resource.promo_description}</div>
        </div>
        {/if}
    </div>
</section><!-- corptran -->