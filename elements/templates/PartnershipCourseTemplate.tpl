{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}  
{include 'file:chunks/crumbs/crumbs.tpl'}

{set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
{set $isCompany = ($user_id | ismember : ['Corporate'])}
{set $isUsers = ($user_id | ismember : ['Users'])}
{set $isOrganization = ($user_id | ismember : ['Organization'])}
{if $isCompany}
    {set $to_user_id = $user_id}
{elseif $isUsers}
    {set $to_user_id = $user_id | user : 'my_company_id'}
{else}
    {set $to_user_id = 0}
{/if}

{set $isGroup = ($to_user_id | ismember : ['Corporate'])}
                
{if $isGroup}
                

{$_modx->runSnippet('!mFilter2', [
    'filters'=>'tv|course_category',
    'aliases'=>'tv|course_continue==course_continue',
    'tplFilter.outer.default'=>'@INLINE [[+rows]]',
    'tplFilter.row.default'=>'@FILE chunks/filter/filter.schools.direction.tpl',                    
    'filterOptions'      => '{"autoLoad":1}',
    'showEmptyFilters'   =>'true',
    'suggestionsRadio'   =>'resource|parent',
    'tplOuter'       =>'@FILE chunks/filter/filter.partnership.course.outer.tpl',
    'tpls'           =>'@FILE chunks/courses/courses.block.tpl',
    'url'=>'disabled',
    'sortby'=>'createdon',
    'includeTVs' => 'course_template, small_image',
    'processTVs'=>'1',
    'class'=>'modResource',            
    'loadModels'=>'partnership',
    'select'=>[
        'modResource'=>'*',
        'EduPartnership'=>'*',
        'EduPartnershipResponse'=>'*'
    ],            
    'innerJoin'=>[

        'modTemplateVarResource'=>[
        'class'=>'modTemplateVarResource',
        'on'=>'modResource.id = modTemplateVarResource.contentid AND modTemplateVarResource.tmplvarid = 33'
        ],



        'EduPartnershipSales'=>[
        'class'=>'EduPartnershipSales',
        'on'=>'EduPartnershipSales.course_template_id = modTemplateVarResource.value'
        ],

        'EduPartnership'=>[
        'class'=>'EduPartnership',
        'on'=>'EduPartnershipSales.partnership_id = EduPartnership.id'
        ],

        'EduPartnershipResponse'=>[
        'class'=>'EduPartnershipResponse',
        'on'=>'EduPartnership.id = EduPartnershipResponse.partnership_id AND EduPartnership.to_user_id = EduPartnershipResponse.school_id'
        ]

    ], 
      
    'where'=>'{"template:=":8, "EduPartnership.to_user_id:=":$to_user_id}',
    'parents'=>85,
    'limit'=>'9',
    'showLog'=>'1',
    'ajaxMode' => 'button',
    'ajaxElemMore'=>'#pdopage .btn--more',
    'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
    </svg><span>Показать еще</span></button></div>' 
    ])?:'<p class="section__intro">Ничего не найдено</p>'
}

{/if}




{/block}




