{set $title = $pagetitle? : $longtitle}
{set $title = str_replace("Шаблон", "", $title)}
<div class="detail__program">
    <h3 class="detail__program-title">{$title}</h3>
    <p class="detail__program-desc">{$introtext !: ($content | notags | limit : 150)}</p>
    <a href="{$uri}" class="detail__program-link">ПОДРОБНЕЕ</a>
</div>
