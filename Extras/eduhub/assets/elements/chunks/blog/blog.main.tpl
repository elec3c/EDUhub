<section class="blog blog--bgtab section__mg">
    <div class="container">	
        <div class="blog__wrap section__lr">
            <div class="blog__inner">
                <div class="section__head section__head--cols">
                    <h2 class="section__title text--white">Блог</h2>
                    <div class="section__head-right hide-tablet-sm">
                        <a href="{9 | url}" class="btn btn--bdwhite blog__btn">Все статьи</a>
                    </div>
                </div>
                
                <div class="blog__carousel blog-carousel swiper">
                    <div class="swiper-wrapper">
                        {$_modx->runSnippet('pdoResources', [
                            'parents'=>9,
                            'tpl'=>'@FILE chunks/blog/blog.item.tpl',
                            'sortby'=>'createdon',
                            'includeTVs' => 'small_image',
                            'processTVs'=>'1',
                            'limit'=>'3'
                        ])}                                
                    </div>        
                </div><!--blog__items-->

                <div class="section__buttons show-tablet-sm">
                    <a href="{9 | url}" class="btn btn--bdwhite blog__btn">Все статьи</a>
                </div>
            </div>
        </div>
    </div>	
</section><!-- blog -->