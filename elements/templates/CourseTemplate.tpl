{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
{include 'file:chunks/crumbs/crumbs.tpl'}
<section class="detail section__mgb">
    <div class="container">
    <div class="section__head detail__head show-tablet-sm">
        <h2 class="section__title">{$_modx->resource.pagetitle ?: $_modx->resource.longtitle}</h2>
    </div>
    <div class="detail__cols">
        <div class="detail__content">
            {include 'file:chunks/courses/courses.content.tpl'}
            {include 'file:chunks/courses/courses.info.tpl'}
            {include 'file:chunks/reviews/reviews.list.tpl'}
            {include 'file:chunks/reviews/reviews.form.tpl'}
        </div>
        {include 'file:chunks/courses/courses.detail.aside.tpl'}
    </div>
</section><!-- detail -->
{/block}