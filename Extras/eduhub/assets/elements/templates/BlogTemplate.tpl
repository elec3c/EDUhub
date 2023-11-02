{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}

{include 'file:chunks/crumbs/crumbs.tpl'}	

        <section class="blog section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">{$_modx->resource.longtitle?:$_modx->resource.pagetitle}</h2>
                </div>

                <div id="pdopage">
                    <div class="blog__items rows">
                        {$_modx->runSnippet('!pdoPage', [
                            'tpl'=>'@FILE chunks/blog/blog.row.tpl',
                            'sortby'=>'createdon',
                            'includeTVs' => 'small_image',
                            'processTVs'=>'1',
                            'limit'=>'10',
                            'ajaxMode' => 'button',
                            'ajaxElemMore'=>'#pdopage .btn--more',
                            'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg><span>Показать еще статьи</span></button></div>' 
                        ])?:'<p class="section__intro">Ничего не найдено</p>'}
                    </div>                    
                    <div class="section__buttons">
                        {$_modx->getPlaceholder('page.nav')}
                    </div>
                </div>                    
            </div>
        </section><!-- blog -->
{/block}