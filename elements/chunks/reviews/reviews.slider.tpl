    <div class="reviews__items  reviews-slider swiper">
        <div class="swiper-wrapper">
            {'!ecMessages'| snippet: [
                'tpl' => '@FILE chunks/reviews/reviews.slider.row.tpl',
                'limit' => 10
            ]}                
        </div>
    </div><!--reviews__items-->