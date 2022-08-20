{set $page_id = $thread_name|replace:"thread-":""}
<div id="ec-{$thread_name}-message-{$id}" class="swiper-slide">
    <div class="reviews__item">
        <div class="reviews__item-name">{$user_name}</div>
        <div class="reviews__item-course">Курс <a href="{$_modx->makeUrl($page_id)}">{$page_id | resource : 'pagetitle'}</a></div>
        <div class="reviews__item-rating ec-stars">
            <span class="rating-{$rating}"></span>
        </div>        
        <div class="reviews__item-text">{$text}</div>
        <div class="reviews__item-date">{$date | dateAgo}</div>
    </div>
</div>





