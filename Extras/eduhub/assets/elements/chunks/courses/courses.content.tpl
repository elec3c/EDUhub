<div class="section__head detail__head hide-tablet-sm">
    <h2 class="section__title">{$_pls['tv.course_group_title']?:$pagetitle}</h2>
</div>
<div class="detail__desc">
    {if $_modx->resource.introtext}
        <p>{$_modx->resource.introtext}</p>
    {else}
        {$_modx->resource.content}
    {/if}
</div>