{set $banner = $_modx->runSnippet('getBannerFiles', ['image'=>$image])}
<section class="skillbox section__mg">
<div class="container">	
{if 'standard' | mobiledetect}
    <div class="skillbox__wrap section__lr" style="padding-left:320px;background-color:{$_modx->resource.banner_color?:'#F1F1F1;'}">
{else}        
    <div class="skillbox__wrap section__lr" style="background-color:{$_modx->resource.banner_color?:'#F1F1F1;'}">
{/if}
        <div class="skillbox__inner">
            <picture>
                <source type="image/jpeg" srcset="{$banner['tablet']}" media="(max-width:980px)">
                <source type="image/jpeg" srcset="{$banner['image']}">
                <img src="{$banner['image']}" alt="{$name}" class="skillbox__photo"/>
            </picture>
            <div class="skillbox__info">
                <div class="skillbox__logo"><img src="{$banner['logo']}" alt=""></div>
{if 'standard' | mobiledetect}
                <div class="skillbox__title" style="margin-left:50px;color:#000;">{$name}</div>
{else}                
                <div class="skillbox__title" style="color:#000;">{$name}</div>
{/if}
                <div class="skillbox__desc">
{if 'standard' | mobiledetect}                    
                    <div style="margin-left:50px;">
{else}                        
                    <div>
{/if}
                        [[+description]]
                    </div>
                </div>
{if 'standard' | mobiledetect}                                    
                <div class="skillbox__buttons" style="margin-left:50px;">
{else}                    
                <div class="skillbox__buttons">
{/if}
                    <a data-open-popup="reg" class="btn skillbox__btn">Зарегистрировать компанию</a>
                </div>
            </div>
        </div>
    </div>
</div>	
</section><!-- skillbox -->