{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}

{include 'file:chunks/crumbs/crumbs.tpl'}	

{var $res = $_modx->runSnippet('!mSearch2', [
    'parents' => 9,
    'returnIds' => 1,
    'where' => '{"template":5}'
])}
{if $res}
    {set $total = $.php.count($.php.explode(',',$res))}
{else}
    {set $total = 0}
{/if}

                    
        <section class="blog section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">{$_modx->resource.longtitle?:$_modx->resource.pagetitle}: {if $total}<i>найдено {$total} {$total | declension : 'страница|страницы|страниц'}</i>{else}<i> ничего не найдено</i>{/if}</h2>
                </div>
                
                {'!mSearchForm'|snippet:[
                    'pageId'=>'42',
                    'tplForm'=>'@FILE chunks/search/search.form.tpl',
                ]} 
                
                <div id="pdopage">
                    

                    
                    {if $res}
                    
                    <div class="blog__items rows">
                        {$_modx->runSnippet('!pdoPage', [
                            'element'=>'pdoResources',
                            'parents' => 0,
		                    'resources' => $res,
                            'tpl'=>'@FILE chunks/blog/blog.row.tpl',
                            'tplWrapper'=>'@INLINE  {$output}', 
                            'sortby'=>'createdon',
                            'includeTVs' => 'small_image',
                            'processTVs'=>'1',
                            'limit'=>'6',
                            'ajaxMode' => 'button',
                            'ajaxElemMore'=>'#pdopage .btn--more',
                            'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg><span>Показать еще</span></button></div>' 
                        ])}
                    </div>
                    <div class="section__buttons">
                        {$_modx->getPlaceholder('page.nav')}
                    </div>
                    {else}
                        <p class="section__intro">Попробуйте поменять запрос!</p>
                    
                    {/if}
                    
                </div>                    
            </div>
        </section><!-- blog -->
{/block}