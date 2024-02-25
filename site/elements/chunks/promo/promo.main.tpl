<section class="promo section__mg">
    <div class="container">	
        <div class="promo__wrap section__lr" {if $_modx->resource.promo_color}style="background-color:{$_modx->resource.promo_color}"{/if}>
            <div class="XMLID promo__XMLID-left"></div>
            <div class="XMLID promo__XMLID-right"></div>
            <div class="promo__inner">
                <div class="promo__info">
                    {if $_modx->resource.promo_title}
                    <h1 class="promo__title">{$_modx->resource.promo_title}</h1>
                    {/if}
                    {if $_modx->resource.promo_text}
                    <p class="promo__subtitle">{$_modx->resource.promo_text}</p>
                    {/if}
                    <div class="promo__buttons">
                        <a class="btn promo__btn" href="{1397 | url}">Узнай свою скидку</a> {*data-scroll="pick_up_a_course"*}
                    </div>
                </div>
                {set $src = $_modx->resource.promo_image}
                {if $src}
                <div class="promo__photo"><img src="{$src}" alt="Промо баннер"></div>
                {/if}
            </div>
            <button class="promo__scroll" data-scroll="choose"></button>
        </div>
    </div>	
</section><!-- promo -->