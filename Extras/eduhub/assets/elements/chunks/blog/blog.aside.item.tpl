<div class="blog__item blog__item--small">
    {if $_pls['tv.small_image']}
    {set $image = ($_pls['tv.small_image']) | phpthumbon: 'w=185&h=100&q=100'}
    {/if}
    <div class="blog__item-photo"><img src="{$image ?: 'https://dummyimage.com/185x100/e9ecef/fff.png'}" alt="{$menutitle ?: $pagetitle}"></div>
        <div class="blog__item-info">
        <h3 class="blog__item-title">{$menutitle ?: $pagetitle}</h3>
        <p class="blog__item-desc">{$introtext !: ($content | notags | limit : 150)}</p>
        <a href="{$uri}" class="blog__item-link">ЧИТАТЬ ДАЛЬШЕ</a>
    </div>
</div>