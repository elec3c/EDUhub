{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk courses section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мои курсы</h2>
                </div>
                {*
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
                *}
                <div id="pdopage">
                    <div class="rows">
                        {$_modx->runSnippet('!pdoPage', [
                            'parents'=>85,
                            'tpl'=>'@FILE chunks/lks/lks.courses.item.tpl',
                            'includeTVs' => 'small_image, course_owner, course_address, course_city, course_region, course_metro, data_from, res_type',
                            'templates' => '8',
                            'processTVs'=>'1',
                            'limit'=>'10',
                            'sortby'=>'{"createdon":"DESC"}',
                            'showUnpublished'=>'1',
                            'where' => '{"course_owner":'~$_modx->user.id~'}',
              
                            
                        ])}
                    </div>
                    <div class="section__buttons">
                        {$_modx->getPlaceholder('page.nav')}
                    </div>
                </div>
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}