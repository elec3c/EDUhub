{* {'!BannerY' | snippet : [ 'position' => '1', 'tplWrapper'=>'@INLINE {$output}', 'tpl'=>'@FILE chunks/banner/banner.block.tpl']} *}
<section class="skillbox section__mg">
<div class="container">	
<a href="#" data-open-popup="reg"  >
<picture>
                <source type="image/jpeg" srcset="{$_modx->resource.bnr_img_sm}" media="(max-width:600px)">
                <source type="image/jpeg" srcset="{$_modx->resource.bnr_img_tbl}" media="(max-width:980px)">
                
                <img src="{$_modx->resource.bnr_img}" alt="{$_modx->resource.pagetitle}"  style="width:100%"/>
                
            </picture>
            </a>
</div>
</section>
