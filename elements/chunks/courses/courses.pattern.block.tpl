{set $user_id=$_pls['course_owner']}
{set $pageID = '!getSchoolsPageID' | snippet: ['schools_id' => $user_id]?:0}
{if ($user_id | ismember : 'Organization') && ($pageID > 0)}
    {set $name = $pageID | resource:'pagetitle'}
{/if}
{set $fullname= $name?:$user_id | user : 'fullname' | htmlent}
    
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
                    {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$_pls['course_owner']}
                </div>
                <p style="text-align:center;">{$fullname}</p>            
            </div>
            {include 'file:chunks/courses/courses.block.info.tpl' page_id=$id}        
        </div>
        <div class="courses__block-text">
            {$introtext !: ($content | notags | limit : 150)}
            
    
            {$_modx->runSnippet('!getCoursesByTV', [
                'parent' => $_pls['course_sub_category'],
                'tv_name' => 'course_template',
                'tv_value' => $id
            ])}
                
            
        </div>
    </div>
    {include 'file:chunks/courses/courses.block.aside.tpl' page_id=$id}
    {include 'file:chunks/courses/courses.block.dop.tpl'  page_id=$id}
</div>