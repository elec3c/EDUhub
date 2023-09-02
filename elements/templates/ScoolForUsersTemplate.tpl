{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}  
{include 'file:chunks/crumbs/crumbs.tpl'}
{$_modx->runSnippet('!mFilter2', [
    'filters'=>'tv|schools_direction_b2c',
    'aliases'=>'tv|schools_direction_b2c==schools_direction_b2c',
    'tplFilter.outer.default'=>'@INLINE [[+rows]]',
    'tplFilter.row.default'=>'@FILE chunks/filter/filter.schools.direction.tpl',                    
    'filterOptions'      => '{"autoLoad":1}',
    'showEmptyFilters'   =>'true',
    'suggestionsRadio'   =>'resource|parent',
    'tplOuter'       =>'@FILE chunks/filter/filter.schools.outer.tpl',
    'tpls'=>'@FILE chunks/scools/scools.block.tpl',
    'sortby'=>'createdon',
    'includeTVs' => 'small_image, scools_owner,schools_direction_b2c',
    'processTVs'=>'1',
    'class'=>'modResource',
    'includeTVs'=>'scools_owner',                    
    'loadModels'=>'subscribe',
    'select'=>[
        'modResource'=>'*'
    ],                    
    'innerJoin'=>[
        'modTemplateVarResource'=>[
        'class'=>'modTemplateVarResource',
        'on'=>'modResource.id = modTemplateVarResource.contentid AND modTemplateVarResource.tmplvarid = 116'
        ]
    ], 
    'where'=>'{"template:=":16}',
    'parents'=>$_modx->config['site_parent_schools'],
    'limit'=>'33',
    'showLog'=>'1',
    'ajaxMode' => 'button',
    'ajaxElemMore'=>'#pdopage .btn--more',
    'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
    </svg><span>Показать еще</span></button></div>' 
    ])?:'<p class="section__intro">Ничего не найдено</p>'
}
{/block}


