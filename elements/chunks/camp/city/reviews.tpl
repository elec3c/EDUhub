<section class="cmp_reviews  cmp_sbg section__pd--mdx">
    <div class="container">
        <div class="section__head mb--md">
            <h2 class="section__title">Отзывы</h2>
        </div>
        <div class="cmp_reviews__items">
            {foreach $reviews as $review}
                <div class="cmp_reviews__item">
                    <div class="cmp_reviews__item-title"><span>{$review.name}</span></div>
                    <div class="cmp_reviews__item-desc">{$review.text}</div>
                </div>
            {/foreach}
        </div>
    </div>
</section>