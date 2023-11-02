    
        <section class="reviews section__mg">
            <div class="container">	

                <div class="section__head section__head--cols">
                    <h2 class="section__title">Отзывы участников курсов</h2>

                    <div class="section__head-right">
                        <div class="swiper-button-nav">
                            <div class="swiper-button swiper-button-prev">
                                <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M19.9987 36.6667C29.2034 36.6667 36.6654 29.2047 36.6654 20C36.6654 10.7953 29.2034 3.33334 19.9987 3.33334C10.794 3.33334 3.33203 10.7953 3.33203 20C3.33203 29.2047 10.794 36.6667 19.9987 36.6667Z" stroke="#7D7D7D" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M25.832 20H15.832" stroke="#7D7D7D" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M19.168 15L14.168 20L19.168 25" stroke="#7D7D7D" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>                            
                            </div>
                            <div class="swiper-button swiper-button-next">
                                <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M19.9987 36.6667C29.2034 36.6667 36.6654 29.2047 36.6654 20C36.6654 10.7953 29.2034 3.33334 19.9987 3.33334C10.794 3.33334 3.33203 10.7953 3.33203 20C3.33203 29.2047 10.794 36.6667 19.9987 36.6667Z" stroke="#7D7D7D" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M14.168 20H24.168" stroke="#7D7D7D" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M20.832 25L25.832 20L20.832 15" stroke="#7D7D7D" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>                            
                            </div>
                        </div>  
                    </div>
                </div>

                
                <div class="reviews__items  reviews-slider swiper">
                    <div class="swiper-wrapper">
                    {'!ecMessages'| snippet: [
                        'tpl' => '@FILE chunks/reviews/reviews.main.slider.row.tpl',
                        'limit' => 5,
                        'threads' => '*',
                        'resourceFields'=>'id,pagetitle'
                    ]}                
                    </div>
                </div><!--reviews__items-->
            </div>	
        </section><!-- reviews -->