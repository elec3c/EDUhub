<div class="courses__block">
    <div class="courses__block-content">
        <div class="courses__block-head">
            <div class="courses__block-check">
                <input type="checkbox" name="" value="" class="styler">
            </div>
            <div class="courses__block-photo">
                <div class="courses__block-photo__wrap"><img src="/assets/images/courses/3.jpg" alt=""></div> 
            </div>
            {include 'file:chunks/courses/courses.block.info.tpl' page_id=$id}        
        </div>
        <div class="courses__block-text">{$introtext !: ($content | notags | limit : 150)}</div>
    </div>
    
    {include 'file:chunks/courses/courses.block.aside.tpl' page_id=$id}
    {include 'file:chunks/courses/courses.block.dop.tpl'  page_id=$id}
    
</div>