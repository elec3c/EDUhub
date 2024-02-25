
{set $tpl_id = $id}
<div class="courses__block">
    <div class="courses__block-content">
        <div class="courses__block-head">
            {if $_modx->resource.template in [8]}
            <div class="courses__block-check">
                <input type="checkbox" name="" value="{$id}" class="styler">
            </div>
            {/if}
            <div class="courses__block-photo">
                <div class="courses__block-photo__wrap">
                    {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$_pls['course_owner']}
                </div>
            </div>
            {include 'file:chunks/courses/courses.block.info.tpl' page_id=$id}        
        </div>
        <div class="courses__block-text">
            {($introtext|truncate:750:"...") !: ($content | notags | limit : 150)}
    
    {if $tpl_id > 0}
    
        {set $r = $_modx->runSnippet('pdoResources', ['parents'=>85,
                                            'class'=>'modResource',
                                            'includeTVs'=>'course_owner',
                                            'tvPrefix'=>'',
                                            'loadModels'=>'Promote',
                                            'select'=>[
                                                'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                                                'modTemplateVarResource.value as tpl'
                                            ],
                                            'innerJoin'=>[
                                                'EduPromote'=>[
                                                    'class'=>'EduPromote',
                                                    'on'=>'modResource.id = EduPromote.groupId'
                                                ],
                                            ],

                                            'leftJoin'=>[
                                                'modTemplateVarResource'=>[
                                                'class'=>'modTemplateVarResource',
                                                'on'=>'modTemplateVarResource.contentid  = modResource.id AND modTemplateVarResource.tmplvarid = 33 AND modTemplateVarResource.value > 0'
                                                ],
                                            ],                                            

                                            'where'=>[
                                                'EduPromote.lead:>'=>0,
                                                'modTemplateVarResource.value:='=>$tpl_id,
                                                'course_owner'=>$_pls['course_owner']
                                            ],
                                            'sortby'=>[
                                                'EduPromote.id'=>'DESC',
                                            ],
                                            
                                            'tpl'=>'@FILE chunks/courses/courses.pattern.group.block.tpl',
                                            'tplWrapper'=>'@INLINE {$output}'
                                        ])}
                                        
                                        {if strlen(trim($r)) > 0}
                                            <ul style="margin-top:10px;"><br><br><b>Идет набор в группы</b>
                                                {$r}
                                            </ul>
                                        {else}
                                            {set $format_of_study = $id | resource : 'format_of_study'}
                                            {if $format_of_study == 'individual'}
                                                <br><span style="color:red;">Вы можете записаться на этот курс сейчас</span>
                                            {else}
                                                <br><span style="color:red;">Школа еще не разметила информацию о наборе на курс</span>
                                            {/if}
                                        {/if}
                                        
                                        

            {*set $r = $_modx->runSnippet('!getCoursesByTV', [
                'parent' => $_pls['course_sub_category'],
                'tv_name' => 'course_template',
                'tv_value' => $id
            ])*}
            {*if $r}
            {*$r*}
            {*else*}
               <!-- <span style="color:red;">Школа еще не разметила информацию о наборе на курс</span>-->
            {*/if*}
     {/if}
            
        </div>
    </div>
    {include 'file:chunks/courses/courses.block.aside.tpl' page_id=$id}
    {include 'file:chunks/courses/courses.block.dop.tpl'  page_id=$id}
</div>