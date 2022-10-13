{if $_pls['tv.small_image']}
{set $image = ($_pls['tv.small_image']) | phpthumbon: 'w=740&h=400&q=100'}
{/if}
<div class="blog__item">
    <div class="blog__item-photo"><a href="{$id | url}"><img src="{$image ?: 'https://dummyimage.com/740x400/e9ecef/fff.png'}" alt="{$menutitle ?: $pagetitle}"></a></div>
    <div class="blog__item-info">
        <h3 class="blog__item-title"><a href="{$id | url}">{$longtitle ?: $pagetitle}</a></h3>
        <p class="blog__item-desc">{$introtext !: ($content | notags | limit : 150)}</p>
        <a href="{$uri}" class="blog__item-link">ЧИТАТЬ ДАЛЬШЕ</a>
    </div>
</div>