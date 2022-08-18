<div class="courses__block">
    <div class="courses__block-content">
        <div class="courses__block-head">
            {if $_modx->resource.template == 8}
            <div class="courses__block-check">
                <input type="checkbox" name="" value="{$id}" class="styler">
            </div>
            {/if}
            <div class="courses__block-photo">
                <div class="courses__block-photo__wrap">
                    {include 'file:chunks/courses/courses.block.photo.tpl' page_id=$id}
                </div>
            </div>
            {include 'file:chunks/courses/courses.block.info.tpl' page_id=$id}        
        </div>
        <div class="courses__block-text">{$introtext !: ($content | notags | limit : 150)}</div>
    </div>
    {include 'file:chunks/courses/courses.block.aside.tpl' page_id=$id}
    {include 'file:chunks/courses/courses.block.dop.tpl'  page_id=$id}
</div>