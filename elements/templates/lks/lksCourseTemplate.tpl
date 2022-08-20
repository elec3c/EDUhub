{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk courses section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мои курсы</h2>
                </div>
                <div class="courses__filter">
                    <select name="category" data-placeholder="Категория курса" class="styler"
                        id="category-select">
                        <option value=""></option>
                        {'!pdoResources' | snippet : [
                            'parents'=>'85'
                            'depth'=>0,
                            'tpl'=>'@CODE <option value="{$id}">{$menutitle}</option>{$wrapper}',
                        ]}
                    </select>
                </div>
                <div id="pdopage">
                    <div class="rows">
                        {$_modx->runSnippet('pdoPage', [
                            'parents'=>85,
                            'tpl'=>'@FILE chunks/lks/lks.courses.item.tpl',
                            'includeTVs' => 'small_image, course_owner, course_address, course_city, course_region, course_metro, data_from',
                            'templates' => '8',
                            'processTVs'=>'1',
                            'limit'=>'3',
                            'showUnpublished'=>'1',
                            'where' => '{"course_owner":'~$_modx->user.id~'}',
                            'ajaxMode' => 'button',
                            'ajaxElemMore'=>'#pdopage .btn--more',
                            'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg><span>Показать еще</span></button></div>'                     
                            
                        ])}
                    </div>
                    {$_modx->getPlaceholder('page.nav')}
                </div>
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}