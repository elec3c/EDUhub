{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}  
{include 'file:chunks/crumbs/crumbs.tpl'}
<div class="nav">
{$_modx->runSnippet('!mFilter2', [
    'filters'=>'tv|schools_direction_b2b,tv|schools_sub_direction_b2b',
    'aliases'=>'tv|schools_direction_b2b==schools_direction_b2b,tv|schools_sub_direction_b2b==schools_sub_direction_b2b',
    'tplFilter.outer.schools_direction_b2b'=>'@INLINE <ul class="snav__list js-filter-scool" style="background:#F1F1F1;padding:30px;border-radius: 15px; margin: 0 0px;">
                                                            <li><a href="{1197 | url}" ><label class="snav__label"><div id="schools_sub_direction_all" class="snav__label-wrap {if !$.get.schools_direction_b2b}active{/if}">Все направления</div></label></a></li>
                                                            {$rows}
                                                        </ul>',
    'tplFilter.row.schools_direction_b2b'=>'@FILE chunks/filter/filter.schools.direction.tpl',                    
    'tplFilter.outer.schools_sub_direction_b2b'=>'@INLINE <ul class="snav__list js-filter-scool-more">{$rows}</ul>',
    'tplFilter.row.schools_sub_direction_b2b'=>'@FILE chunks/filter/filter.schools.sub.direction.tpl',
    'filterOptions'      => '{"autoLoad":1}',
    'showEmptyFilters'   =>'true',
    'suggestionsRadio'   =>'resource|parent',
    'tplOuter'       =>'@FILE chunks/filter/filter.schools.outer.tpl',
    'tpls'=>'@FILE chunks/scools/scools.tender.block.tpl',
    'url'=>'disabled',
    'sortby'=>'createdon',
    'processTVs'=>'1',
    'class'=>'modResource',
    'includeTVs' => 'small_image, scools_owner,schools_direction_b2b,schools_sub_direction_b2b',
    'select'=>[
        'modResource'=>'*'
    ],                    
    'innerJoin'=>[
        'modTemplateVarResource'=>[
        'class'=>'modTemplateVarResource',
        'on'=>'modResource.id = modTemplateVarResource.contentid AND modTemplateVarResource.tmplvarid = 90'
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
</div>
{/block}