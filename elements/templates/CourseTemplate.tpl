{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
{if $_modx->resource.parent != 61}
{include 'file:chunks/crumbs/crumbs.tpl'}
{/if}
<section class="detail section__mgb">
    <div class="container">
    <br>
    {if 'standard' | mobiledetect}    
    <div class="section__head detail__head">
        <h1 class="section__title">{$_modx->resource.course_group_title?:$_modx->resource.pagetitle}</h1>
    </div>
    {else}
    <div class="section__head detail__head show-tablet-sm">
        <h1 class="section__title">{$_modx->resource.course_group_title?:$_modx->resource.pagetitle}</h1>
    </div>
    {/if}
    <div class="detail__cols">
        <div class="detail__content">
            {include 'file:chunks/courses/courses.content.tpl' page_id=$_modx->resource.id}
            {include 'file:chunks/courses/courses.info.tpl'    page_id=$_modx->resource.id}
            {*include 'file:chunks/reviews/reviews.list.tpl'    page_id=$_modx->resource.id*}
            {*include 'file:chunks/reviews/reviews.form.tpl'     page_id=$_modx->resource.id*}
        </div>
        {include 'file:chunks/courses/courses.detail.aside.tpl' page_id=$_modx->resource.id}
    </div>
</section><!-- detail -->
{if $_modx->resource.parent != 61}
    {include 'file:chunks/courses/courses.starts.main.tpl' schools_id=$_modx->resource.course_owner course_template=$_modx->resource.course_template}
    {include 'file:chunks/courses/courses.continue.main.tpl' schools_id=$_modx->resource.course_owner course_template=$_modx->resource.course_template}
{else}
    {include 'file:chunks/courses/courses.starts.main.tpl' schools_id=$_modx->resource.course_owner course_template=$_modx->resource.id}
    {include 'file:chunks/courses/courses.continue.main.tpl' schools_id=$_modx->resource.course_owner course_template=$_modx->resource.id}
{/if}

{/block}