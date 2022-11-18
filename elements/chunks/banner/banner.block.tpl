{set $banner = $_modx->runSnippet('getBannerFiles', ['image'=>$image])}
<section class="skillbox section__mg">
<div class="container">	
    <div class="skillbox__wrap section__lr">
        <div class="skillbox__inner">
            <picture>
                <source type="image/jpeg" srcset="{$banner['tablet']}" media="(max-width:980px)">
                <source type="image/jpeg" srcset="{$banner['image']}">
                <a href="[[++bannery_click]]/{$adposition}"><img src="{$banner['image']}" alt="{$name}" title="{$description}" class="skillbox__photo"/></a>
            </picture>
            <div class="skillbox__info">
                <div class="skillbox__logo"><img src="{$banner['logo']}" alt=""></div>
                <div class="skillbox__title">{$name}</div>
                <div class="skillbox__desc">{$description}</div>
                <div class="skillbox__buttons">
                    <a href="" class="btn skillbox__btn">Перейти на сайт</a>
                </div>
            </div>
        </div>
    </div>
</div>	
</section><!-- skillbox -->