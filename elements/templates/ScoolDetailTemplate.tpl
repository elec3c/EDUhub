{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}  
        {include 'file:chunks/crumbs/crumbs.tpl'}
        <section class="detail section__mgb">
            <div class="container">
                <div class="section__head detail__head show-tablet-sm">
                    <h2 class="section__title">{$_modx->resource.pagetitle?: $_modx->resource.longtitle}</h2>
                </div>
                <div class="detail__cols">
                    <div class="detail__content">
                        <div class="section__head detail__head hide-tablet-sm">
                            <h2 class="section__title">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h2>
                        </div>
                        <div class="detail__desc section__mgb--md">
                            {$_modx->resource.content ?: $_modx->resource.introtext}
                        </div>
                        {include 'file:chunks/scools/scools.detail.program.tpl'}
                        {include 'file:chunks/reviews/reviews.list.tpl'    page_id=$_modx->resource.id}
                        {include 'file:chunks/reviews/reviews.form.tpl'     page_id=$_modx->resource.id}
                        {include 'file:chunks/scools/scools.detail.photo.tpl'}
                    </div>
                    {include 'file:chunks/scools/scools.detail.aside.tpl'}
                </div>
            </div>
        </section><!-- detail -->
{/block}
