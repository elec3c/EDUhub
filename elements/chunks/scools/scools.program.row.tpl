<div class="detail__program">
    <h3 class="detail__program-title">{$pagetitle? : $longtitle}</h3>
    <p class="detail__program-desc">{$introtext !: ($content | notags | limit : 150)}</p>
    <a href="{$uri}" class="detail__program-link">ПОДРОБНЕЕ</a>
</div>
