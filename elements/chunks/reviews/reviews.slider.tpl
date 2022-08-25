    <div class="reviews__items  reviews-slider swiper">
        <div class="swiper-wrapper">
           {set $thread = $_modx->resource.course_template?'thread-'~$_modx->resource.course_template:'resource-'~$id}
            {'!ecMessages'| snippet: [
                'tpl' => '@FILE chunks/reviews/reviews.slider.row.tpl',
                'thread' => $thread,
                'limit' => 10
            ]}                
        </div>
    </div><!--reviews__items-->