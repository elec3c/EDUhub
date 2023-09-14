{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}  
        {include 'file:chunks/crumbs/crumbs.tpl'}
        <section class="detail section__mgb">
            <div class="container">
                <div class="section__head detail__head show-tablet-sm">
                    <h1 class="section__title">{$_modx->resource.pagetitle?: $_modx->resource.longtitle}</h1>
                </div>
                <div class="detail__cols">
                    <div class="detail__content">
                        <div class="section__head detail__head hide-tablet-sm">
                            <h2 class="section__title">{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</h2>
                        </div>
                        {set $desc = $_modx->resource.scools_owner | user : 'desc'}
                        {if $_modx->resource.scools_owner && $desc}
                        <div class="detail__desc section__mgb--md">
                            {$desc}
                        </div>
                        {/if}
                        {$_modx->runSnippet('!pdoPage', [
                        
                                    'tplWrapper'=>'@INLINE
                                
                                    <section class="section__mgb--md">
                                    <h2 class="section__title detail__btitle">Образовательные программы</h2>
                                        <div id="pdopage">
                                            <div class="rows">
                                                {$output}
                                            </div>
                                            <div class="section__buttons">
                                                {$_modx->getPlaceholder("page.nav")}
                                            </div>        
                                        </div>
                                    </section>',
                        
                                    'tpl'=>'@FILE chunks/scools/scools.program.row.tpl',
                                    'parents'=>85,
                                    'sortby'=>'createdon',
                                    'where' => ["template" => 8, 'course_owner'=>$_modx->resource.scools_owner],
                                    'includeTVs' => 'small_image, course_owner',
                                    'processTVs'=>'1',
                                    'limit'=>'3',
                                    'ajaxMode' => 'button',
                                    'ajaxElemMore'=>'#pdopage .btn--more',
                                    'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg><span>Показать еще курсы</span></button></div>' 
                                ])?:""}

                        {*
                        {include 'file:chunks/reviews/reviews.list.tpl'    page_id=$_modx->resource.id}
                        {include 'file:chunks/reviews/reviews.form.tpl'     page_id=$_modx->resource.id}
                        *}
                        {include 'file:chunks/scools/scools.detail.photo.tpl'}
                    </div>
                    {include 'file:chunks/scools/scools.detail.aside.tpl'}
                </div>
            </div>
        </section><!-- detail -->
{/block}
