{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
{include 'file:chunks/crumbs/crumbs.tpl'}
<section class="detail section__mgb">
    <div class="container">
    <div class="section__head detail__head">
        <h2 class="section__title">{$_modx->resource.course_group_title?:$_modx->resource.pagetitle}</h2>
    </div>
    <div class="section__head detail__head show-tablet-sm">
        <h2 class="section__title">{$_modx->resource.course_group_title?:$_modx->resource.pagetitle}</h2>
    </div>
    <div class="detail__cols">
        <div class="detail__content">
            {include 'file:chunks/courses/courses.content.tpl' page_id=$_modx->resource.id}
            {include 'file:chunks/courses/courses.info.tpl'    page_id=$_modx->resource.id}
            {include 'file:chunks/reviews/reviews.list.tpl'    page_id=$_modx->resource.id}
            {include 'file:chunks/reviews/reviews.form.tpl'     page_id=$_modx->resource.id}
        </div>
        {include 'file:chunks/courses/courses.detail.aside.tpl' page_id=$_modx->resource.id}
    </div>
</section><!-- detail -->
{/block}