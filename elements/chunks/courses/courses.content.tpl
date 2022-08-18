<div class="section__head detail__head hide-tablet-sm">
    <h2 class="section__title">{$_modx->resource.logtitle ?: $_modx->resource.pagetitle}</h2>
</div>

<div class="detail__desc">
    {if $_modx->resource.introtext}
        <p>{$_modx->resource.introtext}</p>
    {else}
        {$_modx->resource.content}
    {/if}
</div>